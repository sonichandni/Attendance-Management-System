<?php
if($_SESSION['role']==1)
{
	include_once 'header_admin.php';
}
else if ($_SESSION['role']==2)
{
	include_once 'header_fac.php';
}
else
{
	header("location:./index.php");
}
?>