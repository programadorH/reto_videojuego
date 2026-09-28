# 🎮 MySQL — Tienda de Consolas y Videojuegos

En esta práctica trabajaremos con una base de datos de una **tienda especializada en consolas, videojuegos y accesorios gaming**.

La información se encuentra distribuida en las siguientes tablas:

* 🗂️ `categoria`
* 🎮 `producto`
* 👤 `cliente`
* 🧾 `venta`
* 🔗 `venta_producto`

> 💡 `venta_producto` funciona como tabla intermedia entre `venta` y `producto`.

---

# 📥 1. Inserción de datos

## 🗂️ Categorías

```sql
INSERT INTO categoria (nombre, descripcion, estado) VALUES
('Consolas PlayStation', 'Consolas de Sony', 'ACTIVA'),
('Consolas Xbox', 'Consolas de Microsoft', 'ACTIVA'),
('Consolas Nintendo', 'Consolas de Nintendo', 'ACTIVA'),
('Controles PlayStation', 'Controles compatibles con PlayStation', 'ACTIVA'),
('Controles Xbox', 'Controles compatibles con Xbox', 'ACTIVA'),
('Controles Nintendo', 'Controles compatibles con Nintendo', 'ACTIVA'),
('Videojuegos PS5', 'Juegos para PlayStation 5', 'ACTIVA'),
('Videojuegos Xbox', 'Juegos para Xbox Series', 'ACTIVA'),
('Videojuegos Switch', 'Juegos para Nintendo Switch', 'ACTIVA'),
('Audifonos Gaming', 'Audifonos especializados para videojuegos', 'ACTIVA'),
('Teclados Gaming', 'Teclados mecanicos para jugadores', 'ACTIVA'),
('Mouse Gaming', 'Mouse especializados para gaming', 'ACTIVA'),
('Monitores Gaming', 'Monitores de alta frecuencia', 'ACTIVA'),
('Sillas Gaming', 'Sillas ergonomicas para jugadores', 'ACTIVA'),
('Microfonos', 'Microfonos para streaming', 'ACTIVA'),
('Webcams', 'Camaras para streaming', 'ACTIVA'),
('Capturadoras', 'Dispositivos de captura de video', 'ACTIVA'),
('Memorias', 'Almacenamiento externo para consolas', 'ACTIVA'),
('Discos SSD', 'Discos de estado solido', 'ACTIVA'),
('Bases Consola', 'Bases y soportes para consola', 'ACTIVA'),
('Cables HDMI', 'Cables HDMI de alta velocidad', 'ACTIVA'),
('Cargadores', 'Cargadores para controles', 'ACTIVA'),
('Baterias', 'Baterias recargables', 'ACTIVA'),
('Volantes Gaming', 'Volantes para simuladores', 'ACTIVA'),
('Pedales Gaming', 'Pedales para simulacion', 'ACTIVA'),
('Joysticks', 'Controles para simuladores de vuelo', 'ACTIVA'),
('Accesorios PS5', 'Accesorios para PlayStation 5', 'ACTIVA'),
('Accesorios Xbox', 'Accesorios para Xbox', 'ACTIVA'),
('Accesorios Switch', 'Accesorios para Nintendo Switch', 'ACTIVA'),
('Realidad Virtual', 'Dispositivos de realidad virtual', 'ACTIVA'),
('Streaming', 'Accesorios para creadores de contenido', 'ACTIVA'),
('Figuras', 'Figuras coleccionables', 'ACTIVA'),
('Amiibo', 'Figuras Amiibo Nintendo', 'ACTIVA'),
('Tarjetas PSN', 'Tarjetas digitales PlayStation', 'ACTIVA'),
('Tarjetas Xbox', 'Tarjetas digitales Xbox', 'ACTIVA'),
('Tarjetas Nintendo', 'Tarjetas digitales Nintendo', 'ACTIVA'),
('Suscripciones', 'Servicios de videojuegos', 'ACTIVA'),
('Fundas', 'Fundas protectoras', 'ACTIVA'),
('Protectores', 'Protectores de pantalla', 'ACTIVA'),
('Repuestos', 'Repuestos para consolas', 'ACTIVA'),
('Adaptadores', 'Adaptadores para dispositivos gaming', 'ACTIVA'),
('Luces RGB', 'Iluminacion para espacios gaming', 'ACTIVA'),
('Escritorios Gaming', 'Escritorios para estaciones gaming', 'ACTIVA'),
('Parlantes', 'Parlantes para videojuegos', 'ACTIVA'),
('Routers Gaming', 'Routers optimizados para gaming', 'ACTIVA'),
('UPS', 'Sistemas de respaldo electrico', 'ACTIVA'),
('PC Gaming', 'Computadores para videojuegos', 'ACTIVA'),
('Portatiles Gaming', 'Portatiles para videojuegos', 'ACTIVA'),
('Merchandising', 'Productos oficiales de videojuegos', 'ACTIVA'),
('Coleccionables', 'Articulos coleccionables gaming', 'ACTIVA');
```

