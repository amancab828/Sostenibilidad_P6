-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-03-2025 a las 11:50:05
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Seleccionamos la base de datos
-- Base de datos: `secondlife`
--

-- --------------------------------------------------------

-- Insertamos las tablas

-- Tabla 1.1: usuarios
CREATE TABLE usuarios (
    usu_id INT AUTO_INCREMENT PRIMARY KEY,
    nombre VARCHAR(50),
    apellidos VARCHAR(50),
    DNI_NIF VARCHAR(10) NOT NULL,
    email VARCHAR(50) UNIQUE,
    password_hash VARCHAR(255),
    telefono VARCHAR(20),
    es_empresa BOOLEAN DEFAULT 0,
    creado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    actualizado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    es_admin BOOLEAN DEFAULT 0,
    CONSTRAINT CK_DNI_NIF CHECK (DNI_NIF REGEXP '^[0-9]{8}[A-Za-z]$')
);


-- Tabla 1.2: empresas
CREATE TABLE empresas (
    empresa_id INT AUTO_INCREMENT,
    usu_id INT,
    nombre_empresa VARCHAR(50),
    descripcion LONGTEXT,
    actualizado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (empresa_id, usu_id),
    FOREIGN KEY (usu_id) REFERENCES usuarios(usu_id) ON DELETE CASCADE
);

-- Tabla 2: categorias
CREATE TABLE categorias (
    categoria_id INT AUTO_INCREMENT PRIMARY KEY,
    cat_nombre VARCHAR(255),
    cat_descripcion TEXT
);

--
-- Volcado de datos para la tabla `categorias`
--

INSERT INTO `categorias` (`categoria_id`, `cat_nombre`, `cat_descripcion`) VALUES
(1, 'Ordenadores', 'Equipos de cómputo personales'),
(2, 'Componentes', 'Construye o mejora tu PC'),
(3, 'Periféricos', 'Complementos para tus dispositivos y equipos'),
(4, 'Teléfonos', 'Comunicación y tecnología'),
(5, 'Televisores', 'Entretenimiento en pantalla grande'),
(6, 'Pc sobremesa', 'PCs fijos y personalizables'),
(7, 'Ordenadores portátiles', 'Movilidad y rendimiento'),
(8, 'Accesorios', 'Extras para tus dispositivos'),
(9, 'Sensores / cámaras', 'Detección / Registro de movimiento.'),
(10, 'Profesional', 'Trabajo exigente y diseño.'),
(11, 'Oficina / hogar', 'Uso básico y diario.'),
(12, 'Mini PCs', 'Computadoras compactas.'),
(13, 'All-in-One', 'Todo en uno integrado.'),
(14, 'Reacondicionados', 'Segunda mano revisados.'),
(15, 'Ultrabook', 'Ligeros y delgados.'),
(16, 'Estudiantes', 'Portátiles básicos.'),
(17, 'Chromebooks', 'Rápidos y sencillos.'),
(18, 'MacBooks', 'Portátiles de Apple.'),
(19, '2 en 1', 'Táctiles y convertibles.'),
(20, 'Placas Base', 'Base del sistema.'),
(21, 'Procesadores (CPU)', 'Cerebro del PC.'),
(22, 'Tarjetas Gráficas (GPU)', 'Potencia visual.'),
(23, 'Memoria RAM', 'Velocidad de procesos.'),
(24, 'SSD / HDD', 'Almacenamiento rápido o amplio.'),
(25, 'Fuentes de Alimentación', 'Energía para el PC.'),
(26, 'Torres / Chasis', 'Estructura del equipo.'),
(27, 'Refrigeración', 'Control de temperatura.'),
(28, 'Tarjetas de Sonido / Captura', 'Audio y video avanzados.'),
(29, 'Lectores Ópticos', 'CDs y DVDs.'),
(30, 'Ratones', 'Control preciso.'),
(31, 'Teclados', 'Escritura cómoda.'),
(32, 'Auriculares', 'Audio personal.'),
(33, 'Micrófonos', 'Voz clara.'),
(34, 'Webcams', 'Videollamadas.'),
(35, 'Alfombrillas', 'Deslizamiento perfecto.'),
(36, 'Monitores', 'Pantallas externas.'),
(37, 'Altavoces', 'Sonido envolvente.'),
(38, 'Cables / Adaptadores ', 'Conexión garantizada.'),
(39, 'Android', 'Smartphones con sistema Android.'),
(40, 'iPhone', 'Teléfonos Apple.'),
(41, 'Básicos', 'Teléfonos sin apps.'),
(42, 'Protectores de pantalla', 'Evita rayones.'),
(43, 'Power Banks', 'Batería portátil.'),
(44, 'Soportes para coche', 'Fijación para vehículos.'),
(45, 'Smart TV', 'Televisor con apps.'),
(46, '4K / 8K', 'Alta resolución.'),
(47, 'OLED / QLED / LED', 'Calidad de imagen.'),
(48, 'Pequeños (<32\")', 'Tamaño compacto.'),
(49, 'Grandes (>55\")', 'Pantallas gigantes.'),
(50, 'Proyectores', 'Imagen en gran formato.'),
(51, 'Soportes en Pared', 'Fijación para TV.'),
(52, 'Barras de Sonido', 'Mejora de audio.');

