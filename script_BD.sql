CREATE DATABASE musical_express_bd;
USE tbl_musical_express(
    codigo_venta INT NOT NULL AUTO_INCREMENT,
    codigo_producto INT NOT NULL,
    precio_total DECIMAL (11,2) NOT NULL,
    codigo_metodo_pago VARCHAR (20) NOT NULL,
    numero_factura INT NOT NULL,
    fecha_venta DATE NOT NULL,
    id_cliente INT (10) NOT NULL,
    id_vendedor INT (10) NOT NULL,
    PRIMARY KEY (codigo_venta),
    FOREIGN KEY (codigo_producto) REFERENCES tbl_productos(codigo_producto),
    FOREIGN KEY (codigo_metodo_pago) REFERENCES tbl_metodo_pago(codigo_metodo_pago),
    FOREIGN KEY (id_cliente) REFERENCES tbl_clientes(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES tbl_vendedor(id_vendedor)
)
 CREATE TABLE tbl_productos(
    codigo_producto INT NOT NULL AUTO_INCREMENT,
    nombre_producto VARCHAR (35) NOT NULL,
    codigo_subcategoria INT NOT NULL,
    codigo_marca INT NOT NULL,
    stock_producto INT NOT NULL,
    codigo_proveedor INT NOT NULL,
    precio_costo DECIMAL (11,2) NULL,--
    precio_venta DECIMAL (11,2) NOT NULL,--
    PRIMARY KEY (codigo_producto),
    FOREIGN KEY (codigo_subcategoria) REFERENCES tbl_subcategoria(codigo_subcategoria),
    FOREIGN KEY (codigo_proveedor) REFERENCES tbl_proveedor(codigo_proveedor)
 )

 CREATE TABLE tbl_subcategoria(
    codigo_subcategoria INT NOT NULL AUTO_INCREMENT,
    nombre_subcategoria VARCHAR (20) NOT NULL,
    codigo_categoria INT NOT NULL,
    PRIMARY KEY (codigo_subcategoria),
    FOREIGN KEY (codigo_categoria) REFERENCES tbl_categorias(codigo_categoria)
 )

 CREATE TABLE tbl_categorias(
    codigo_categoria INT NOT NULL AUTO_INCREMENT,
    nombre_categoria VARCHAR (20) NOT NULL,
    PRIMARY KEY (codigo_categoria)
 )

 CREATE TABLE tbl_proveedor(
    codigo_proveedor INT NOT NULL AUTO_INCREMENT,
    nombre_proveedor VARCHAR (35) NOT NULL,
    correo_proveedor VARCHAR (50) NOT NULL,
    telefono_proveedor INT (10) NOT NULL,
    direccion_proveedor VARCHAR (50) NOT NULL,
    PRIMARY KEY (codigo_proveedor)
 )

 CREATE TABLE tbl_metodo_pago(
    codigo_metodo_pago VARCHAR (20) NOT NULL,
    nombre_metodo_pago VARCHAR (20) NOT NULL,
    PRIMARY KEY (codigo_metodo_pago)
 )

 CREATE TABLE tbl_clientes(
    id_cliente INT (10) NOT NULL AUTO_INCREMENT,
    nombre_cliente VARCHAR (20) NOT NULL,
    apellido_cliente VARCHAR (35) NOT NULL,
    direccion_cliente VARCHAR (50) NOT NULL,
    telefono_cliente INT (10) NOT NULL,
    correo_cliente VARCHAR (40) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    PRIMARY KEY (id_cliente)
 )

 CREATE TABLE tbl_vendedor(
    id_vendedor INT (10) NOT NULL AUTO_INCREMENT,
    nombre_vendedor VARCHAR (20) NOT NULL,
    apellido_vendedor VARCHAR (35) NOT NULL,
    telefono_vendedor INT (10) NOT NULL,
    correo_vendedor VARCHAR (40) NOT NULL,
    salario_vendedor DECIMAL (11,2) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_supervisor INT (10) NOT NULL,
    PRIMARY KEY (id_vendedor),
    FOREIGN KEY (id_supervisor) REFERENCES tbl_supervisor(id_supervisor)
 )

 CREATE TABLE tbl_supervisor(
    id_supervisor INT (10) NOT NULL AUTO_INCREMENT,
    nombre_supervisor VARCHAR (20) NOT NULL,
    apellido_supervisor VARCHAR (35) NOT NULL,
    telefono_supervisor INT (10) NOT NULL,
    correo_supervisor VARCHAR (40) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    PRIMARY KEY (id_supervisor)
 )


 ------------------------------------------------------------------------------------

 -- Crear la base de datos
CREATE DATABASE bd_musical_espress;
USE bd_musical_espress;

-- Tabla de categorías
CREATE TABLE tbl_categorias (
    codigo_categoria INT NOT NULL AUTO_INCREMENT,
    nombre_categoria VARCHAR(20) NOT NULL,
    PRIMARY KEY (codigo_categoria)
);
INSERT INTO `tbl_categorias` (`codigo_categoria`, `nombre_categoria`) VALUES (NULL, 'Instrumentos'), (NULL, 'Accesorios'), (NULL, 'Servicios');

-- Tabla de subcategorías
CREATE TABLE tbl_subcategoria (
    codigo_subcategoria INT NOT NULL AUTO_INCREMENT,
    nombre_subcategoria VARCHAR(20) NOT NULL,
    codigo_categoria INT NOT NULL,
    PRIMARY KEY (codigo_subcategoria),
    FOREIGN KEY (codigo_categoria) REFERENCES tbl_categorias(codigo_categoria)
);

INSERT INTO `tbl_subcategoria` (`codigo_subcategoria`, `nombre_subcategoria`, `codigo_categoria`) VALUES (NULL, 'Percusión', '1'), (NULL, 'Teclados', '1'), (NULL, 'Viento', '1'), (NULL, 'Cuerdas', '1'), (NULL, 'Electrónicos', '1');
INSERT INTO `tbl_subcategoria` (`codigo_subcategoria`, `nombre_subcategoria`, `codigo_categoria`) VALUES (NULL, 'Cuerdas y piezas', '2'), (NULL, 'Amplificadores y efectos', '2');
INSERT INTO `tbl_subcategoria` (`codigo_subcategoria`, `nombre_subcategoria`, `codigo_categoria`) VALUES (NULL, 'Soportes y fundas', '2'), (NULL, 'Equipo de grabación', '2'), (NULL, 'Cables y conectores', '2');
INSERT INTO `tbl_subcategoria` (`codigo_subcategoria`, `nombre_subcategoria`, `codigo_categoria`) VALUES (NULL, 'Alquiler de instrumentos', '3'), (NULL, 'Lecciones y clases', '3'), (NULL, 'Ajustes y mantenimiento', '3'), (NULL, 'Reparación de instrumentos', '3');


-- Tabla de proveedores
CREATE TABLE tbl_proveedor (
    codigo_proveedor INT NOT NULL AUTO_INCREMENT,
    nombre_proveedor VARCHAR(35) NOT NULL,
    correo_proveedor VARCHAR(50) NOT NULL,
    telefono_proveedor INT NOT NULL,
    direccion_proveedor VARCHAR(50) NOT NULL,
    PRIMARY KEY (codigo_proveedor)
);
INSERT INTO `tbl_proveedor` (`codigo_proveedor`, `nombre_proveedor`, `correo_proveedor`, `telefono_proveedor`, `direccion_proveedor`) VALUES (NULL, 'Sintonía Internacional', 'sintoniaint@gmail.com', '315421544', 'calle42#68-56 Medellín'), (NULL, 'Ritmo Urbano', 'ritmourbano@gmail.com', '312548412', 'calle48#72-35 Manizales'),
 (NULL, 'Distribuidora Musicales', 'musicalesD@gmail.com', '315424514', 'calle 87#29-09 Bogotá'), (NULL, 'Sonido Perfecto Ltda.', 'sonidoperfecto@gmail.com', '312154897', 'calle 77# 45-66 Pereira'), (NULL, 'Instrumentos del Mundo', 'ins.mundo@gmail.com', '301214227', 'calle 59#67-52 Medellín'), (NULL, 'Proveedora Sonora', 'povee.sonora@gmail.com',
  '301954215', 'calle 48#21-70 Bogotá'), (NULL, 'ElectroSonido Inc.', 'electrosonic@gmail.com', '306215418', 'calle 66#45-33 Pereira'), (NULL, 'Cuerdas & Vientos', 'cuerdas&vientos@gmail.com', '308741269', 'calle 78#20-91 Medellín'), (NULL, 'Global Acústica', 'global.acústica@gmail.com', '300965412', 'calle 90#76-04 Medellín'), (NULL, 'Viva el Ritmo', 'vivaelritmo@gmail.com', '301259843', 'calle 51#43-65 Bogotá');



-- Tabla de productos
CREATE TABLE tbl_productos (
    codigo_producto INT NOT NULL AUTO_INCREMENT,
    nombre_producto VARCHAR(35) NOT NULL,
    codigo_subcategoria INT NOT NULL,
    marca INT NOT NULL,
    stock_producto INT NOT NULL,
    codigo_proveedor INT NOT NULL,
    precio_costo DECIMAL(11,2),
    precio_venta DECIMAL(11,2) NOT NULL,
    PRIMARY KEY (codigo_producto),
    FOREIGN KEY (codigo_subcategoria) REFERENCES tbl_subcategoria(codigo_subcategoria),
    FOREIGN KEY (codigo_proveedor) REFERENCES tbl_proveedor(codigo_proveedor)
);
ALTER TABLE `tbl_productos` CHANGE `codigo_marca` `marca` VARCHAR(20) NOT NULL;
INSERT INTO `tbl_productos` (`codigo_producto`, `nombre_producto`, `codigo_subcategoria`, `marca`, `stock_producto`, `codigo_proveedor`, `precio_costo`, `precio_venta`) VALUES (NULL, 'Bongos', '1', 'Melodix', '56', '1', '75000', '80000'), (NULL, 'Piano digital', '2', 'Armonix', '24', '3', '250000', '280000');
INSERT INTO `tbl_productos` (`codigo_producto`, `nombre_producto`, `codigo_subcategoria`, `marca`, `stock_producto`, `codigo_proveedor`, `precio_costo`, `precio_venta`) VALUES (NULL, 'Clarinete', '3', 'Tone wave', '48', '7', '165000', '170200'), (NULL, 'Violín', '4', 'Clave sonora', '150', '9', '320100', '330500'), (NULL, 'Drum machine', '5', 'Vibrato', '12', '6', '425000', '430800'), (NULL, 'Púas', '19', 'Vibrato', '524', '4', '6200', '7000'), (NULL, 'Pedal de distorsión', '20', 'Clave sonora', '36', '3', '35600', '37500');
INSERT INTO `tbl_productos` (`codigo_producto`, `nombre_producto`, `codigo_subcategoria`, `marca`, `stock_producto`, `codigo_proveedor`, `precio_costo`, `precio_venta`) VALUES (NULL, 'Funda de batería', '21', 'Melodix', '28', '9', '54100', '56000'), (NULL, 'Micrófono', '22', 'Armonix', '64', '10', '26500', '28200'), (NULL, 'Cable XLR', '23', 'Vibrato', '87', '5', '12600', '14800');
INSERT INTO `tbl_productos` (`codigo_producto`, `nombre_producto`, `codigo_subcategoria`, `marca`, `stock_producto`, `codigo_proveedor`, `precio_costo`, `precio_venta`) VALUES (NULL, 'Alquiler de violín', '24', NULL, '8', NULL, NULL, '30000'), (NULL, 'Clase de saxofón', '25', NULL, '', NULL, NULL, '75000'), (NULL, 'Mantenimiento de piano', '26', NULL, NULL, NULL, NULL, '48000'), (NULL, 'Reparación de guitarra', '27', NULL, NULL, NULL, NULL, '110000');


-- Tabla de métodos de pago
CREATE TABLE tbl_metodo_pago (
    codigo_metodo_pago VARCHAR(20) NOT NULL,
    nombre_metodo_pago VARCHAR(20) NOT NULL,
    PRIMARY KEY (codigo_metodo_pago)
);
INSERT INTO `tbl_metodo_pago` (`codigo_metodo_pago`, `nombre_metodo_pago`) VALUES ('1', 'Efectivo'), ('2', 'Tarjeta de crédito'), ('3', 'Tarjeta debito'), ('4', 'Transferencia'), ('5', 'Paypal'), ('6', 'Código QR');


-- Tabla de clientes
CREATE TABLE tbl_clientes (
    id_cliente INT NOT NULL AUTO_INCREMENT,
    nombre_cliente VARCHAR(20) NOT NULL,
    apellido_cliente VARCHAR(35) NOT NULL,
    direccion_cliente VARCHAR(50) NOT NULL,
    telefono_cliente INT NOT NULL,
    correo_cliente VARCHAR(40) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    PRIMARY KEY (id_cliente)
);
INSERT INTO `tbl_clientes` (`id_cliente`, `nombre_cliente`, `apellido_cliente`, `direccion_cliente`, `telefono_cliente`, `correo_cliente`, `fecha_nacimiento`) VALUES ('1215426521', 'Sofía', 'Martínez Ortíz', 'calle 56# 79-08', '301215426', 'sofi@gmail.com', '2000-05-19'), ('32125412', 'Astrid', 'Blandón Murillo', 'Calle 76#43-56', '302154215', 'astrid@gmail.com', '1987-12-21'), ('21542165', 'Jairo', 'Blabín Osorio', 'Calle 32#54-87', '30121542', 'jairo@gmail.com', '1981-01-17'), ('62554298', 'Isabella', 'González Monsalve', 'Calle 21#44-49', '302154214', 'isa@gmail.com', '1999-03-12'), ('65221985', 'Clara', 'Sánchez Rivillas', 'Calle 98#80-87', '302685941', 'clara@gmail.com', '2003-11-19');
INSERT INTO `tbl_clientes` (`id_cliente`, `nombre_cliente`, `apellido_cliente`, `direccion_cliente`, `telefono_cliente`, `correo_cliente`, `fecha_nacimiento`) VALUES ('52114521', 'Paula', 'Peláez Parra', 'calle 56#32-95', '302154215', 'pau@gmail.com', '1995-05-23'), ('153264582', 'Jimena', 'Londoño Arbeláez', 'Calle 54#43-98', '325124698', 'jimena@gmail.com', '2006-04-13'), ('36223541', 'Sara', 'Isaza Torres', 'Calle 32#59-52', '30589442', 'sara@gmail.com', '1991-07-12'), ('152369458', 'Tatiana', 'Carmona Botero', 'Calle 95#35-49', '312548240', 'tati@gmail.com', '1999-02-28'), ('30221542', 'Sebastián', 'Vargas Núñez', 'Calle 98#96-58', '321689640', 'sebas@gmail.com', '1999-05-02');


-- Tabla de supervisores
CREATE TABLE tbl_supervisor (
    id_supervisor INT NOT NULL AUTO_INCREMENT,
    nombre_supervisor VARCHAR(20) NOT NULL,
    apellido_supervisor VARCHAR(35) NOT NULL,
    telefono_supervisor INT NOT NULL,
    correo_supervisor VARCHAR(40) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    PRIMARY KEY (id_supervisor)
);
INSERT INTO `tbl_supervisor` (`id_supervisor`, `nombre_supervisor`, `apellido_supervisor`, `telefono_supervisor`, `correo_supervisor`, `fecha_nacimiento`) VALUES ('32112549', 'Mariana', 'Piedrahita Urrea', '305212635', 'mariana.sup@gmail.com', '1997-02-19'), ('31554289', 'Hernán', 'Jiménez Espinoza', '302154268', 'hernan.sup@gmail.com', '1978-07-13'), ('32513597', 'Gladis', 'Ramirez Saldarriaga', '30651258', 'gladis.sup@gmail.com', '1970-05-13'), ('36554125', 'Laura', 'Vélez Giraldo', '304152124', 'laura.sup@gmail.com', '2000-09-30'), ('30221547', 'Antonia', 'Echeverri Páez', '302154295', 'anto.sup@gmail.com', '2025-02-21');


-- Tabla de vendedores
CREATE TABLE tbl_vendedor (
    id_vendedor INT NOT NULL AUTO_INCREMENT,
    nombre_vendedor VARCHAR(20) NOT NULL,
    apellido_vendedor VARCHAR(35) NOT NULL,
    telefono_vendedor INT NOT NULL,
    correo_vendedor VARCHAR(40) NOT NULL,
    salario_vendedor DECIMAL(11,2) NOT NULL,
    fecha_nacimiento DATE NOT NULL,
    id_supervisor INT NOT NULL,
    PRIMARY KEY (id_vendedor),
    FOREIGN KEY (id_supervisor) REFERENCES tbl_supervisor(id_supervisor)
);
INSERT INTO `tbl_vendedor` (`id_vendedor`, `nombre_vendedor`, `apellido_vendedor`, `telefono_vendedor`, `correo_vendedor`, `salario_vendedor`, `fecha_nacimiento`, `id_supervisor`) VALUES ('102154268', 'Estefanía', 'Giraldo Arango', '301455215', 'estefa@gmail.com', '1350200', '2002-03-09', '36554125'), ('30215429', 'Pedro', 'Yepes Lopera', '30542685', 'pedro@gmail.com', '1520600', '2000-07-19', '31554289');
INSERT INTO `tbl_vendedor` (`id_vendedor`, `nombre_vendedor`, `apellido_vendedor`, `telefono_vendedor`, `correo_vendedor`, `salario_vendedor`, `fecha_nacimiento`, `id_supervisor`) VALUES ('1202458521', 'Ana Sofía', 'Noreña Ruíz', '301254126', 'ana.sofia@gmail.com', '1350200', '2000-03-06', '32112549'), ('39554115', 'Samuel', 'Díaz Fierro', '312452152', 'samuel@gmail.com', '1400700', '1997-07-19', '32513597'), ('31254851', 'Yohan', 'Peña López', '30125416', 'yohan@gmail.com', '1850600', '1999-03-23', '36554125'), ('31254855', 'Daniel', 'Ortíz Flórez', '301254125', 'daniel@gmail.com', '1250000', '1989-04-15', '30221547'), ('45212655', 'Rafael', 'Quiroga Dorado', '30215486', 'rafa@gmail.com', '1500000', '2003-08-19', '36554125'), ('25413659', 'Gabriela', 'Londoño Ramírez', '30124525', 'gabriela@gmail.com', '1650200', '2005-09-12', '32112549'), ('125435586', 'Camila', 'Alzate Gómez', '30215459', 'camila@gmail.com', '1240000', '1991-04-28', '36554125'), ('62354125', 'William', 'Torres Franco', '312540215', 'william@gmail.com', '1550000', '1979-08-08', '32112549');

-- Tabla de ventas
CREATE TABLE tbl_musical_express (
    codigo_venta INT NOT NULL AUTO_INCREMENT,
    codigo_producto INT NOT NULL,
    precio_total DECIMAL(11,2) NOT NULL,
    codigo_metodo_pago VARCHAR(20) NOT NULL,
    numero_factura INT NOT NULL,
    fecha_venta DATE NOT NULL,
    id_cliente INT NOT NULL,
    id_vendedor INT NOT NULL,
    PRIMARY KEY (codigo_venta),
    FOREIGN KEY (codigo_producto) REFERENCES tbl_productos(codigo_producto),
    FOREIGN KEY (codigo_metodo_pago) REFERENCES tbl_metodo_pago(codigo_metodo_pago),
    FOREIGN KEY (id_cliente) REFERENCES tbl_clientes(id_cliente),
    FOREIGN KEY (id_vendedor) REFERENCES tbl_vendedor(id_vendedor)
);
INSERT INTO `tbl_musical_express` (`codigo_venta`, `codigo_producto`, `precio_total`, `codigo_metodo_pago`, `numero_factura`, `fecha_venta`, `id_cliente`, `id_vendedor`) VALUES (NULL, '1', '80000', '2', '1', '2024-11-06', '62554298', '45212655'), (NULL, '2', '280000', '4', '2', '2024-10-08', '36223541', '31254855'), (NULL, '3', '170200', '5', '3', '2024-11-08', '153264582', '102154268'), (NULL, '4', '330500', '2', '4', '2024-11-06', '32125412', '39554115'), (NULL, '5', '430800', '1', '5', '2024-11-04', '52114521', '45212655'), (NULL, '6', '7000', '4', '6', '2024-09-27', '21542165', '31254855'), (NULL, '7', '37500', '6', '7', '2024-11-01', '32125412', '1202458521'), (NULL, '8', '56000', '2', '8', '2024-10-17', '1215426521', '31254851'), (NULL, '9', '28200', '6', '9', '2024-10-31', '152369458', '31254851'), (NULL, '10', '14800', '4', '10', '2024-11-07', '52114521', '30215429'), (NULL, '11', '30000', '3', '11', '2024-10-28', '65221985', '62354125'), (NULL, '12', '75000', '4', '12', '2024-10-12', '62554298', '25413659'), (NULL, '13', '48000', '6', '13', '2024-11-03', '32125412', '125435586'), (NULL, '14', '110000', '1', '14', '2024-10-29', '62554298', '45212655');
INSERT INTO `tbl_musical_express` (`codigo_venta`, `codigo_producto`, `precio_total`, `codigo_metodo_pago`, `numero_factura`, `fecha_venta`, `id_cliente`, `id_vendedor`) VALUES (NULL, '8', '56000', '2', '15', '2024-11-02', '152369458', '39554115'), (NULL, '6', '7000', '4', '16', '2024-10-16', '152369458', '31254851'), (NULL, '13', '48000', '3', '17', '2024-10-03', '1215426521', '45212655'), (NULL, '10', '14800', '6', '18', '2024-10-25', '62554298', '25413659'), (NULL, '7', '37500', '4', '19', '2024-10-24', '36223541', '102154268'), (NULL, '6', '7000', '2', '20', '2024-11-02', '52114521', '39554115'), (NULL, '11', '30000', '3', '21', '2024-10-13', '32125412', '31254855'), (NULL, '11', '30000', '5', '22', '2024-11-05', '52114521', '31254851');