---

## 🎮 Productos

```sql
INSERT INTO producto
(nombre, marca, precio, stock, id_categoria)
VALUES
('PlayStation 5 Slim', 'Sony', 2499000, 15, 1),
('Xbox Series X', 'Microsoft', 2399000, 12, 2),
('Nintendo Switch OLED', 'Nintendo', 1599000, 20, 3),
('DualSense Blanco', 'Sony', 319900, 30, 4),
('Xbox Wireless Controller', 'Microsoft', 289900, 25, 5),
('Joy-Con Neon', 'Nintendo', 349900, 18, 6),
('Spider-Man 2', 'Sony', 299900, 22, 7),
('Forza Motorsport', 'Microsoft', 259900, 17, 8),
('Mario Kart 8 Deluxe', 'Nintendo', 249900, 28, 9),
('Cloud II', 'HyperX', 349900, 14, 10),
('BlackWidow V4', 'Razer', 599900, 10, 11),
('G502 Hero', 'Logitech', 239900, 25, 12),
('Odyssey G5', 'Samsung', 1499900, 8, 13),
('T3 Rush', 'Corsair', 1299900, 7, 14),
('QuadCast', 'HyperX', 549900, 12, 15),
('C920 HD Pro', 'Logitech', 399900, 15, 16),
('HD60 X', 'Elgato', 899900, 9, 17),
('Game Drive 2TB', 'Seagate', 459900, 13, 18),
('SN850X 1TB', 'Western Digital', 489900, 16, 19),
('Base Vertical PS5', 'Sony', 159900, 20, 20),
('HDMI 2.1 2 Metros', 'Belkin', 89900, 40, 21),
('Base Carga DualSense', 'Sony', 189900, 18, 22),
('Bateria Xbox Recargable', 'Microsoft', 119900, 22, 23),
('G923 Racing Wheel', 'Logitech', 1599900, 6, 24),
('Pedales T-LCM', 'Thrustmaster', 1099900, 5, 25),
('T16000M', 'Thrustmaster', 799900, 8, 26),
('Media Remote PS5', 'Sony', 149900, 14, 27),
('Headset Xbox', 'Microsoft', 399900, 11, 28),
('Pro Controller Switch', 'Nintendo', 329900, 19, 29),
('Meta Quest 3', 'Meta', 2399900, 7, 30),
('Stream Deck MK2', 'Elgato', 699900, 10, 31),
('Figura Kratos', 'Sony', 249900, 9, 32),
('Amiibo Link', 'Nintendo', 129900, 16, 33),
('Tarjeta PSN 100000', 'Sony', 100000, 50, 34),
('Tarjeta Xbox 100000', 'Microsoft', 100000, 50, 35),
('Tarjeta Nintendo 100000', 'Nintendo', 100000, 50, 36),
('Game Pass Ultimate', 'Microsoft', 59900, 40, 37),
('Funda Nintendo Switch', 'Nintendo', 99900, 25, 38),
('Protector Switch OLED', 'Hori', 59900, 30, 39),
('Ventilador PS5', 'Generic', 119900, 12, 40),
('Adaptador USB C', 'UGREEN', 89900, 24, 41),
('Tira LED RGB', 'Govee', 139900, 20, 42),
('Escritorio Gaming Z1', 'Cougar', 1099900, 5, 43),
('G560 Speakers', 'Logitech', 849900, 7, 44),
('Archer GX90', 'TP-Link', 999900, 6, 45),
('UPS 1200VA', 'APC', 599900, 10, 46),
('ROG Gaming Desktop', 'Asus', 6499900, 4, 47),
('Nitro 5', 'Acer', 4299900, 6, 48),
('Camiseta Zelda', 'Nintendo', 119900, 25, 49),
('Figura Master Chief', 'Microsoft', 279900, 10, 50);
```

