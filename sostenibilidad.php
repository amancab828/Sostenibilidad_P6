<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Second Life</title>
    <link rel="stylesheet" type="text/css" href="./assets/css/estilos.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/sostenibilidad.css">
</head>

<body>
    <!-- Conexión con la base de datos e inicio de sesión -->
    <?php
        /*Nos conectamos a la base de datos*/
        include 'config/database.php';
    ?>

    <!-- Barra de navegación -->
    <?php include 'includes/header.php'; ?>

    <div class="ods-container">
        <h1>Relación de nuestra empresa con la ODS 11</h1>
        <h2>Ciudades y comunidades sostenibles</h2>

        <p class="intro">
            La ODS 11 tiene como finalidad lograr que las ciudades y comunidades sean más inclusivas,
            seguras, resilientes y sostenibles.
        </p>

        <p>
            Nuestra idea de empresa consiste en una plataforma y servicio donde diferentes empresas
            pueden vender e intercambiar hardware tecnológico. Esta propuesta se relaciona con la
            ODS 11 por varias razones:
        </p>

        <ul>
            <li>
                <strong>Reducción de residuos electrónicos:</strong><br>
                Las empresas suelen desechar hardware rápidamente, generando grandes cantidades de
                basura electrónica que afectan a las ciudades. Al facilitar la venta y reutilización
                de equipos, se disminuye esta cantidad de residuos.
            </li>

            <li>
                <strong>Promoción de la economía circular:</strong><br>
                En lugar de comprar constantemente productos nuevos, las empresas pueden usar equipos
                existentes de otras empresas, fomentando un modelo de economía circular donde los
                recursos se aprovechan durante más tiempo.
            </li>

            <li>
                <strong>Menor impacto ambiental en las ciudades:</strong><br>
                Fabricar hardware nuevo requiere mucha energía y materiales. Al reutilizar equipos,
                se reduce la contaminación y la huella ambiental, contribuyendo a ciudades más limpias
                y sostenibles.
            </li>

            <li>
                <strong>Acceso a tecnología más asequible para empresas locales:</strong><br>
                La plataforma ayuda a pequeñas y medianas empresas a acceder a hardware a menor coste,
                fortaleciendo el desarrollo económico urbano.
            </li>
        </ul>

        <div class="conclusion">
            <h3>Conclusión</h3>
            <p>
                Esta empresa contribuye a crear comunidades más sostenibles mediante:
            </p>
            <ul>
                <li>La reducción de residuos electrónicos</li>
                <li>El uso eficiente de los recursos</li>
                <li>El apoyo al desarrollo urbano responsable</li>
            </ul>
            <p>
                Además, también se relaciona con otros objetivos como la
                <strong>ODS 12 (Producción y consumo responsables)</strong>.
            </p>
        </div>
    </div>
    
    <!-- Footer -->
    <?php include 'includes/footer.php'; ?>

</body>
</html>