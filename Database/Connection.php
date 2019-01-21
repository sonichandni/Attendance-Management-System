<?php
    class Connection
    {
        function mkConnection()
        {
            $con=new mysqli("localhost","root","","sams");
            return $con;
        }
    }
?>