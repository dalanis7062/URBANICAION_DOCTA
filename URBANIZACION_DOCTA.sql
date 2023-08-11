create schema urbanizacion_docta; 

use urbanizacion_docta;

create table etapas (
id_etapas int primary key,
nombre_etapa varchar (30),
avance decimal(5,2)
);

create table manzanas (
id_mza int primary key,
id_etapas int, foreign key (id_etapas) references etapas(id_etapas),
m2_mza int,
plazas int
);

create table lotes (
id_lt int primary key,
id_mza int, foreign key (id_mza) references manzanas(id_mza),
casa varchar (30),
duplex varchar (30),
triplex varchar (30),
baldio varchar (30)
);

create table habitantes (
id_hab int primary key,
dni int not null,
nombre varchar (50) not null,
apellido varchar (50) not null,
telefono int, 
id_lt int, foreign key (id_lt) references lotes(id_lt),
id_mza int, foreign key (id_mza) references manzanas(id_mza)
);

alter table habitantes
add mail varchar (50);

create table vehiculos (
    patente varchar (20) primary key,
    tipo varchar (30),
    id_hab int, foreign key (id_hab) references habitantes(id_hab),
    color varchar (30)
    );
  
alter table vehiculos
modify patente varchar (30);

alter table vehiculos
modify color varchar (30) not null; 
  
    create table locales_comerciales (
    cuit varchar (50) primary key,
    rubro varchar (30) not null,
    telefono int,
    id_lt int, foreign key (id_lt) references lotes(id_lt),
    id_mza int, foreign key (id_mza) references manzanas(id_mza)
    );
    
    
