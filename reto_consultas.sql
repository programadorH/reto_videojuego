--🎮 1. ¿Cuáles son los productos de marca Sony?
SELECT id_producto, nombre, marca
FROM producto
WHERE marca = "sony";

--💰 2. ¿Cuáles productos cuestan más de $1.000.000?
SELECT nombre,marca, precio
FROM producto
WHERE precio > 1000000;

--📦 3. ¿Cuáles productos tienen menos de 10 unidades disponibles?
SELECT nombre, marca, stock
FROM producto
WHERE stock < 10;

--💳 4.Cuántas ventas se realizaron por cada método de pago?
SELECT metodo_pago, COUNT(*) AS cantidad_ventas
FROM venta
GROUP BY metodo_pago;

--🤑 5.¿Cuál es el producto más costoso?
SELECT nombre, marca, precio
FROM producto
ORDER BY precio DESC
LIMIT 1;

--🪙 ¿Cuál es el producto más económico?
SELECT nombre, marca, precio
FROM producto
ORDER BY precio ASC
LIMIT 1;

--📊 7.¿Cuál es el precio promedio de los productos?
SELECT AVG(precio) AS precio_promedio
FROM producto;

--👤 8.¿Qué cliente realizó cada venta?
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

--🎮 9.¿Qué producto aparece en cada detalle de venta?
SELECT
    vp.id_producto AS id_producto,
    p.nombre AS producto,
    vp.cantidad AS cantidad,
    vp.precio_unitario AS precio_unitario
FROM venta_producto vp

INNER JOIN producto p

    ON vp.id_producto = p.id_producto;

--🔥10. Muestre cliente, producto, categoría, cantidad y subtotal de cada venta.

SELECT
  vp.id_venta_producto AS id_venta_producto,
  v.id_venta AS id_venta,
  v.fecha AS fecha,
  c.nombre AS nombre,
  c.apellido AS apellido,
  p.nombre AS producto,
  p.marca AS marca,
  ctg.nombre AS nombre_categoria,
  vp.id_producto AS id_producto, 
  vp.cantidad AS cantidad,
  vp.precio_unitario AS precio_unitario,
  v.metodo_pago AS metodo_pago
  
FROM venta_producto vp

INNER JOIN venta v 

  ON vp.id_venta = v.id_venta  

INNER JOIN cliente c

  ON v.id_cliente = c.id_cliente

INNER JOIN producto p

  ON vp.id_producto = p.id_producto

INNER JOIN categoria ctg

  ON  p.id_categoria = ctg.id_categoria;

