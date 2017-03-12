<?php
session_start();
if(!isset($_SESSION['myusername'])){
header("location:../index.php");
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
<title>RENNAB</title>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=Edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" href="../css/bootstrap.min.css">
<link rel="stylesheet" href="../css/font-awesome.min.css">
<link rel="stylesheet" href="../css/nivo-lightbox.css">
<link rel="stylesheet" href="../css/nivo_themes/default/default.css">
<link rel="stylesheet" href="../css/templatemo-style.css">
<!-- google web font css -->
<link href='http://fonts.googleapis.com/css?family=Raleway:400,300,600,700' rel='stylesheet' type='text/css'>
</head>
<body data-spy="scroll" data-target=".navbar-collapse" id="top">
<!-- navigation -->
<div class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container">
    <div class="navbar-header">
      <button class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse"><span class="icon icon-bar"></span> <span class="icon icon-bar"></span> <span class="icon icon-bar"></span></button>
      <a href="#" class="navbar-brand">RENNAB</a></div>
    <div class="collapse navbar-collapse">
      <ul class="nav navbar-nav navbar-right">
        <li><a href="home.php" class="smoothScroll">HOME</a></li>
        <li><a href="busca_cursos.php" class="smoothScroll">BUSCA CURSOS</a></li>
        <li><a href="mis_cursos.php" class="smoothScroll">MIS CURSOS</a></li>
        <li><a href="perfil.php" class="smoothScroll">MI PERFIL</a></li>
      </ul>
    </div>
  </div>
</div>

