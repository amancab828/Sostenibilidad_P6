<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Second Life</title>
    <link rel="stylesheet" type="text/css" href="./assets/css/estilos.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/empresas.css">
</head>

<body>
    <!-- Conexión con la base de datos e inicio de sesión -->
    <?php
        /*Nos conectamos a la base de datos*/
        include 'config/database.php';
    ?>

    <!-- Barra de navegación -->
    <?php include 'includes/header.php'; ?>

    <div class="empresas-container">
        <h1>Empresas de nuestra página</h1>
        <h2>Información sobre empresas colaboradoras que apoyan la sostenibilidad</h2>

        <p></p>
    </div>
    
    <!-- Footer -->
    <?php include 'includes/footer.php'; ?>

</body>
</html>