<?php
    // Incluimos el archivo que contiene la configuración y la conexión a la base de datos
    require_once '../config/db.php';

    // Guardamos en la variable $query la consulta SQL para seleccionar 
    // todos los usuarios y obtener sus columnas ID, nombre, correo y cargo
    $query = "SELECT NOMBRE, imagen FROM USUARIO WHERE ID_USUARIO =1";
    // Preparamos la consulta SQL usando el objeto $conn (la conexión)
    $stmt = $conn->prepare($query);
    // Ejecutamos la consulta preparada
    $stmt->execute();
    // Obtenemos el resultado de la consulta en un objeto mysqli_result 
    //y lo guardamos en $resultado_usuarios
    $resultado_usuario = $stmt->get_result();

    // Guardamos en la variable $query una nueva consulta SQL para obtener
    // solo el usuario que tenga ID_USUARIO igual a 2
    $query = "SELECT HISTORIA FROM LOCAL WHERE ID_LOCAL = 1";
    // Preparamos la segunda consulta SQL
    $stmt = $conn->prepare($query);
    // Ejecutamos la segunda consulta preparada
    $stmt->execute();
    // Obtenemos el resultado de la segunda consulta y lo guardamos en $resultado_unico
    $resultado_local = $stmt->get_result();

    $query = "SELECT NOMBRE_PRODUCTO, DESCRIPCION_PRODUCTO, IMAGEN_PRODUCTO FROM PRODUCTO WHERE ID_LOCAL = 1";
    // Preparamos la segunda consulta SQL
    $stmt = $conn->prepare($query);
    // Ejecutamos la segunda consulta preparada
    $stmt->execute();
    // Obtenemos el resultado de la segunda consulta y lo guardamos en $resultado_unico
    $resultado_producto = $stmt->get_result();
?>

<html>
    <head lang="es">
        <link rel="stylesheet" href="../styles/monica.css">
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width">
        <title>artesanos</title>
    </head>
    <body>
        <header>
        </header>
        <nav>
        </nav>
        <main><center>
            <div class="cuadros">
                <div class="cuadroizquierda1">
                    <div class="cuadroizquierda2"><center>
                        <?php $usuario = $resultado_usuario->fetch_assoc() ?>
                            <img class="" src="../<?php echo htmlspecialchars($usuario['imagen']); ?>" width="320px" height="275" alt="no hay yippee imagen XD"> </center>
                            <div class="cuadroizquierda3">
                            <?php if ($resultado_usuario->num_rows > 0): ?>
                                <h1><?php echo htmlspecialchars($usuario['NOMBRE']); ?></h1>
                            <?php else: ?>
                                <p class="p-account"><strong>No hay Artesano</strong></p>
                            <?php endif; ?> 
                            </div>
                            <div class="cuadroizquierda4">
                                <?php if ($resultado_local->num_rows > 0): ?>
                                    <?php $local = $resultado_local->fetch_assoc() ?>
                                    <h2>Historia</h2>
                                    <p><?php echo htmlspecialchars($local['HISTORIA']); ?></p>
                                <?php else: ?>
                                    <p class="p-account"><strong>No hay Historia</strong></p>
                                <?php endif; ?>
                            </div>
                        </div>
                    </div>
                    <div class="cuadroderecha1">
                    <h3>Productos del Artesano</h3>
                    <div class="cuadroderecha2">
                        <?php if ($resultado_producto->num_rows > 0): ?>
                        <div class="row-cards">
                            <?php while ($producto = $resultado_producto->fetch_assoc()): ?>    
                                <div class="card">
                                    <div class="card-body">
                                        <img class="card-img-des" src="../<?php echo htmlspecialchars($producto['IMAGEN_PRODUCTO']); ?>" width="213px" height="180" alt="no hay yippee imagen XD">
                                             
                                        <p class="card-text">
                                            <?php echo htmlspecialchars($producto['NOMBRE_PRODUCTO']); ?> 
                                        </p>
                                        <p class="card-text-des">
                                            <?php echo htmlspecialchars($producto['DESCRIPCION_PRODUCTO']); ?>
                                        </p>
                                        
                                    </div>
                                    <a class="button-card" href="ver-usuario.php?id=">
                                    Ver más 
                                    </a>
                                </div>
                            <?php endwhile; ?> 
                        </div>
                        <?php else: ?>
                        <p class="p-account"><strong>No hay Productos aún</strong></p>
                        <?php endif; ?> 
                        
                    </div>
                </div>
            </div>
                </center>
        </main>