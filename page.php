<?php
include 'config.php';
if(!isset($_SESSION['id']))
{
  header('location:login.php');
}

if(!empty($_GET['id']) && isset($_GET['id']) && !empty($_GET['type']) && isset($_GET['type'])=="list" || isset($_GET['type'])=="shows")
{
  $data=$_GET['type'];
  $id=$_GET['id'];
  $query="SELECT * FROM `".$data."` where id=".$id." ";
  $run_query=mysqli_query($conn,$query);
  $row=mysqli_fetch_array($run_query);
  // print_r($row);
  // exit();
}
?>
<!DOCTYPE html>
<html lang="en">

<head>
	<title>Online Movies and TV Shows</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="./css/bootstrap.min.css">
	<script src="./js/jquery-1.11.3.min.js"></script>
	<script src="./js/bootstrap.min.js"></script>

</head>

<body>
	<?php include 'nav.php'; ?>


	<div id="myCarousel" class="carousel slide" data-ride="carousel">
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
		</ol>

		<!-- Wrapper for slides -->
		<div class="carousel-inner" role="listbox" style="height:400px;">
			<div class="item active">
				<img src="./<?=$row['9'];?>.jpg" alt="tt3322310.jpg" height="200px">
				<div class="carousel-caption">
					<!--<h3>Marvel's Iron Fist</h3>-->
				</div>
			</div>

			<div class="item">
				<img src="./<?=$row['9'];?>.jpg" alt="tt3322310.jpg" height="200">
				<div class="carousel-caption">
					<h3>
						<?=$row[2];?>
					</h3>
				</div>
			</div>
		</div>
		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
			<span class="sr-only">Previous</span>
		</a>
		<a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
			<span class="sr-only">Next</span>
		</a>
	</div>

	<div class="container text-center">
		<h3>About The
			<?=($_GET['type']=='shows') ? $_GET['type'] :'Movies';?>
		</h3><br>
		<div class="row">
			<div class="col-sm-4">
				<img src='./<?=$row['1'];?>.jpg' class="img-thumbnail" width=200 height=300 alt="Image">
			</div>
			<div class="col-sm-4">
				<p>
					<?=$row['2'];?>
				</p>
				<p>
					<?=$row['3'];?>
				</p>
				<hr>
				<p>Genres:
					<?=$row['5'];?>
				</p>
				<p>Stars:
					<?=$row['6'];?>
				</p>
				<p>Creator:
					<?=$row['8'];?>
				</p>
			</div>
			<div class="col-sm-4">
				<div class="embed-responsive embed-responsive-16by9">
					<video controls autoplay class="embed-responsive-item" src=".<?=$row['10'];?>"></video>

				</div>

			</div>
			<div class="col-sm-4">
				<p>Watch in VR Below</p>
				<div class="embed-responsive embed-responsive-16by9">
					<video controls class="embed-responsive-item" src=".<?=$row['11'];?>"></video>

				</div>
			</div>
		</div>
	</div><br>




	<footer class="container-fluid text-center">
		<div class="small-print">
			<div class="container">
				<p>Copyright &copy; BroHi5.com 2018</p>
			</div>
		</div>

	</footer>





</body>

</html>