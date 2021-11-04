<?php    

	$DBuser 		= "root";
	$DBpwd 			= "1234";
	$servidor 		= "docker-mysql";
	$basededatos 	= "webmarket";

	//$conex = mysqli_connect( $servidor, $DBuser, $DBpwd ) 
			//or die ("No se ha podido conectar al servidor de Base de datos");
	//$selDB = mysqli_select_db( $conex, $basededatos) 
	  //or die ( "Error al conectar con la base de datos" );
	   
    $conex = mysqli_connect( $servidor, $DBuser, $DBpwd ,$basededatos) 
			or die ("NUEVA FORMA ERRONEA GGWP");  

    // conectar al servidor de BD
    //$conex = mysqli_connect("Docker-MYSQL","root","1234")
      //  or die ("No se ha podido conectar al servidor de Base de datos");;
 
    // seleccionar Base de Datos
    //$selDB = mysqli_select_db("webmarket",$conex)
          //or die ( "Error al conectar con la base de datos" );;

 
?>