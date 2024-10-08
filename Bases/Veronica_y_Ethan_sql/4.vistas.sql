--VISTA CONTACTOS
create view V_CONTACTOS(nombreusuario, nombrecontacto) as
select u.nick nombreusuario,us.nick nombrecontacto from CONTACTOS C join USUARIO U on c.usuario_telefono = u.telefono 
join usuario us on c.usuario_telefono1 = us.telefono
;
--VISTA MENSAJESENVIADOSA
create view V_MENSAJESENVIADOSA(nombredestinatario,nombreemisor,textomensaje,recibido,leido) as
with arreglo as (select * from usuario)
select u.nick nombredestinatario,us.nick nombreemisor, M.texto textomensaje, lr.recibido recibido, lr.leido leido
from MENSAJE M 
join leido_recibido lr on lr.Mensaje_id_mensaje = M.id_mensaje
join usuario u on lr.usuario_telefono = u.telefono
join arreglo us on us.telefono = M.usuario_telefono 
;
--VISTA MENSAJESPORGRUPO
create view V_MENSAJESPORGRUPO(nombrechat,nombreemisor,textomensaje,cuantosrecibido,cuantosleido) as
select s.grupo_nombre nombrechat, us.nick nombreemisor, M.texto textomensaje, sum(lr.recibido) cuantosrecibido, sum(lr.leido) cuantosleido 
from mensaje M on M.usuario_telefono =
join sms s on s.grupo_nombre = g.nombre
inner join leido_recibido lr on lr.Mensaje_id_mensaje = M.id_mensaje
inner join usuario us on us.telefono = M.usuario_telefono 
group by s.grupo_nombre, us.nick, M.texto
;

--VISTA GRUPOSDECHAT
create view V_GRUPOSDECHAT(nombrechat,cuantosintegrantes) as
select p.grupo_nombre, count(p.usuario_telefono)
from grupo g join pertenece p on p.grupo_nombre = g.nombre
group by grupo_nombre
;