---

## 👤 Clientes

```sql
INSERT INTO cliente
(nombre, apellido, correo, telefono)
VALUES
('Carlos', 'Gomez', 'carlos.gomez@gmail.com', '3001000001'),
('Laura', 'Martinez', 'laura.martinez@gmail.com', '3001000002'),
('Andres', 'Lopez', 'andres.lopez@gmail.com', '3001000003'),
('Sofia', 'Ramirez', 'sofia.ramirez@gmail.com', '3001000004'),
('Mateo', 'Torres', 'mateo.torres@gmail.com', '3001000005'),
('Valentina', 'Ruiz', 'valentina.ruiz@gmail.com', '3001000006'),
('Daniel', 'Castro', 'daniel.castro@gmail.com', '3001000007'),
('Camila', 'Restrepo', 'camila.restrepo@gmail.com', '3001000008'),
('Santiago', 'Velez', 'santiago.velez@gmail.com', '3001000009'),
('Mariana', 'Cardona', 'mariana.cardona@gmail.com', '3001000010');
```

> 📌 Continúe insertando los demás clientes de acuerdo con el archivo de datos entregado.

---

## 🧾 Ventas

```sql
INSERT INTO venta
(fecha, total, metodo_pago, id_cliente)
VALUES
('2026-01-05', 2499000, 'Tarjeta credito', 1),
('2026-01-08', 2399000, 'Transferencia', 2),
('2026-01-12', 1599000, 'Tarjeta debito', 3),
('2026-01-15', 319900, 'Efectivo', 4),
('2026-01-20', 289900, 'Transferencia', 5),
('2026-01-25', 349900, 'Tarjeta credito', 6),
('2026-02-02', 299900, 'Tarjeta debito', 7),
('2026-02-05', 259900, 'Efectivo', 8),
('2026-02-09', 249900, 'Transferencia', 9),
('2026-02-15', 349900, 'Tarjeta credito', 10);
```

> 📌 Continúe con las demás ventas usando los datos proporcionados.

---

## 🔗 Detalle de las ventas

La tabla `venta_producto` conecta las ventas con los productos.

```sql
INSERT INTO venta_producto
(id_venta, id_producto, cantidad, precio_unitario)
VALUES
(1, 1, 1, 2499000),
(2, 2, 1, 2399000),
(3, 3, 1, 1599000),
(4, 4, 1, 319900),
(5, 5, 1, 289900),
(6, 6, 1, 349900),
(7, 7, 1, 299900),
(8, 8, 1, 259900),
(9, 9, 1, 249900),
(10, 10, 1, 349900);
```

> 💡 El campo `id_detalle` no se incluye porque es `AUTO_INCREMENT`.

---

# 🔍 2. Consultas básicas con SELECT

## 👀 Mostrar todos los registros

```sql
SELECT * FROM categoria;

SELECT * FROM producto;

SELECT * FROM cliente;

SELECT * FROM venta;

SELECT * FROM venta_producto;
```

---

# 🎯 3. Seleccionar columnas específicas

```sql
SELECT nombre, marca, precio
FROM producto;
```

```sql
SELECT nombre, apellido, correo
FROM cliente;
```

```sql
SELECT fecha, total, metodo_pago
FROM venta;
```

---

# 🏷️ 4. Alias con AS

Los alias permiten cambiar temporalmente el nombre de una columna en el resultado.

```sql
SELECT
    nombre AS producto,
    marca AS fabricante,
    precio AS valor
FROM producto;
```

---

# 🔎 5. Filtrar con WHERE

## Productos Sony

```sql
SELECT *
FROM producto
WHERE marca = 'Sony';
```

## Productos superiores a $1.000.000

```sql
SELECT *
FROM producto
WHERE precio > 1000000;
```

## Productos con poco stock

```sql
SELECT *
FROM producto
WHERE stock < 10;
```

## Ventas realizadas en efectivo

```sql
SELECT *
FROM venta
WHERE metodo_pago = 'Efectivo';
```

---

# 🧠 6. Operadores AND y OR

## Productos Sony con precio superior a $500.000

```sql
SELECT *
FROM producto
WHERE marca = 'Sony'
AND precio > 500000;
```

## Productos Nintendo o Microsoft

```sql
SELECT *
FROM producto
WHERE marca = 'Nintendo'
OR marca = 'Microsoft';
```

---

# 📏 7. BETWEEN

