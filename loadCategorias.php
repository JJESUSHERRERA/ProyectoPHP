<?php
    // MODULO LOAD Categorias
    // conectar al Servidor de Base de Datos
    include "conexion.php";
    // crear sentencia SQL para cargar categorias
    $sql = "SELECT * FROM categoria ORDER BY nombre";
    // ejecutar sentencia SQL
    $result = mysqli_query($conex,"SELECT * FROM categoria")
			or die ("No se conectoooo");
    // verificar existencia de datos
    if (mysqli_num_rows($result)==0) {
        // mostrar mensaje de error
        header("Location: errorPage.php?MSG=Aún no existen categorias");
    } else {
        // crear lista desplegable (combo box)
        while ($regCAT=mysqli_fetch_array($result)) {
            echo $regCAT ['nombre'];
            // convertir caracteres
            $nombre = utf8_encode($regCAT["nombre"]);
            // crear option del combo
            echo "\t\t<option value='$regCAT[idC]'>$nombre</option>\n";
        } // end while
        // cerrar conexión
        mysqli_close($conex);
    } // endif
?>               