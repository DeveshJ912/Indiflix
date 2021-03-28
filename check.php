<?php
include 'config.php';//its config file mantotary to include in each file
if(empty($_POST))
	{
		header('location:login.php');
	}
	elseif ($_POST['login']=="login")
	{
		if ($_POST['username']!='' && isset($_POST['username']) && 
			$_POST['password']!='' && isset($_POST['password'])
			) 
		{
			$name=$_POST['username'];
			$pass=$_POST['password'];
			$query=mysqli_query($conn,"SELECT * FROM `customers` where name='".$name."' AND password='".$pass."'");
			$run_query=mysqli_fetch_array($query);
			//print_r($run_query);
			$_SESSION['name']=$run_query['name'];
			$_SESSION['id']=$run_query['id'];
			//echo($_SESSION['name']);
			// exit();
			if ($run_query) {
				header('location:index.php');
			}else{
				header('location:login.php');
			}
		}
		else
		{
			header('location:login.php');
		}
	}
	else{
		if ($_POST['username']!='' && isset($_POST['username']) && 
			$_POST['password']!='' && isset($_POST['password'])&&
			$_POST['email']!='' && $_POST['location']!=''
			) 
		{
			$name=$_POST['username'];
			$pass=$_POST['password'];
			$email=$_POST['email'];
			$phone=$_POST['phone'];
			$address=$_POST['location'];
			$insert_data="INSERT INTO `customers` VALUES(NULL,'".$name."','".$pass."','".$email."','".$phone."','".$address."')";
			$run_data=mysqli_query($conn,$insert_data);
			print_r($insert_data);
			// exit();
			// print_r($insert_data); for checking whether values are inserted or not..
			// exit();
			if ($run_data) {
				header('location:index.php');
			}else{
				header('location:login.php');
			}
		}
		else
		{
			header('location:login.php');
		}	
	}
?>