<?php

include("db_config.php");

$query = "SELECT * FROM books";

$data = mysqli_query($con, $query);

?>

<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Books</title>
    <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">

    <style>
        body {
            background: #f8f9fa;
        }

        .book-card {
            margin-top: 50px;
            border: none;
            border-radius: 12px;
        }

        .add-book-btn {
            position: fixed;
            bottom: 30px;
            right: 30px;
            width: 60px;
            height: 60px;
            border-radius: 50%;
            font-size: 30px;
            font-weight: bold;
            display: flex;
            justify-content: center;
            align-items: center;
            box-shadow: 0 4px 10px rgba(0, 0, 0, 0.3);
        }
    </style>
</head>

<body>

    <div class="container mt-3">

        <div class="row g-4">

            <?php
            if (mysqli_num_rows($data) > 0) {
                while ($row = mysqli_fetch_assoc($data)) {
                    ?>

                    <div class="col-md-3    ">
                        <div class="card shadow border-0 h-100">

                            <img src="<?php echo $row['image']; ?>" class="card-img-top"
                                style="height:250px; object-fit:cover;">

                            <div class="card-body">

                                <h5 class="card-title fw-bold">
                                    <?php echo $row['book_title']; ?>
                                </h5>

                                <p class="mb-1">
                                    <strong>Author:</strong> <?php echo $row['author_name']; ?>
                                </p>

                                <p class="mb-1">
                                    <strong>ISBN:</strong> <?php echo $row['isbn_number']; ?>
                                </p>

                                <p class="mb-3">
                                    <strong>Year:</strong> <?php echo $row['publication_year']; ?>
                                </p>

                                <div class="d-flex gap-2">

                                    <a href="edit.php?book_id=<?php echo $row['id']; ?>" class="btn btn-primary flex-fill">
                                        Edit
                                    </a>

                                    <a href="delete.php?book_id=<?php echo $row['id']; ?>" class="btn btn-danger flex-fill">
                                        Delete
                                    </a>

                                </div>

                            </div>

                        </div>
                    </div>

                <?php
                }
            } else {
                ?>

                <div class="col-12 text-center">
                    <h5>No Books Found</h5>
                </div>

            <?php } ?>

        </div>

    </div>

    <a href="create.php" class="btn btn-primary add-book-btn">
        +
    </a>

</body>

</html>