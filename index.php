<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Second Life</title>
    <link rel="stylesheet" type="text/css" href="./assets/css/estilos.css">
    <link rel="stylesheet" type="text/css" href="./assets/css/index.css">
</head>

<body>
    <!-- Conexión con la base de datos e inicio de sesión -->
    <?php
        /*Nos conectamos a la base de datos*/
        include 'config/database.php';
    ?>

    <!-- Barra de navegación -->
    <?php include 'includes/header.php'; ?>

<div class="shop-layout">

    <!-- BARRA LATERAL -->
    <aside class="sidebar">
        <h2>Filtrar por</h2>

        <label>
            <input type="checkbox" value="portatil" checked>
            Portátiles
        </label>

        <label>
            <input type="checkbox" value="sobremesa" checked>
            Sobremesa
        </label>

        <label>
            <input type="checkbox" value="allinone" checked>
            All in One
        </label>
    </aside>

    <!-- CONTENIDO TIENDA -->
    <section class="shop-section">
        <h1>Ordenadores de segunda mano</h1>
        <p class="shop-intro">
            Tecnología reutilizada para un futuro más sostenible 
        </p>

        <div class="products">

            <div class="product-card portatil">
                <img src="https://cdn-icons-png.flaticon.com/512/3474/3474362.png">
                <h3>Portátil Dell Latitude</h3>
                <p>Intel i5 · 8GB RAM · 256GB SSD</p>
                <span class="price">299 €</span>
                <button>Comprar</button>
            </div>

            <div class="product-card sobremesa">
                <img src="https://cdn-icons-png.flaticon.com/512/3474/3474373.png">
                <h3>PC Sobremesa HP</h3>
                <p>Intel i7 · 16GB RAM · 512GB SSD</p>
                <span class="price">389 €</span>
                <button>Comprar</button>
            </div>

            <div class="product-card allinone">
                <img src="https://cdn-icons-png.flaticon.com/512/3474/3474380.png">
                <h3>All in One Lenovo</h3>
                <p>Intel i5 · 8GB RAM · 256GB SSD</p>
                <span class="price">349 €</span>
                <button>Comprar</button>
            </div>

        </div>
    </section>

</div>

<!-- Footer -->
<?php include 'includes/footer.php'; ?>

<script src="./assets/js/index.js"></script>

</body>
</html>