-- Tabla 2.1: cat_parent (relación recursiva de categorías)
CREATE TABLE cat_parent (
    parent_id INT NOT NULL,
    child_id INT NOT NULL,
    PRIMARY KEY (parent_id, child_id),
    FOREIGN KEY (parent_id) REFERENCES categorias(categoria_id) ON DELETE CASCADE,
    FOREIGN KEY (child_id) REFERENCES categorias(categoria_id) ON DELETE CASCADE
);

--
-- Volcado de datos para la tabla `cat_parent`
--

INSERT INTO `cat_parent` (`parent_id`, `child_id`) VALUES
(1, 6),
(1, 7),
(2, 20),
(2, 21),
(2, 22),
(2, 23),
(2, 24),
(2, 25),
(2, 26),
(2, 27),
(2, 28),
(2, 29),
(3, 30),
(3, 31),
(3, 32),
(3, 33),
(3, 34),
(3, 35),
(3, 36),
(3, 37),
(3, 38),
(4, 14),
(4, 32),
(4, 39),
(4, 40),
(4, 41),
(4, 42),
(4, 43),
(4, 44),
(5, 45),
(5, 46),
(5, 47),
(5, 48),
(5, 49),
(5, 50),
(5, 51),
(5, 52),
(6, 10),
(6, 11),
(6, 12),
(6, 13),
(6, 14),
(7, 10),
(7, 14),
(7, 15),
(7, 16),
(7, 17),
(7, 18),
(7, 19);

-- Tabla 3: productos
CREATE TABLE productos (
    prod_id INT AUTO_INCREMENT PRIMARY KEY,
    prod_nombre VARCHAR(255),
    prod_vend_id INT NOT NULL,
    prod_descripcion TEXT,
    prod_caracteristicas LONGTEXT,
    precio DECIMAL(10,2),
    precio_descuento DECIMAL(10,2) DEFAULT 0,
    cantidad_stock INT,
    peso DECIMAL(10,2),
    creado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    actualizado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    visible BOOLEAN DEFAULT 1,
    FOREIGN KEY (prod_vend_id) REFERENCES usuarios(usu_id) ON DELETE CASCADE
);

-- Tabla 3.1: prod_cat (relación productos-categorias)
CREATE TABLE prod_cat (
    categoria_id INT,
    prod_id INT,
    PRIMARY KEY (categoria_id, prod_id),
    FOREIGN KEY (categoria_id) REFERENCES categorias(categoria_id) ON DELETE CASCADE,
    FOREIGN KEY (prod_id) REFERENCES productos(prod_id) ON DELETE CASCADE
);


-- Tabla 4: producto_imagen
CREATE TABLE producto_imagen (
    img_id INT AUTO_INCREMENT,
    prod_id INT,
    img_url VARCHAR(255),
    text_alt VARCHAR(255),
    PRIMARY KEY (img_id),
    FOREIGN KEY (prod_id) REFERENCES productos(prod_id) ON DELETE CASCADE
);


-- Tabla 5: listas
CREATE TABLE lista (
    list_id INT AUTO_INCREMENT,
    usu_id INT,
    tipo ENUM('carrito', 'lista_deseo'),
    nombre VARCHAR(255),
    creado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    actualizado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (list_id),
    FOREIGN KEY (usu_id) REFERENCES usuarios(usu_id) ON DELETE CASCADE
);

