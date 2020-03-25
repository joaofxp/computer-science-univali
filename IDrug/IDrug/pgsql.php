<?php
    $servidor = "host="."127.0.0.1";
    $port = " port="."5432";
    $user = " user=". "postgres";
    $password = " password="."123456";

    $con_string = $servidor.$port.$user.$password;

    $conn = pg_connect($con_string) 
            or 
            die("ERRO NA CONEXÃO COM POSTGRESQL");

    date_default_timezone_set("Brazil/East"); 
    error_reporting( E_ALL );
    ini_set( 'display_errors', true );  
?>