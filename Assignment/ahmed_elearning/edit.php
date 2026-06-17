<?php 

include("db_config.php");

$get_book = $_GET["book_id"];

$query = "SELECT * FROM books WHERE id = $get_book";
$result = mysqli_query($con,$query);

$data = mysqli_fetch_assoc($result);


$msg = "";
$status = "";


if(isset($_POST["update"])){

    $book_title = $_POST["book_title"];
    $author_name = $_POST["author_name"];
    $isbn_number = $_POST["isbn_number"];
    $publication_year = $_POST["publication_year"];

    $image_name = $data["image"];

    if(!empty($_FILES['image']['name'])){

        $image = $_FILES['image'];

        $file_name = $image['name'];
        $tmp_name = $image['tmp_name'];

        $new_name = uniqid() . "_" . $file_name;

        $upload = "assets/img/" . $new_name;

        move_uploaded_file($tmp_name,$upload);

        $image_name = $upload;
    }


    $query = "UPDATE books SET 
        book_title = '$book_title',
        author_name = '$author_name',
        isbn_number = '$isbn_number',
        publication_year = '$publication_year',
        image = '$image_name'
        WHERE id = '$get_book'";


    $q = mysqli_query($con,$query);


    if($q){
        $msg = "Book Update Successfully...";
        $status = "success";
    }
    else{
        $msg = "Something Went Wrong...";
        $status = "error";
    }

}

?>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Book</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body{
            background:#f8f9fa;
        }

        .book-card{
            margin-top:50px;
            border:none;
            border-radius:12px;
        }
    </style>
</head>
<body>

<div class="container">
    <div class="row justify-content-center">

        <div class="col-md-5 mt-3">
            <div class="card shadow book-card">

                <div class="card-header bg-primary text-white text-center">
                    <h4>Edit Book</h4>
                </div>

                <div class="card-body">

                    <form method="POST" enctype="multipart/form-data">

                        <div class="mb-3">
                            Book Title: <input type="text" class="form-control" name="book_title" placeholder="Book Title" value="<?php echo $data["book_title"] ?>" required>
                        </div>

                        <div class="mb-3">
                            Book Author: <input type="text" class="form-control" name="author_name" placeholder="Author Name" value="<?php echo $data["author_name"] ?>" required>
                        </div>

                        <div class="mb-3">
                            <input type="text" class="form-control" name="isbn_number" placeholder="ISBN Number" value="<?php echo $data["isbn_number"] ?>" required>
                        </div>

                        <div class="mb-3">
                            <input type="number" class="form-control" name="publication_year" placeholder="Publication Year" value="<?php echo $data["publication_year"] ?>" required>
                        </div>

                        <div class="mb-3">
                            <img src="<?php echo $data["image"] ?>" alt="Nhi Mila" width="50" height="50">
                        </div>

                        <div class="mb-3">
                            <input type="file" class="form-control" name="image" accept=".jpg,.jpeg,.png" required>
                        </div>

                        <button type="submit" name="update" class="btn btn-primary w-100 mb-2">
                                Update Book
                            </button>

                            <a href="books.php" class="btn btn-primary w-100">
                                All Books
                            </a>
                    </form>

                </div>

            </div>
        </div>

    </div>
</div>

 <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

   <script>
    <?php if ($msg != "") { ?>

    const Toast = Swal.mixin({
        toast: true,
        position: 'top-end',
        showConfirmButton: false,
        timer: 3000,
        timerProgressBar: true
    });

    Toast.fire({
        icon: "<?php echo $status; ?>",
        title: "<?php echo $msg; ?>"
    });

    setTimeout(function() {
        window.location.href = "books.php";
    }, 3000);

    <?php } ?>
    </script>


</body>
</html>