Permite buscar valores dentro de un rango.

```sql
SELECT *
FROM producto
WHERE precio BETWEEN 200000 AND 1000000;
```

```sql
SELECT *
FROM venta
WHERE fecha BETWEEN '2026-01-01' AND '2026-03-31';
```

---

# 📋 8. IN

Permite comparar una columna contra varios valores.

```sql
SELECT *
FROM producto
WHERE marca IN ('Sony', 'Microsoft', 'Nintendo');
```

```sql
SELECT *
FROM venta
WHERE metodo_pago IN ('Efectivo', 'Transferencia');
```

---

# 🔤 9. LIKE

## Nombres que empiezan por M

```sql
SELECT *
FROM cliente
WHERE nombre LIKE 'M%';
```

## Productos que contienen la palabra Gaming

```sql
SELECT *
FROM producto
WHERE nombre LIKE '%Gaming%';
```

## Correos de Gmail

```sql
SELECT *
FROM cliente
WHERE correo LIKE '%gmail.com';
```

---

# ↕️ 10. ORDER BY

## Menor a mayor precio

```sql
SELECT *
FROM producto
ORDER BY precio ASC;
```

## Mayor a menor precio

```sql
SELECT *
FROM producto
ORDER BY precio DESC;
```

## Ventas más recientes primero

```sql
SELECT *
FROM venta
ORDER BY fecha DESC;
```

---

# 🔢 11. LIMIT

Mostrar únicamente los primeros 5 productos.

```sql
SELECT *
FROM producto
LIMIT 5;
```

Mostrar los 10 productos más costosos.

```sql
SELECT *
FROM producto
ORDER BY precio DESC
LIMIT 10;
```

---

# ♻️ 12. DISTINCT

Mostrar las marcas existentes sin repetir.

```sql
SELECT DISTINCT marca
FROM producto;
```

Mostrar los métodos de pago disponibles.

```sql
SELECT DISTINCT metodo_pago
FROM venta;
```

---

# 🧮 13. Funciones de agregación

## COUNT

```sql
SELECT COUNT(*) AS total_productos
FROM producto;
```

```sql
SELECT COUNT(*) AS total_clientes
FROM cliente;
```

---

## SUM

```sql
SELECT SUM(total) AS total_ventas
FROM venta;
```

```sql
SELECT SUM(stock) AS unidades_disponibles
FROM producto;
```

---

## AVG

```sql
SELECT AVG(precio) AS precio_promedio
FROM producto;
```

```sql
SELECT AVG(total) AS promedio_venta
FROM venta;
```

---

## MAX

```sql
SELECT MAX(precio) AS precio_mayor
FROM producto;
```

---

## MIN

```sql
SELECT MIN(precio) AS precio_menor
FROM producto;
```

---

# 📊 14. GROUP BY

## Cantidad de productos por marca

```sql
SELECT
    marca,
    COUNT(*) AS cantidad_productos
FROM producto
GROUP BY marca;
```

## Cantidad de ventas por método de pago

```sql
SELECT
    metodo_pago,
    COUNT(*) AS cantidad_ventas
FROM venta
GROUP BY metodo_pago;
```

## Total vendido por método de pago

```sql
SELECT
    metodo_pago,
    SUM(total) AS total_vendido
FROM venta
GROUP BY metodo_pago;
```

---

# 🎯 15. HAVING

`HAVING` permite filtrar los resultados obtenidos después de realizar una agrupación.

```sql
SELECT
    marca,
    COUNT(*) AS cantidad
FROM producto
GROUP BY marca
HAVING COUNT(*) >= 2;
```

---

# ➗ 16. Operaciones entre columnas

Podemos realizar cálculos directamente en un `SELECT`.

```sql
SELECT
    id_detalle,
    cantidad,
    precio_unitario,
    cantidad * precio_unitario AS subtotal
FROM venta_producto;
```

---

# 👤 17. CONCAT

Permite unir información de varias columnas.

```sql
SELECT
    id_cliente,
    CONCAT(nombre, ' ', apellido) AS nombre_completo,
    correo
FROM cliente;
```

---

# 🔗 18. INNER JOIN

Un `INNER JOIN` permite consultar información almacenada en diferentes tablas relacionadas.

---

## 🎮 Producto + Categoría

```sql
SELECT
    p.id_producto,
    p.nombre AS producto,
    p.marca,
    p.precio,
    c.nombre AS categoria
FROM producto p

INNER JOIN categoria c
    ON p.id_categoria = c.id_categoria;
```

