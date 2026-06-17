<?php

include("db_config.php");

$msg = "";
$status = "";

$get_book = intval($_GET["book_id"]);

$query = "DELETE FROM books WHERE id = '$get_book'";

$result = mysqli_query($con, $query);

if ($result) {
    $msg = "Book Deleted Successfully...";
    $status = "success";
} else {
    $msg = "Something Went Wrong...";
    $status = "error";
}

?>

<!DOCTYPE html>
<html>

<head>
    <title>Delete Book</title>

    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>

</head>

<body>


  
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

        setTimeout(function () {
            window.location.href = "books.php";
        }, 3000);

    <?php } ?>
</script>


</body>

</html>