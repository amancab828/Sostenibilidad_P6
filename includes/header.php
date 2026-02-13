<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Second Life</title>
    <link rel="stylesheet" type="text/css" href="./assets/css/includes.css">
</head>
<body>
    <!-- Barra de navegación -->
    <nav>
        <div class="caja">
            <a href="./index.php" id="barra" style="padding-top: 8px;">
                <strong>Second Life</strong>
            </a>
        </div>
        <div class="caja">
            <a href="./vender.php" id="barra" style="padding-top: 8px;">
                <strong>Vender</strong>
            </a>
        </div>
        <div class="caja">
            <a href="./empresas.php" id="barra" style="padding-top: 8px;">
                <strong>Empresas</strong>
            </a>
        </div>
        <div class="caja">
            <a href="./sostenibilidad.php" id="barra" style="padding-top: 8px;">
                <strong>Sostenibilidad</strong>
            </a>
        </div>
        <div class="caja">
            <a href="./cuenta.php" id="barra" style="padding-top: 8px;">
                <strong>Mi cuenta</strong>
            </a>
        </div>
        <div class="caja">
            <a href="./carro.php" id="barra" style="position: relative;">
                <strong>Carro</strong>
                <?php if (isset($_SESSION['id_usuario']) && $contador_carrito > 0): ?>
                    <span class="contador-carrito"><?= $contador_carrito ?></span>
                <?php endif; ?>
            </a>
        </div>
    </nav>

</body>
</html>