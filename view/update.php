<?php
include_once "../model/connect.php";
include_once "../Objects/Book.php";
include "../model/validate.php";
$connect = connectServer("localhost", "root", "manhuetvnuk63j", 3306);
$dbname = "library";
$connect -> select_db($dbname);
if (!isset($_SESSION['admin'])) header("Location: login.php");
if (!isset($_GET['bookID']) || empty($_GET['bookID'])) {
    echo "<script>
            if (confirm('Nothing to update, please back to HomePage!')) {
                window.location.replace('searchBookView.php');
            } else window.location.replace('NotFound.html');
          </script>";
} else {
    $updateBook = new Book($connect, intval($_GET['bookID']));
    if (isset($_POST['update'])) {
        if ($updateBook->emtyFields($_POST['nameBook'], $_POST['author'], $_POST['publishDate'], $_POST['quantity']))
        {
            echo "<script>
                    window.alert('You have not changed anything.');
                    window.location.replace(window.location.href);
                  </script>";
        }
        //UPDATE NAME BOOK
        if (isset($_POST['nameBook']) && (test_input($_POST['nameBook']) == $_POST['nameBook']))
        {
            if (!empty($_POST['nameBook']))
            {
                if ($updateBook->updateName($_POST['nameBook']))
                {
                    echo "<script>
                        window.alert('Update Success.');
                        window.location.replace(window.location.href);
                      </script>";
                }
                else
                {
                    echo "<script>
                        window.alert('Update Failed.');
                        window.location.replace(window.location.href);
                     </script>";
                }
            }
        }
        else
        {
            echo "<script>
                    window.alert('Invalid, please check your input.');
                    window.location.replace(window.location.href);
                 </script>";
        }
        //UPDATE AUTHOR
        if (isset($_POST['author']) && (test_input($_POST['author']) == $_POST['author']))
        {
            if (!empty($_POST['author']))
            {
                if ($updateBook->updateAuthorName($_POST['author']))
                {
                    echo "<script>
                        window.alert('Update Success.');
                        window.location.replace(window.location.href);
                      </script>";
                }
                else
                {
                    echo "<script>
                        window.alert('Update Failed.');
                        window.location.replace(window.location.href);
                      </script>";
                }
            }
        }
        else
        {
            echo "<script>
                    window.alert('Invalid, please check your input.');
                    window.location.replace(window.location.href);
                 </script>";
        }
        //UPDATE PUBLISH DATE
        if (isset($_POST['publishDate']) && (test_input($_POST['publishDate']) == $_POST['publishDate']))
        {
            if (!empty($_POST['publishDate']))
            {
                $date = date("Y-m-d", strtotime($_POST['publishDate']));
                if ($updateBook->updatePublishDate($date))
                {
                    echo "<script>
                        window.alert('Update Success.');
                        window.location.replace(window.location.href);
                      </script>";
                }
                else
                {
                    echo "<script>
                        window.alert('Update Failed.');
                        window.location.replace(window.location.href);
                      </script>";
                }
            }
        }
        else
        {
            echo "<script>
                    window.alert('Invalid, please check your input.');
                    window.location.replace(window.location.href);
                 </script>";
        }
        //UPDATE QUANTITY
        if (isset($_POST['quantity']) && intval($_POST['quantity']) >= 0)
        {
            if (!empty($_POST['quantity']) && intval($_POST['quantity']) >= 0)
            {
                $quantity = intval($_POST['quantity']);
                if ($updateBook->updateQuantity($quantity))
                {
                    echo "<script>
                    window.alert('Update Success.');
                    window.location.replace(window.location.href);
                  </script>";
                }
                else
                {
                    echo "<script>
                    window.alert('Update Failed.');
                    window.location.replace(window.location.href);
                  </script>";
                }
            }
            elseif(intval($_POST['quantity']) < 0)
            {
                echo "<script>
                    window.alert('Invalid, please check your input.');
                    window.location.replace(window.location.href);
                 </script>";
            }
            }
    }
}
?>
<!DOCTYPE html>
<html class="no-js" lang="zxx">
<head>
    <meta charset="utf-8" />
    <meta http-equiv="x-ua-compatible" content="ie=edge" />
    <title>Library System</title>
    <meta name="description" content="" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />

<!--    <link rel="manifest" href="site.webmanifest" />-->
    <link
            rel="shortcut icon"
            type="image/x-icon"
            href="../assets/img/favicon.ico"
    />

    <!-- CSS here -->
    <link rel="stylesheet" href="../assets/css/bootstrap.min.css" />
    <link rel="stylesheet" href="../assets/css/owl.carousel.min.css" />
    <link rel="stylesheet" href="../assets/css/flaticon.css" />
    <link rel="stylesheet" href="../assets/css/slicknav.css" />
    <link rel="stylesheet" href="../assets/css/animate.min.css" />
    <link rel="stylesheet" href="../assets/css/magnific-popup.css" />
    <link rel="stylesheet" href="../assets/css/fontawesome-all.min.css" />
    <link rel="stylesheet" href="../assets/css/themify-icons.css" />
    <link rel="stylesheet" href="../assets/css/slick.css" />
    <link rel="stylesheet" href="../assets/css/nice-select.css" />
    <link rel="stylesheet" href="../assets/css/style.css" />
    <link rel="stylesheet" href="../assets/css/responsive.css" />
</head>

<body>
<!-- Preloader Start -->
<div id="preloader-active">
    <div class="preloader d-flex align-items-center justify-content-center">
        <div class="preloader-inner position-relative">
            <div class="preloader-circle"></div>
            <div class="preloader-img pere-text">
                <img src="../assets/img/UET.png" alt="" />
            </div>
        </div>
    </div>
</div>
<!-- Preloader Start -->
<header>
    <!-- Header Start -->
    <div class="header-area header-transparrent">
        <div class="main-header header-sticky">
            <div class="container">
                <div class="row align-items-center">
                    <!-- Logo -->
                    <div class="col-xl-2 col-lg-2 col-md-1">
                        <div class="logo">
                            <a href="index.php"
                            ><img src="../assets/img/logo/logo.png" alt=""
                                /></a>
                        </div>
                    </div>
                    <div class="col-xl-8 col-lg-8 col-md-8">
                        <!-- Main-menu -->
                        <div class="main-menu f-right d-none d-lg-block">
                            <nav>
                                <ul id="navigation">
                                    <li><a href="index.php"> Home</a></li>
                                    <li>
                                        <a href="searchBookView.php">Search</a>
                                        <ul class="submenu">
                                            <li><a href="searchBookView.php">Search Book</a></li>
                                            <li><a href="searchUser.html">Search User</a></li>
                                        </ul>
                                    </li>
                                    <li>
                                        <a href="addBook.php">Add</a>
                                    </li>
                                    <li>
                                        <a href="category.php">Category</a>
                                        <ul class="submenu">
                                            <li><a href="category.php">Information Technology</a></li>
                                            <li><a href="category.php">Law and Social</a></li>
                                            <li><a href="category.php">Science and Technology</a></li>
                                            <li><a href="category.php">Education</a></li>
                                            <li><a href="category.php">Philosophy and Life</a></li>
                                            <li><a href="category.php">Human History</a></li>
                                        </ul>
                                    </li>
                                    <?php
                                    if (isset($_SESSION['admin'])) {
                                        ?>
                                        <li>
                                            <a id="logout" title="Logout">
                                                <i class="fas fa-power-off" style="font-size: 20px;"></i>
                                            </a>
                                        </li>
                                        <?php
                                    }
                                    ?>
                                </ul>
                            </nav>
                        </div>
                    </div>
                    <div class="col-xl-2 col-lg-2 col-md-3">
                        <?php
                        if (!isset($_SESSION['admin'])) {
                            ?>
                            <div class="header-right-btn f-right d-none d-lg-block">
                                <a href="login.php" class="btn header-btn">Login</a>
                            </div>
                            <?php
                        }
                        ?>
                    </div>
                    <!-- Mobile Menu -->
                    <div class="col-12">
                        <div class="mobile_menu d-block d-lg-none"></div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Header End -->
