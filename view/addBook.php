<?php
include_once "../model/connect.php";
include_once "../Objects/Book.php";
$connect = connectServer("localhost", "root", "manhuetvnuk63j", 3306);
$dbname = "library";
$connect->select_db($dbname);
$book = new Book($connect, 0);
if (isset($_POST['addBook'])) {
    $name = $_POST['bookName'];
    $cap = $_POST['caption'];
    $quantity = $_POST['quantity'];
    $publishDate = $_POST['publishDate'];
    $author = $_POST['author'];
    $category = $_POST['category'];
    $image = preg_split ("/\./", $_POST['image']);
    if ($book->AddBook($name, $cap, $quantity, $publishDate, $author, $category, $image[0])) {
        echo "<script>window.alert('Add book success.')</script>";
    }
    else {
        echo "<script>window.alert('Add book fail.')</script>";
    }
}
if (!isset($_SESSION['admin'])) header("Location: login.php");
?>

<!DOCTYPE html>
<html>
<head>
    <title>Add Book</title>
</head>
<body>
<form action="addBook.php" method="post">
    <input type="text" name="bookName" placeholder="Book's name"> <br/>
    <input type="text" name="caption" placeholder="Caption"> <br/>
    <input type="number" name="quantity" placeholder="Quantity"> <br/>
    <input type="date" name="publishDate" placeholder="Publish Date"> <br/>
    <input type="text" name="author" placeholder="Author"> <br/>
    <input type="text" name="category" placeholder="Category"> <br/>
    <input type="file" name="image" placeholder="Image file name"> <br/>
    <input type="submit" name="addBook" value="Add">
</form>
</body>
</html>
