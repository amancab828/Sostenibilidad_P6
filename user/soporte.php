<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Soporte</title>
    <link rel="stylesheet" type="text/css" href="../assets/css/user.css">
    <link rel="stylesheet" type="text/css" href="../assets/css/estilos.css">
</head>
<body>
    
    <div class="user-container">
        <div class="user-box">

            <h1>Soporte Técnico</h1>
            <p>¿Tienes algún problema con el sistema sostenible? Contáctanos.</p>

            <form>

                <label>Nombre</label>
                <input type="text" placeholder="Tu nombre" required>

                <label>Email</label>
                <input type="email" placeholder="Tu correo electrónico" required>

                <label>Tipo de problema</label>
                <select required>
                    <option value="">Selecciona una opción</option>
                    <option>Error en la web</option>
                    <option>Problema con la cuenta</option>
                    <option>Consulta sobre sostenibilidad</option>
                    <option>Otro</option>
                </select>

                <label>Mensaje</label>
                <textarea placeholder="Describe tu problema..." required></textarea>

                <button type="submit">Enviar solicitud</button>

            </form>
            <a href="../index.php" class="extra">Volver a la web</a>

        </div>
    </div>
</body>
</html>