---

## 🧾 Venta + Cliente

```sql
SELECT
    v.id_venta,
    v.fecha,
    v.total,
    v.metodo_pago,
    c.nombre,
    c.apellido
FROM venta v

INNER JOIN cliente c
    ON v.id_cliente = c.id_cliente;
```

---

## 🎮 Detalle + Producto

```sql
SELECT
    vp.id_detalle,
    p.nombre AS producto,
    vp.cantidad,
    vp.precio_unitario,
    vp.cantidad * vp.precio_unitario AS subtotal
FROM venta_producto vp

INNER JOIN producto p
    ON vp.id_producto = p.id_producto;
```

---

# 🔗 19. INNER JOIN con 3 tablas

## Cliente + Venta + Detalle

```sql
SELECT
    v.id_venta,
    v.fecha,

    CONCAT(
        c.nombre,
        ' ',
        c.apellido
    ) AS cliente,

    vp.cantidad,
    vp.precio_unitario

FROM venta v

INNER JOIN cliente c
    ON v.id_cliente = c.id_cliente

INNER JOIN venta_producto vp
    ON v.id_venta = vp.id_venta;
```

---

# 🚀 20. INNER JOIN con 4 tablas

## Cliente + Venta + Detalle + Producto

```sql
SELECT
    v.id_venta,
    v.fecha,

    CONCAT(
        c.nombre,
        ' ',
        c.apellido
    ) AS cliente,

    p.nombre AS producto,
    p.marca,

    vp.cantidad,
    vp.precio_unitario,

    vp.cantidad * vp.precio_unitario AS subtotal

FROM venta v

INNER JOIN cliente c
    ON v.id_cliente = c.id_cliente

INNER JOIN venta_producto vp
    ON v.id_venta = vp.id_venta

INNER JOIN producto p
    ON vp.id_producto = p.id_producto;
```

---

# 🏆 21. INNER JOIN completo — 5 tablas

Esta consulta reúne prácticamente toda la información disponible en la base de datos.

```sql
SELECT
    vp.id_detalle,

    v.id_venta,
    v.fecha,

    CONCAT(
        c.nombre,
        ' ',
        c.apellido
    ) AS cliente,

    p.nombre AS producto,
    p.marca,

    cat.nombre AS categoria,

    vp.cantidad,
    vp.precio_unitario,

    vp.cantidad * vp.precio_unitario AS subtotal,

    v.metodo_pago

FROM venta_producto vp

INNER JOIN venta v
    ON vp.id_venta = v.id_venta

INNER JOIN cliente c
    ON v.id_cliente = c.id_cliente

INNER JOIN producto p
    ON vp.id_producto = p.id_producto

INNER JOIN categoria cat
    ON p.id_categoria = cat.id_categoria

ORDER BY v.id_venta;
```

---

# 🧩 Ruta recomendada de aprendizaje

Para trabajar las consultas SQL, seguiremos este orden:

```text
SELECT
   ↓
WHERE
   ↓
AND / OR
   ↓
BETWEEN / IN / LIKE
   ↓
ORDER BY
   ↓
LIMIT
   ↓
COUNT / SUM / AVG / MAX / MIN
   ↓
GROUP BY
   ↓
HAVING
   ↓
INNER JOIN
   ↓
INNER JOIN con múltiples tablas
```

---

# 🎯 Reto para practicar

Construya consultas SQL que permitan responder las siguientes preguntas:

1. 🎮 ¿Cuáles son los productos de marca Sony?
2. 💰 ¿Cuáles productos cuestan más de $1.000.000?
3. 📦 ¿Cuáles productos tienen menos de 10 unidades disponibles?
4. 💳 ¿Cuántas ventas se realizaron por cada método de pago?
5. 🤑 ¿Cuál es el producto más costoso?
6. 🪙 ¿Cuál es el producto más económico?
7. 📊 ¿Cuál es el precio promedio de los productos?
8. 👤 ¿Qué cliente realizó cada venta?
9. 🎮 ¿Qué producto aparece en cada detalle de venta?
10. 🔥 Muestre cliente, producto, categoría, cantidad y subtotal de cada venta.

> 💡 **Consejo:** primero identifique qué información necesita y después determine en qué tabla se encuentra.

🚀 **No se trata solo de escribir SQL: se trata de aprender a hacerle preguntas a los datos.**
