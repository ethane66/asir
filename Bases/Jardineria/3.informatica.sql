--connect informatica;

alter table productos add constraint CK_Cantidadenstock check (cantidadenstock >=0);