create view V_CONTACTOS(nombreusuario, nombrecontacto) as
select u.nick,us.nick from CONTACTOS C join USUARIO U on c.usuario_telefono = u.telefono 
join usuario us on c.usuario_telefono1 = us.telefono
;

create view V_MENSAJESENVIADOSA(nombredestinatario,nombreemisor,textomensaje,recibido,leido) as
select lr.usuario_telefono, M.usuario_telefono, M.texto, lr.recibido, lr.leido 
from MENSAJE M join leido_recibido lr on lr.Mensaje_id_mensaje = M.id_mensaje
;

create view V_MENSAJESPORGRUPO(nombrechat,nombreemisor,textomensaje,cuantosrecibido,cuantosleido) as
select g.nombre, M.usuario_telefono , M.texto, sum(lr.recibido), sum(lr.leido) 
from grupo g full join mensaje M on 
;

create view V_GRUPOSDECHAT(nombrechat,cuantosintegrantes) as
select p.grupo_nombre, p.usuario_telefono 
from pertenece p join grupo g on p.grupo_nombre = g.nombre
join  usuario u on p.usuario_telefono = u.nick
;



select * from pertenece full join grupo;