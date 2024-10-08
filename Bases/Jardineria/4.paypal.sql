--connect contabilidad
select 
(select sum(d.cantidad * d.preciounidad) as resultado from pedidos p 
join detallepedidos d on p.codigopedido = d.codigopedido where codigocliente=(select codigocliente from clientes where nombrecliente='Pepe Gardens')) 
-
(select cantidad from pagos where codigocliente='39') as saldo from dual for update;

-- Si el campo totalsaldo de la consulta anterior es
-- menor o igual que 0, hago un ROLLBACK.
-- En otro caso, continua la transaccion.

select d.cantidad * d.preciounidad as totalpedidos from detallepedidos d
join pedidos p on p.codigopedido = d.codigopedido
where p.codigocliente = 39 and d.codigoproducto = (select codigoproducto from productos where nombre like '%Pala%');

lock table pagos in exclusive mode;
insert into pagos values(39, 'PayPal', 'ak-std-000028', '09/02/22', '140');












