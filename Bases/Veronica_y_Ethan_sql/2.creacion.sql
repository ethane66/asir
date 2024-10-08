CREATE TABLE contactos (
    usuario_telefono  NUMBER(9) NOT NULL,
    usuario_telefono1 NUMBER(9) NOT NULL
);

ALTER TABLE contactos ADD CONSTRAINT contactos_pk PRIMARY KEY ( usuario_telefono,
                                                                usuario_telefono1 );

CREATE TABLE grupo (
    nombre           VARCHAR2(30) NOT NULL,
    usuario_telefono NUMBER(9) NOT NULL
);

ALTER TABLE grupo ADD CONSTRAINT grupo_pk PRIMARY KEY ( nombre );

CREATE TABLE leido_recibido (
    usuario_telefono   NUMBER(9) NOT NULL,
    mensaje_id_mensaje NUMBER NOT NULL,
    leido              CHAR(1),
    recibido           CHAR(1)
);

ALTER TABLE leido_recibido ADD CONSTRAINT leido_recibido_pk PRIMARY KEY ( usuario_telefono,
                                                                          mensaje_id_mensaje );

CREATE TABLE mensaje (
    texto            VARCHAR2(1000),
    id_mensaje       NUMBER NOT NULL,
    usuario_telefono NUMBER(9)
);

ALTER TABLE mensaje ADD CONSTRAINT mensaje_pk PRIMARY KEY ( id_mensaje );

CREATE TABLE pertenece (
    usuario_telefono NUMBER(9) NOT NULL,
    grupo_nombre     VARCHAR2(30) NOT NULL
);

ALTER TABLE pertenece ADD CONSTRAINT pertenece_pk PRIMARY KEY ( usuario_telefono,
                                                                grupo_nombre );

CREATE TABLE sms (
    mensaje_id_mensaje NUMBER NOT NULL,
    grupo_nombre       VARCHAR2(30) NOT NULL
);

ALTER TABLE sms ADD CONSTRAINT sms_pk PRIMARY KEY ( mensaje_id_mensaje,
                                                    grupo_nombre );

CREATE TABLE usuario (
    telefono NUMBER(9) NOT NULL,
    nick     VARCHAR2(30)
);

ALTER TABLE usuario ADD CONSTRAINT usuario_pk PRIMARY KEY ( telefono );

ALTER TABLE contactos
    ADD CONSTRAINT contactos_usuario_fk FOREIGN KEY ( usuario_telefono )
        REFERENCES usuario ( telefono );

ALTER TABLE contactos
    ADD CONSTRAINT contactos_usuario_fkv1 FOREIGN KEY ( usuario_telefono1 )
        REFERENCES usuario ( telefono );

ALTER TABLE grupo
    ADD CONSTRAINT grupo_usuario_fk FOREIGN KEY ( usuario_telefono )
        REFERENCES usuario ( telefono );

ALTER TABLE leido_recibido
    ADD CONSTRAINT leido_recibido_mensaje_fk FOREIGN KEY ( mensaje_id_mensaje )
        REFERENCES mensaje ( id_mensaje );

ALTER TABLE leido_recibido
    ADD CONSTRAINT leido_recibido_usuario_fk FOREIGN KEY ( usuario_telefono )
        REFERENCES usuario ( telefono );

ALTER TABLE mensaje
    ADD CONSTRAINT mensaje_usuario_fk FOREIGN KEY ( usuario_telefono )
        REFERENCES usuario ( telefono );

ALTER TABLE pertenece
    ADD CONSTRAINT pertenece_grupo_fk FOREIGN KEY ( grupo_nombre )
        REFERENCES grupo ( nombre );

ALTER TABLE pertenece
    ADD CONSTRAINT pertenece_usuario_fk FOREIGN KEY ( usuario_telefono )
        REFERENCES usuario ( telefono );

ALTER TABLE sms
    ADD CONSTRAINT sms_grupo_fk FOREIGN KEY ( grupo_nombre )
        REFERENCES grupo ( nombre );

ALTER TABLE sms
    ADD CONSTRAINT sms_mensaje_fk FOREIGN KEY ( mensaje_id_mensaje )
        REFERENCES mensaje ( id_mensaje );
