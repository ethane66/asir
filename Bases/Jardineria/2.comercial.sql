--connect comercial;

Insert into clientes (codigocliente,nombrecliente,nombrecontacto,apellidocontacto,telefono,fax,lineadireccion1,lineadireccion2,ciudad,
region,pais,codigopostal,codigoempleadorepventas,limitecredito) values ('39','Pepe Gardens','Pepe','Lopez','666777888','666777889','Calle Piruleta','Madrid','Madrid','Madrid','España','27853','','5000');

update clientes set codigoempleadorepventas = (select codigoempleado from empleados where codigooficina in 'MAD-ES' and codigojefe in (Select codigojefe from empleados where codigooficina not in 'MAD-ES')) where nombrecliente = ('Pepe Gardens');