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
    FOREIGN KEY (codigo_proveedor) REFERENCES tbl_proovedor(codigo_proveedor)
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

 CREATE TABLE tbl_proovedor(
    codigo_proveedor INT NOT NULL AUTO_INCREMENT,
    nombre_proveedor VARCHAR (35) NOT NULL,
    correo_proveedor VARCHAR (50) NOT NULL,
    telefono_proveedor INT (10) NOT NULL,
    direccion_cliente VARCHAR (50) NOT NULL,
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