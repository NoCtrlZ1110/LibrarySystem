<?php
include_once "../model/connect.php";

class Book {
    public $connect;
    public $bookID;
    public function __construct($connect, $bookID){
        $this->connect = $connect;
        $this->bookID = $bookID;
    }
    public function setBookID($bookID) {
        $this->bookID = $bookID;
    }
    public function getInfoByID() {
        $Query = "SELECT *FROM books WHERE bookID = '$this->bookID'";
        $result = mysqli_query($this->connect, $Query);
        return $result;
    }
    public function borrowBook($borrowDate, $returnDate, $current) {
        $current = $current - 1;
        $studentID = $_SESSION['student']['id'];
        $borrowQuery = "INSERT INTO borrowbook (bookID, studentID, quantity, borrowDate) VALUES ('$this->bookID', '$studentID', 1, '$borrowDate')";
        $returnQuery = "INSERT INTO returnbook (bookID, studentID, quantity, returnDate, status) VALUES ('$this->bookID', '$studentID', 1, '$returnDate', 'NO')";
        $updateQuery = "UPDATE books SET quantity = '$current' WHERE bookID = '$this->bookID'";
        mysqli_query($this->connect, $borrowQuery);
        mysqli_query($this->connect, $returnQuery);
        mysqli_query($this->connect, $updateQuery);
    }
    public function checkBorrowed() {
        $studentID = $_SESSION['student']['id'];
        $checkQuery = "SELECT bookID FROM returnbook WHERE studentID = '$studentID' AND bookID = '$this->bookID'";
        $result = mysqli_query($this->connect, $checkQuery);
        if (mysqli_num_rows($result) > 0) return false;
        else return true;
    }
    public function test($borrowDate, $returnDate) {
        if ((strtotime($returnDate) - strtotime($borrowDate)) <= 0 && !empty($returnDate)) return false;
        else return true;
    }
    public function validate($borrowDate, $returnDate) {
        if (!isset($borrowDate) || empty($borrowDate)) return false;
        if (strlen($borrowDate) != 10) return false;
        if (isset($returnDate) && strlen($returnDate) < 10 && strlen($returnDate) > 0) return false;
        if (!empty($returnDate) && strlen($returnDate) == 10) return true;
        return true;
    }
}