</header>
<main>
    <!-- Slider Area Start-->
    <div class="slider-area">
        <div class="slider-active">
            <div class="single-slider slider-height d-flex align-items-center">
                <div class="container">
                    <div class="row d-flex align-items-center">
                        <div class="col-lg-5 d-none d-xl-block">
                            <div
                                    class="hero__img hero__img2"
                                    data-animation="fadeInLeft"
                                    data-delay="1s"
                            >
                                <img src="../assets/img/hero/writer.png" alt="" />
                            </div>
                        </div>
                        <div class="col-lg-7 col-md-9">
                            <div class="hero__caption hero__caption2">
                                <h1 data-animation="fadeInRight" data-delay=".4s" style="margin-top: 200px;">
                                    Update<br />
                                    Book's Information
                                </h1>
                                <form action="update.php?bookID=<?php if (isset($_GET['bookID'])) echo $_GET['bookID'];?>" method="post" style="margin-top: 100px;">
                                    <input
                                        class="form-control form-control-lg mb-2"
                                        type="search"
                                        name="nameBook"
                                        placeholder="Book's Name..."
                                    /> <br/>
                                    <input
                                        class="form-control form-control-lg mb-2"
                                        type="text"
                                        name="author"
                                        placeholder="Book's Author..."
                                    /> <br/>
                                    <input
                                        class="form-control form-control-lg mb-2"
                                        type="text"
                                        name="publishDate"
                                        placeholder="Publish Date..."
                                    > <br/>
                                    <input
                                        class="form-control form-control-lg mb-2"
                                        type="number"
                                        name="quantity"
                                        placeholder="Change Book Quantity..."
                                        min="0"
                                    >
                                    <p data-animation="fadeInRight" data-delay=".6s">
                                        Updating so easy
                                    </p>
                                    <!-- Hero-btn -->
                                    <button class="btn" type="submit" name="update" style="font-weight: bold; margin-bottom: 100px;">UPDATE</button>
                                </form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Slider Area End-->
</main>

<!-- JS here -->

<!-- All JS Custom Plugins Link Here here -->
<script src="../assets/js/vendor/modernizr-3.5.0.min.js"></script>

<!-- Jquery, Popper, Bootstrap -->
<script src="../assets/js/vendor/jquery-1.12.4.min.js"></script>
<script src="../assets/js/popper.min.js"></script>
<script src="../assets/js/bootstrap.min.js"></script>
<!-- Jquery Mobile Menu -->
<script src="../assets/js/jquery.slicknav.min.js"></script>

<!-- Jquery Slick , Owl-Carousel Plugins -->
<script src="../assets/js/owl.carousel.min.js"></script>
<script src="../assets/js/slick.min.js"></script>
<!-- Date Picker -->
<script src="../assets/js/gijgo.min.js"></script>
<!-- One Page, Animated-HeadLin -->
<script src="../assets/js/wow.min.js"></script>
<script src="../assets/js/animated.headline.js"></script>
<script src="../assets/js/jquery.magnific-popup.js"></script>

<!-- Scrollup, nice-select, sticky -->
<script src="../assets/js/jquery.scrollUp.min.js"></script>
<script src="../assets/js/jquery.nice-select.min.js"></script>
<script src="../assets/js/jquery.sticky.js"></script>

<!-- contact js -->
<script src="../assets/js/contact.js"></script>
<script src="../assets/js/jquery.form.js"></script>
<script src="../assets/js/jquery.validate.min.js"></script>
<script src="../assets/js/mail-script.js"></script>
<script src="../assets/js/jquery.ajaxchimp.min.js"></script>

<!-- Jquery Plugins, main Jquery -->
<script src="../assets/js/plugins.js"></script>
<script src="../assets/js/main.js"></script>
<script type="text/javascript">
    $(document).ready(function () {
        $("#logout").click(function () {
            if (confirm('Are you sure you want to log out?')) {
                window.location.replace('../controller/logout.php');
            } else window.location.replace(window.location.href);
        });
    });
</script>
</body>
</html>
