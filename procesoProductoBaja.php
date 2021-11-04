<?php
    // PROCESO PRODUCTO DELETE
 
    // conectar al servidor de BD
    include "conexion.php";
    
    // capturar y convertir datos del formulario
    $id          = $_POST["bajaID"];
    // crear sentencia SQL para eliminación FISICA
    $sql  = "DELETE FROM productos WHERE idP= $id";
    //restablece el autoincremento de la tabla
    $sql2 = " ALTER TABLE productos AUTO_INCREMENT = 1";
    // depurar sentencia
    // die($sql);
    // ejecutar sentencia SQL
    mysqli_query($conex,$sql);
    mysqli_query($conex,$sql2);                   
    // cerrar conexión
    mysqli_close($conex);
    // volver automáticamente al formulario de baja de Productos
    header("Location: bajaProductos.php");
?>