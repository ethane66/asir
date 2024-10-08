--connect comercial;

select cantidadenstock from productos where lower (nombre) in 'ajedrea' for update;

lock table pedidos in exclusive mode;
insert into pedidos (codigopedido,fechapedido,fechaesperada,fechaentrega,estado,comentarios,codigocliente) values ('129','06/02/2023','10/02/2023','','Pendiente','','39');
lock table detallepedidos in exclusive mode;
insert into detallepedidos (codigopedido,codigoproducto,cantidad,preciounidad,numerolinea) values ('129','AR-001','50','1','3');
lock table productos in exclusive mode;
update productos set cantidadenstock = (select cantidadenstock from productos where lower (nombre) = 'ajedrea') - (select cantidad from detallepedidos where codigopedido in '129') where lower(nombre) in 'ajedrea';

-- Si el campo cantidadenstock del anterior update es
-- menor que la cantidad de producto que se quiere pedir, hago un ROLLBACK.
-- En otro caso, continua la transaccion. 

--Error que empieza en la línea: 32 del comando :
--update productos set cantidadenstock = (select cantidadenstock from productos where lower (nombre) = 'ajedrea') - '140' where lower(nombre) in 'ajedrea'
--Informe de error -
--ORA-02290: restricción de control (JOSELOPEZ16.CK_CANTIDADENSTOCK) violada