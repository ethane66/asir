-- Tabla de entidades bancarias
CREATE TABLE entidades_bancarias (
  identidad VARCHAR(4) PRIMARY KEY,
  nombre VARCHAR(255),
  direccion VARCHAR(255),
  telefono VARCHAR(20)
);

-- Tabla de clientes
CREATE TABLE clientes (
  idcliente NUMBER(10) PRIMARY KEY,
  nombre VARCHAR(255),
  direccion VARCHAR(255),
  telefono VARCHAR(20)
);

-- Tabla de cuentas
CREATE TABLE cuentas (
  idcuenta VARCHAR(20) PRIMARY KEY,
  idcliente NUMBER(10),
  identidad VARCHAR(4),
  FOREIGN KEY (idcliente) REFERENCES clientes (idcliente),
  FOREIGN KEY (identidad) REFERENCES entidades_bancarias (identidad)
);

-- Tabla de movimientos
CREATE TABLE movimientos (
  idmovimiento NUMBER(10) PRIMARY KEY,
  idcuenta VARCHAR(20),
  euros NUMBER(15,2),
  descripcion VARCHAR(1024),
  marcadetiempo TIMESTAMP,
  FOREIGN KEY (idcuenta) REFERENCES cuentas (idcuenta)
);

drop public database link Profesor; create public database link Profesor connect to practicabancos identified by alumno using '10.1.37.200/XE';
drop public database link rubenavila3; create public database link rubenavila3 connect to elfary identified by rumbarola using '10.1.37.100/XE';
drop public database link jorgebas; create public database link jorgebas connect to elcigala identified by elraton using '10.1.37.102/XE';
drop public database link adrianbristow; create public database link adrianbristow connect to  identified by  using '10.1.37.104/XE';
drop public database link luismanuelcanet; create public database link luismanuelcanet connect to  identified by  using '10.1.37.106/XE';
drop public database link eecassimirochuk; create public database link eecassimirochuk connect to  identified by  using '10.1.37.108/XE';
drop public database link aaroncedresmart; create public database link aaroncedresmart connect to  identified by  using '10.1.37.110/XE';
drop public database link sergiocerro1; create public database link sergiocerro1 connect to  identified by  using '10.1.37.112/XE';
drop public database link oscarchamorro; create public database link oscarchamorro connect to  identified by  using '10.1.37.114/XE';
drop public database link dominikcislo; create public database link dominikcislo connect to bancocarlos identified by carlosbank using '10.1.37.146/XE';
drop public database link jesuscuevas4; create public database link jesuscuevas4 connect to bancojesus identified by bancojesus118 using '10.1.37.148/XE';
drop public database link ethanerwin; create public database link ethanerwin connect to  identified by  using '10.1.37.150/XE';
drop public database link emmanuelfernand; create public database link emmanuelfernand connect to elbicho identified by bancomanu using '10.1.37.152/XE';
drop public database link noeliafernandez; create public database link noeliafernandez connect to banconoelia identified by noelia using '10.1.37.154/XE';
drop public database link adriangonzalez2; create public database link adriangonzalez2 connect to  identified by  using '10.1.37.156/XE';
drop public database link alvarohernandez; create public database link alvarohernandez connect to  identified by  using '10.1.37.158/XE';
drop public database link joselopez16; create public database link joselopez16 connect to bancojose identified by bancojose1 using '10.1.37.160/XE';
drop public database link diegolopez203; create public database link diegolopez203 connect to bancodiego identified by bancanchat using '10.1.37.162/XE';
drop public database link andreimarcu1; create public database link andreimarcu1 connect to  identified by  using '10.1.37.164/XE';
drop public database link jmonleon; create public database link jmonleon connect to  identified by  using '10.1.37.166/XE';
drop public database link pablonunez16; create public database link pablonunez16 connect to  identified by  using '10.1.37.168/XE';
drop public database link hugopablo; create public database link hugopablo connect to serresiete identified by contraseña using '10.1.37.170/XE';
drop public database link aroaperez2; create public database link aroaperez2 connect to  identified by  using '10.1.37.172/XE';
drop public database link pabloramo; create public database link pabloramo connect to  identified by  using '10.1.37.174/XE';
drop public database link creina; create public database link creina connect to bancocarlos identified by carlosbank using '10.1.37.176/XE';
drop public database link alejandrorivill; create public database link alejandrorivill connect to bancorivillos identified by rivillos using '10.1.37.178/XE';
drop public database link victorrodriguez; create public database link victorrodriguez connect to  identified by  using '10.1.37.180/XE';
drop public database link manuelsaez; create public database link manuelsaez connect to  identified by  using '10.1.37.182/XE';
drop public database link nachosnchez; create public database link nachosnchez connect to elcigala identified by elraton using '10.1.37.102/XE';
drop public database link alvarovicente1; create public database link alvarovicente1 connect to  identified by  using '10.1.37.186/XE';
drop public database link veronicavillase; create public database link veronicavillase connect to bancovero identified by verobanco using '10.1.37.188/XE';