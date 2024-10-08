--COMERCIAL
Insert into clientes (codigocliente,nombrecliente,nombrecontacto,apellidocontacto,telefono,fax,lineadireccion1,lineadireccion2,ciudad,
region,pais,codigopostal,codigoempleadorepventas,limitecredito) values ('39','Pepe Gardens','Pepe','Lopez','666777888','666777889','Calle Piruleta','Madrid','Madrid','Madrid','España','27853','','5000');

update clientes set codigoempleadorepventas = (select codigoempleado from empleados where codigooficina in 'MAD-ES' and codigojefe in (Select codigojefe from empleados where codigooficina not in 'MAD-ES')) where nombrecliente = ('Pepe Gardens');

--RRHH
Insert into empleados (codigoempleado,nombre,apellido1,apellido2,extension,email,codigooficina,codigojefe,puesto) values ('32','Manolo','Bombo','','3333','mbombo@jardineria.es','MAD-ES','','');

1--Asignar a todos los representados del empleado de mayor rango de madrid a Manolo Bombo
update clientes set codigoempleadorepventas = (select codigoempleado from empleados where nombre in 'Manolo' and apellido1 in 'Bombo') where codigoempleadorepventas = (select codigoempleado from empleados where codigooficina in 'MAD-ES' and codigojefe in (Select codigojefe from empleados where codigooficina not in 'MAD-ES'));
2--Los empleados que dependıan del jefe de Madrid dependeran de Manolo Bombo.
update empleados set codigojefe = (select codigoempleado from empleados where nombre in 'Manolo' and apellido1 in 'Bombo') where codigojefe in (select codigoempleado from empleados where codigooficina in 'MAD-ES' and codigojefe in (Select codigojefe from empleados where codigooficina not in 'MAD-ES'));
3--Poner el jefe del empleado de mayor rango como jefe de manolo bombo
update empleados set codigojefe = (select codigojefe from empleados where codigooficina in 'MAD-ES' and codigojefe in (Select codigojefe from empleados where codigooficina not in 'MAD-ES')) where nombre = ('Manolo') and apellido1 =('Bombo');
4--Cambiar al jefe de mayor rango de MADRID a BARCELONA
update empleados set codigooficina = 'BCN-ES' where codigoempleado in (select codigoempleado from empleados where codigooficina in 'MAD-ES' and codigojefe in (Select codigojefe from empleados where codigooficina not in 'MAD-ES')) and nombre not in 'Manolo' and apellido1 not in 'Bombo';

--Informatica

alter table productos add constraint CK_Cantidadenstock
check (cantidadenstock >=0);

--comercial
select cantidadenstock from productos where lower (nombre) in 'ajedrea';

insert into pedidos (codigopedido,fechapedido,fechaesperada,fechaentrega,estado,comentarios,codigocliente) values ('129','06/02/2023','10/02/2023','','Pendiente','','39');
insert into detallepedidos (codigopedido,codigoproducto,cantidad,preciounidad,numerolinea) values ('129','AR-001','50','1','3');

update productos set cantidadenstock = (select cantidadenstock from productos where lower (nombre) = 'ajedrea') - (select cantidad from detallepedidos where codigopedido in '129') where lower(nombre) in 'ajedrea';

update productos set cantidadenstock = (select cantidadenstock from productos where lower (nombre) = 'ajedrea') - '140' where lower(nombre) in 'ajedrea';

insert into pedidos (codigopedido,fechapedido,fechaesperada,fechaentrega,estado,comentarios,codigocliente) values ('130','06/02/2023','10/02/2023','','Pendiente','','39');
insert into detallepedidos (codigopedido,codigoproducto,cantidad,preciounidad,numerolinea) values ('130','21636','10','14','3');

update productos set cantidadenstock = (select cantidadenstock from productos where lower (nombre) = 'pala') - (select cantidad from detallepedidos where codigopedido in '130') where lower(nombre) in 'pala';
