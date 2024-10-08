--connect comercial;
lock table pedidos in exclusive mode;
insert into pedidos (codigopedido,fechapedido,fechaesperada,fechaentrega,estado,comentarios,codigocliente) values ('130','06/02/2023','10/02/2023','','Pendiente','','39');
lock table detallepedidos in exclusive mode;
insert into detallepedidos (codigopedido,codigoproducto,cantidad,preciounidad,numerolinea) values ('130','21636','10','14','3');

select d.cantidad * d.preciounidad as totalpedidos from detallepedidos d
join pedidos p on p.codigopedido = d.codigopedido
where p.codigocliente = 39
and d.codigoproducto=(select codigoproducto from productos
    where nombre like '%Ajedrea%');

lock table pagos in exclusive mode;
insert into pagos (codigocliente,formapago,idtransaccion,fechapago,cantidad) values ('39','PayPal','ak-std-000027','09/02/2023','50');

lock table productos in exclusive mode;
update productos set cantidadenstock = (select cantidadenstock from productos where lower (nombre) = 'pala') - (select cantidad from detallepedidos where codigopedido in '130') where lower(nombre) in 'pala';