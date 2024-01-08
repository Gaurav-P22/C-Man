<?php
session_start();
$se = $_SESSION['eem'];
if ($se == null) {
    header("location:index.php?msg=plz login first");
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>C-Man</title>

    <!-- Bootstrap -->
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="css/font-awesome.min.css">
    <link rel="stylesheet" href="css/animate.css">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/style.css" rel="stylesheet" />
    <style>
        #co:hover {
            color: red;
        }

        input {
            font-weight: bold;
        }

        b {
            color: white;
        }
    </style>
</head>


<body>
    <header>
        <!-- ... (Your existing header code) ... -->
        <nav class="navbar navbar-default navbar-fixed-top" role="navigation">
            <div class="navigation">
                <div class="container">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target=".navbar-collapse.collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                        <div class="navbar-brand">
                            <a href="./employee.php">
                                <h1><span style="color:red"><i>C-</i>&nbsp;&nbsp;<i style="color: Black">MAN</i>&nbsp;&nbsp;</span></h1>
                            </a>
                        </div>
                    </div>

                    <div class="navbar-collapse collapse">
                        <div class="menu">
                            <ul class="nav nav-tabs" role="tablist">


                                <li role="presentation"><a href="AddStock.php" id='co' style="color:red;">Add Stock</a></li>
                                <li role="presentation"><a href="ViewStock.php" id='co'>View Stock</a></li>
                                <li role="presentation"><a href="updateEmployee.php" id='co'>Profile</a></li>
                                <li role="presentation" class="dropdown">
                                    <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false" id='co'>
                                        Others Work <span class="caret"></span>
                                    </a>
                                    <ul class="dropdown-menu">
                                        <li><a href="AddSupplier.php" id='co'>Add Supplier</a></li>

                                    </ul>
                                </li>
                                <li role="presentation"><a href="index.php" id='co'>LogOut</a></li>



                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </nav>
    </header>

    <section id="main-slider" class="no-margin">
        <div class="carousel slide">
            <div class="carousel-inner">
                <div class="item active" style="background-image: url(images/extra/employeeBg.jpg);background-attachment:fixed">
                    <div class="container" style="background-color: pink;" >
                        <form style="margin: 3vw; max-height: 600px; overflow-y: auto;">
                            <div class="row">
                                <?php
                                include("config.php");
                                $query = "SELECT * FROM stock";
                                $data = mysqli_query($con, $query);
                                $total = mysqli_num_rows($data);

                                if ($total != 0) {
                                    while ($result = mysqli_fetch_assoc($data)) {
                                ?>
                                        <div class="col-md-4">
                                            <div class="card" style="width: 20vw; height:30vh; background-color:grey; border-radius:5px 10px">
                                                <div class="card-body">
                                                    <h3 class="card-title" style="text-align: center;"><?php echo $result['Pname']; ?></h3><hr>
                                                    <p class="card-text" style="font-size: larger; font-family:Arial, Helvetica, sans-serif"><span style="color:black">Description: </span><?php echo $result['description']; ?></p>
                                                    
                                                    <p class="card-text" style="font-size: larger; font-family:Arial, Helvetica, sans-serif">Quantity Available: <?php echo $result['quantity']; ?></p>
                                                    
                                                   <div> <div style="float: right; width:40%;margin-top:9px;margin-right:3px"><input type="number" class="form-control quantityInput" style=" " placeholder="Quantity" data-product-id="<?php echo $result['id']; ?>"></div>
                                                    <div style="float: left; width:40%;margin-left:4px"><button class="btn btn-primary addToCartBtn" data-product-id="<?php echo $result['id']; ?>">Add to Cart</button></div>
                                                    </div>
                                                </div>
                                            </div>
                                        </div>
                                <?php
                                    }
                                }
                                ?>
                            </div>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- ... (Your existing code) ... -->

    <script>
        $(document).ready(function() {
            $(".addToCartBtn").click(function() {
                var productId = $(this).data("product-id");
                var quantity = $(".quantityInput[data-product-id='" + productId + "']").val();
                alert("Product ID: " + productId + ", Quantity: " + quantity);
                // You can send this data to your server for processing (e.g., add to cart functionality)
            });
        });
    </script>

    <!-- ... (Your existing code) ... -->
</body>


</html>