-- Tabla 6: lista_prod
CREATE TABLE lista_prod (
    list_id INT,
    prod_id INT,
    cantidad INT,
    precio_en_grupo DECIMAL(10,2),
    implementado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    PRIMARY KEY (list_id, prod_id),
    FOREIGN KEY (list_id) REFERENCES lista(list_id) ON DELETE CASCADE, 
    FOREIGN KEY (prod_id) REFERENCES productos(prod_id) ON DELETE CASCADE
);

-- Tabla 7: metodos_envio
CREATE TABLE metodos_envio (
    met_env_id INT AUTO_INCREMENT PRIMARY KEY,
    met_env_nombre VARCHAR(255),
    descripcion TEXT,
    precio DECIMAL(10,2),
    dias_estim_entrega INT,
    visible BOOLEAN DEFAULT 1
);

--
-- Volcado de datos para la tabla `metodos_envio`
--

INSERT INTO `metodos_envio` (`met_env_id`, `met_env_nombre`, `descripcion`, `precio`, `dias_estim_entrega`, `visible`) VALUES
(1, 'Envío a un punto de entrega', 'El cliente recoge el producto en un punto de recogida designado, como un centro comercial o una tienda de la empresa.', 6.00, 2, 1),
(2, 'Envío estándar', 'La opción más común y económica, con un tiempo de entrega más prolongado.', 5.00, 3, 1),
(3, 'Envío internacional', 'Envío a países fuera del país de origen del vendedor.', 15.00, 5, 1);

-- Tabla 8: pedidos
CREATE TABLE pedidos (
    pedido_id INT PRIMARY KEY,
    usu_id INT,
    direccion LONGTEXT,
    met_env_id INT,
    estado_pedi ENUM('pendiente', 'pagado', 'enviado', 'completado', 'cancelado'),
    estado_pago ENUM('pendiente', 'pagado', 'fallado'),
    precio_total DECIMAL(10,2),
    creado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    actualizado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    FOREIGN KEY (usu_id) REFERENCES usuarios(usu_id) ON DELETE CASCADE,
    FOREIGN KEY (met_env_id) REFERENCES metodos_envio(met_env_id) ON DELETE CASCADE
);

-- Tabla 9: pedido_prod
CREATE TABLE pedido_prod (
    pedido_id INT,
    prod_id INT,
    cantidad INT,
    precio_en_grupo DECIMAL(10,2),
    PRIMARY KEY (pedido_id, prod_id),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id) ON DELETE CASCADE,
    FOREIGN KEY (prod_id) REFERENCES productos(prod_id) ON DELETE CASCADE
);

-- Tabla 10: pagos
CREATE TABLE pagos (
    pago_id INT PRIMARY KEY,
    pedido_id INT,
    metodo_pago ENUM('tarjeta_de_credito_o_debito', 'paypal', 'transferencia_bancaria', 'bizum'),
    referencia_pago VARCHAR(255),
    cantidad_pagar DECIMAL(10,2),
    fecha_pago TIMESTAMP,
    estado ENUM('pendiente', 'completado', 'fallado'),
    FOREIGN KEY (pedido_id) REFERENCES pedidos(pedido_id) ON DELETE CASCADE
);


-- Tabla 11: comentarios
CREATE TABLE comentarios (
    coment_id INT AUTO_INCREMENT PRIMARY KEY,
    prod_id INT,
    usu_id INT,
    puntuacion INT CHECK (puntuacion BETWEEN 1 AND 5),
    comentario TEXT,
    creado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    actualizado_a TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    FOREIGN KEY (prod_id) REFERENCES productos(prod_id) ON DELETE CASCADE,
    FOREIGN KEY (usu_id) REFERENCES usuarios(usu_id) ON DELETE CASCADE
);

-- Tabla 12 : soporte
CREATE TABLE soporte (
    ticket INT AUTO_INCREMENT PRIMARY KEY,
    usu_id INT,
    estado ENUM ('resuelto', 'en_proceso', 'sin_resolver', 'descartado'),
    consulta LONGTEXT,
    medidas LONGTEXT,
    fecha_consulta TIMESTAMP NOT NULL DEFAULT current_timestamp(),
    fecha_resuelto TIMESTAMP,
    FOREIGN KEY (usu_id) REFERENCES usuarios(usu_id) ON DELETE CASCADE
);