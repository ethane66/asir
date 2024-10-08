--la página web va a mirar el saldo del cliente

select (select sum(d.cantidad * d.preciounidad) as totalpedidos from detallepedidos d
join pedidos p on p.codigopedido = d.codigopedido
where p.codigocliente = 39)
-
(select sum(cantidad) from pagos where codigocliente = 39) as totalsaldo from dual;

-- Si el campo totalsaldo de la consulta anterior es
-- menor o igual que 0, hago un ROLLBACK.
-- En otro caso, continua la transacción.

