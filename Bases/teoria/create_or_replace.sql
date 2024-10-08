
//////////BLOQUE ANÓNIMO//////////////////////////////////////////////////////////////////////////////////////////

select * from pepe where nombre='a';

SET SERVEROUTPUT ON;
begin
  dbms_output.put_line('Hola');
END;
/

//////////VARIABLES///////////////////////////////////////////////////////////////////////////////////////////////    

SET SERVEROUTPUT ON;

DECLARE
  msg varchar(255);
BEGIN
  msg := 'Hola';
  dbms_output.put_line(msg);
END;
/

//////////LISTAR CLIENTES/////////////////////////////////////////////////////////////////////////////////////////

create or replace nomeditionable procedure listar_cliente(p_codigocliente varchar)
    v_nombre clientes.nombrecliente%type;
    v_telefono clientes.telefono%type;
    v_existe numeric(1);
begin 
    select count(*) into v_existe from clientes where codigocliente=p_codigocliente;
    if v_existe = 1 then 
        select nombrecliente, telefono into v_nombre, v_telefono from clientes where codigocliente=p_codigocliente
        dbms_output.put_line( p_codigocliente || 'Nombre: ' || v_nombre || ' '|| v_telefono);
    else
        dbms_output.put_line( p_codigocliente || 'No existe ' );
    end if;
end;
/
--Poniendolo bonito

        dbms_output.put_line( lpad(p_codigocliente,3) || 'Nombre: ' || rpad(v_nombre,20) || ' '|| lpad(v_telefono,15));
    else
        dbms_output.put_line( lpad(p_codigocliente,3) || 'No existe ' );

--Sacar uno
begin 
    listar_cliente(4);
end;
/
--Listar del 1 al 1000
begin 
    dbms_output.put_line('listado');
    for c in 0..1000 loop
        listar_cliente(c);
    end loop;
end;
/
//////////VALOR/////////////////////////////////////////////////////////////////////////////////////////////////////
--El qué puede ser un valor ?
valor = variable
        número
        cadena ''
        valor + valor
              -
              /         --> 5(4+3)
              *
        (valor)
        función = nombre (valor, valor)
        (select 1x1)
//////////PRODUCTO CON PLANTILLA/////////////////////////////////////////////////////////////////////////////////////

--Crear un producto con plantilla
--El nuevo producto copia todo menos el codigo y el nombre
--El stock lo deja a cero

create or replace procedure nuevo_producto_con_plantilla(
    codigoproductoplantilla productos.codigoproductos%type,
    codigoproductonuevo productos.codigoproductos%type,
    nombrenuevo productos.nombre%type, 
)
as
    plantilla productos%rowtype;
begin
--LEO LA PLANTILLA
select * into plantilla from productos where codigoproducto = codigoproductoplantilla;
--CAMBIO LA PLANTILLA
    plantilla.codigoproducto := codigoproductonuevo;
    plantilla.nombre := nombrenuevo;
    plantilla.cantidadenstock := 0;
--INSERTO EL PRODUCTO NUEVO
    insert into productos values plantilla;
end;
/

select * from productos;

begin 

--ASIGNA BECARIO A EMPLEADO 
--COMPARTEN EL PUESTO, LA OFICINA, EL MAIL, EL TELÉFONO, EL JEFE...
--SOLO CAMBIA EL CÓDIGO, NOMBRE Y APELLIDOS

--sugerencias
create or replace procedure nuevo_becario(
    empleadoexistente empleados.codigoempleado%type,
    empleadonuevo empleados.codigoempleado%type,
    nombrenuevo empleados.nombre%type, 
    apellido1nuevo empleados.apellido1%type, 
    apellido2nuevo empleados.apellido2%type, 
)
as
    plantilla empleados%rowtype;
    cuantos numeric(10);
begin
--LEO LA PLANTILLA
select count(*) into cuantos from empleados where codigoempleado = codigoempleadoexistente;
if cuantos <> 1 then   
    dbms_output.put_line('El empleado no existe:'|| empleadoexistente );
    return;
 end if ;

select count(*) into cuantos from empleados where codigoempleado = codigoempleadoexistente;
if cuantos <> 0 then   
    dbms_output.put_line('El empleado ya existe:'|| empleadonuevo );
    return;
 end if ;

--CAMBIO LA PLANTILLA
    plantilla.codigoempleado := empleadonuevo;
    plantilla.nombre := nombrenuevo;
    plantilla.apellido1 := apellido1nuevo;
    plantilla.apellido2 := apellido2nuevo;
    plantilla.puesto := 'Becario de ' || plantilla.puesto;
--INSERTO EL PRODUCTO NUEVO
    insert into empleados values plantilla;

exception 
    when DUP_VAL_ON_INDEX then
    dbms_output.put_line('Ya hay un empleado con ese código:'|| empleadonuevo );
    when NO_DATA_FOUND then 
    dbms_output.put_line('No
     hay un empleado con ese código:'|| empleadoexistente );

end;
/

set SERVEROUTPUT on ;

select * from empleados;
rollback;
begin 
    nuevo_becario(1,2,'pepa','perez','garcia');
end;
/

--FUNCION QUE DEVUELVA LA MEDIA DEL PRECIO DE VENTA DE UNA GAMA DE PRODUCTOS
--

select precio_medio_de_gama ('hola') from dual;
select precio_medio_de_gama ('Ornamentales') from dual;
