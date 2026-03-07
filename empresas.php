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
        <div class="empresas">

            <div class="empresas-card dell">
                <img src="https://1000logos.net/wp-content/uploads/2017/07/Dell-Logo.png">
                <h3>Dell</h3>
                <button>Ver</button>
            </div>

            <div class="empresas-card hp">
                <img src="https://1000logos.net/wp-content/uploads/2017/02/HP-Log%D0%BE.png">
                <h3>HP</h3>
                <button>Ver</button>
            </div>

            <div class="empresas-card lenovo">
                <img src="https://1000logos.net/wp-content/uploads/2017/03/Lenovo-Logo.png">
                <h3>Lenovo</h3>
                <button>Ver</button>
            </div>

            <div class="empresas-card acer">
                <img src="https://1000logos.net/wp-content/uploads/2016/09/Acer-Logo.png">
                <h3>Acer</h3>
                <button>Ver</button>
            </div>

            <div class="empresas-card msi">
                <img src="https://1000logos.net/wp-content/uploads/2018/10/MSI-Logo.png">
                <h3>MSI</h3>
                <button>Ver</button>
            </div>

        </div>
    </div>
    
    <!-- Footer -->
    <?php include 'includes/footer.php'; ?>

</body>
</html>