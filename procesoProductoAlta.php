<?php
    include  "conexion.php";

    
    



    // capturar datos del formulario
    $marca          =      utf8_decode($_POST["productoMarca"]);
    $descripcion     =     utf8_decode($_POST["productoDescripcion"]);
    $origen         =      $_POST["productoOrigen"];
    $precio         =       $_POST["productoPrecio"];
    $categoria      =      $_POST["productoCategoria"];
    
    ;
    // crear sentencia SQL
    $sql  = "INSERT INTO productos ";
    $sql .= "(marca,descripcion,origen,precio,categoria) ";
    $sql .= "VALUES "; 
    $sql .= "('$marca', '$descripcion', '$origen', $precio, $categoria)";
    // ejecutar sentencia SQL
    mysqli_query($conex,$sql);
    // cerrar conexión
    mysqli_close($conex);
    // volver automáticamente al formulario de Alta
    header("Location: altaProductos.php");  
   
   
    ?>