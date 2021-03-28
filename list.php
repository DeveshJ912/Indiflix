<?php
include 'config.php';
if(!empty($_GET['q']) && isset($_GET['q'])=="list" || isset($_GET['q'])=="shows")
{
  $data=$_GET['q'];
  $query="SELECT * FROM `".$data."`";
  $run_query=mysqli_query($conn,$query);
  // $row=mysql_fetch_array($run_query);
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
<p></p>
<br>
<br>
<div class="container">
  <h2>Newly Added <?=($_GET['type']=='Movies') ? $_GET['type'] :'Tv Shows';?></h2>
  
  <div class="row">
    <?php
    if($run_query === false){
    throw new Exception(mysqli_error($conn));
    }

   
	  if($run_query=mysqli_query($conn, $query)){
    while($row=mysqli_fetch_array($run_query))
      {
        $string = preg_replace('/\s+/', '', $row[2]);
        echo "<div class='col-sm-2 col-md-3 col-lg-3'><a href=page.php?id=".$row['id']."&show=".$string."&type=".$data." target=_blank>";
        echo "<img src='.".$row['images'].".jpg' class='img-thumbnail' alt=Cinque Terre> ";
        echo "<div class=caption><p>".$row[2]."</p></div></a></div>";
      }}
      ?>
     
    
  </div>
</div>
<footer class="container-fluid text-center">
<div class="small-print">
          <div class="container">
            <p>Copyright &copy; BroHi5.com 2016</p> 
          </div>
        </div>
</footer>
</body>
</html>


