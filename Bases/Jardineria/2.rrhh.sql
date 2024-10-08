--connect rrhh;

Insert into empleados (codigoempleado,nombre,apellido1,apellido2,extension,email,codigooficina,codigojefe,puesto) values ('32','Manolo',
'Bombo','','3333','mbombo@jardineria.es','MAD-ES','','');

--1 Asignar a todos los representados del empleado de mayor rango de madrid a Manolo Bombo
update clientes set codigoempleadorepventas = (select codigoempleado from empleados where nombre in 'Manolo' and apellido1 in 'Bombo') where codigoempleadorepventas = (select codigoempleado from empleados where codigooficina in 'MAD-ES' and codigojefe in (Select codigojefe from empleados where codigooficina not in 'MAD-ES'));
--2 Los empleados que dependıan del jefe de Madrid dependeran de Manolo Bombo.
update empleados set codigojefe = (select codigoempleado from empleados where nombre in 'Manolo' and apellido1 in 'Bombo') where codigojefe in (select codigoempleado from empleados where codigooficina in 'MAD-ES' and codigojefe in (Select codigojefe from empleados where codigooficina not in 'MAD-ES'));
--3 Poner el jefe del empleado de mayor rango como jefe de manolo bombo
update empleados set codigojefe = (select codigojefe from empleados where codigooficina in 'MAD-ES' and codigojefe in (Select codigojefe from empleados where codigooficina not in 'MAD-ES')) where nombre = ('Manolo') and apellido1 =('Bombo');
--4 Cambiar al jefe de mayor rango de MADRID a BARCELONA
update empleados set codigooficina = 'BCN-ES' where codigoempleado in (select codigoempleado from empleados where codigooficina in 'MAD-ES' and codigojefe in (Select codigojefe from empleados where codigooficina not in 'MAD-ES')) and nombre not in 'Manolo' and apellido1 not in 'Bombo';

