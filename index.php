<?php
include 'config.php';
?>
<!DOCTYPE html>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>INDIFLIX</title>

    <link href=".\css\bootstrap.min.css" rel="stylesheet">
    <link href=".\css\custom.css" rel="stylesheet">
    <link href='http://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800' rel='stylesheet' type='text/css'>
    
</head>

<body>
<?php include 'nav.php'; ?>
<header>
        <div class="header-content">
            <div class="header-content-inner">
                <h1>INDIFLIX</h1>
                <p>TV Shows And movies</p>
                <?=(!isset($_SESSION['id'])) ? "<a href=login.php class='btn btn-primary btn-lg'>Login Or Register</a>":"";?>
            </div>
        </div>
    </header>
	<!-- Content 1 -->
    <section class="content">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <img class="img-responsive img-circle center-block" src=".\images\217234.jpg" alt="">
                </div>
                <div class="col-sm-6">
                    <h2 class="section-header">Everything's Here</h2>
                    <p class="lead text-muted">None of your favourite Tv Shows and Movies are free to watch Like GAME OF THRONES and The Godfather!!!!!!!!!!!!.</p>
                    <a href="#" class="btn btn-primary btn-lg">Watch It</a>
                </div>   
            </div> 
        </div>    	
    </section>
	<!-- Content 2 -->
     <section class="content content-2">
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                	<h2 class="section-header">Jon Snow</h2>
                	<p class="lead text-light">The only character in Game of Thrones who came back from Dead!! Cheers Bros!!.</p>
                	<a href="#" class="btn btn-default btn-lg">Watch that Episode</a>
                </div>    
                <div class="col-sm-6">
                    <img class="img-responsive img-circle center-block" src=".\images\572718.jpg" alt="">
                </div>            
            </div>
        </div>
    </section>    

    <!-- Promos -->
	<div class="container-fluid">
        <div class="row promo">
        	<a href="#">
				<div class="col-md-4 promo-item item-1">
					<h3>
						<a href="page.php?id=2&type=shows">The Flash 2014</a>
					</h3>
				</div>
            </a>
            <a href="#">
				<div class="col-md-4 promo-item item-2">
					<h3>
						<a href="page.php?id=1&type=shows">The Walking Dead</a>
					</h3>
				</div>
            </a>
			<a href="#">
				<div class="col-md-4 promo-item item-3">
					<h3>
						<a href="page.php?id=5&type=shows">The Big Bang Theory</a>
					</h3>
				</div>
            </a>
        </div>
    </div><!-- /.container-fluid -->
    
	<!-- Footer -->
    <footer class="page-footer">
    
    	<!-- Contact Us -->
        <div class="contact">
        	<div class="container">
				<h2 class="section-heading">Contact Us</h2>
				<p><span class="glyphicon glyphicon-earphone"></span><br> +91 1234567890</p>
				<p><span class="glyphicon glyphicon-envelope"></span><br> indiflix@gmail.com</p>
        	</div>
        </div>
        <!-- Copyright etc -->
        <div class="small-print">
        	<div class="container">
        		<p>Copyright &copy; BroHi5.com 2018</p>	
        	</div>
        </div>
    </footer>
    <!-- jQuery -->
    <script src="js/jquery-1.11.3.min.js"></script>
    <!-- Bootstrap Core JavaScript -->
    <script src="js/bootstrap.min.js"></script>
    <!-- Plugin JavaScript -->
    <script src="js/jquery.easing.min.js"></script>
    <!-- Custom Javascript -->
    <script src="js/custom.js"></script>
</body>
</html>
