use Centro_Rehabilitacion;
/*==============================================================*/
/* DBMS name:      Microsoft SQL Server 2017                    */
/* Created on:     24/06/2021 19:57:04                          */
/*==============================================================*/


if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Atencion') and o.name = 'FK_ATENCION_ES ATENDI_ESPECIAL')
alter table Atencion
   drop constraint "FK_ATENCION_ES ATENDI_ESPECIAL"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Atencion') and o.name = 'FK_ATENCION_ES ATENDI_PERSONA_')
alter table Atencion
   drop constraint "FK_ATENCION_ES ATENDI_PERSONA_"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Familiar') and o.name = 'FK_FAMILIAR_RELATIONS_PARENTES')
alter table Familiar
   drop constraint FK_FAMILIAR_RELATIONS_PARENTES
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Familiar') and o.name = 'FK_FAMILIAR_TIENE_PERSONA_')
alter table Familiar
   drop constraint FK_FAMILIAR_TIENE_PERSONA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Periodo_rehabiltacion') and o.name = 'FK_PERIODO__INGRESA_PERSONA_')
alter table Periodo_rehabiltacion
   drop constraint FK_PERIODO__INGRESA_PERSONA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Salida_centro') and o.name = 'FK_SALIDA_C_CONTIENE_PERIODO_')
alter table Salida_centro
   drop constraint FK_SALIDA_C_CONTIENE_PERIODO_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Seguimiento') and o.name = 'FK_SEGUIMIE_SIGUE_PERIODO_')
alter table Seguimiento
   drop constraint FK_SEGUIMIE_SIGUE_PERIODO_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Servicio') and o.name = 'FK_SERVICIO_SE COMPON_PERIODO_')
alter table Servicio
   drop constraint "FK_SERVICIO_SE COMPON_PERIODO_"
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Tipo_Adiccion') and o.name = 'FK_TIPO_ADI_PRESENTA_PERSONA_')
alter table Tipo_Adiccion
   drop constraint FK_TIPO_ADI_PRESENTA_PERSONA_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Tratamiento') and o.name = 'FK_TRATAMIE_EMPLEA_PERIODO_')
alter table Tratamiento
   drop constraint FK_TRATAMIE_EMPLEA_PERIODO_
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Uso_Instalacion') and o.name = 'FK_USO_INST_USA_SERVICIO')
alter table Uso_Instalacion
   drop constraint FK_USO_INST_USA_SERVICIO
go

if exists (select 1
   from sys.sysreferences r join sys.sysobjects o on (o.id = r.constid and o.type = 'F')
   where r.fkeyid = object_id('Uso_Instalacion') and o.name = 'FK_USO_INST_USA2_INSTALAC')
alter table Uso_Instalacion
   drop constraint FK_USO_INST_USA2_INSTALAC
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Atencion')
            and   name  = 'es atendida2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Atencion."es atendida2_FK"
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Atencion')
            and   name  = 'es atendida_FK'
            and   indid > 0
            and   indid < 255)
   drop index Atencion."es atendida_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Atencion')
            and   type = 'U')
   drop table Atencion
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Especialista')
            and   type = 'U')
   drop table Especialista
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Familiar')
            and   name  = 'Relationship_10_FK'
            and   indid > 0
            and   indid < 255)
   drop index Familiar.Relationship_10_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Familiar')
            and   name  = 'tiene_FK'
            and   indid > 0
            and   indid < 255)
   drop index Familiar.tiene_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Familiar')
            and   type = 'U')
   drop table Familiar
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Instalacion')
            and   type = 'U')
   drop table Instalacion
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Parentesco')
            and   type = 'U')
   drop table Parentesco
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Periodo_rehabiltacion')
            and   name  = 'ingresa_FK'
            and   indid > 0
            and   indid < 255)
   drop index Periodo_rehabiltacion.ingresa_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Periodo_rehabiltacion')
            and   type = 'U')
   drop table Periodo_rehabiltacion
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Persona_Adicta')
            and   type = 'U')
   drop table Persona_Adicta
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Salida_centro')
            and   name  = 'contiene_FK'
            and   indid > 0
            and   indid < 255)
   drop index Salida_centro.contiene_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Salida_centro')
            and   type = 'U')
   drop table Salida_centro
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Seguimiento')
            and   name  = 'sigue_FK'
            and   indid > 0
            and   indid < 255)
   drop index Seguimiento.sigue_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Seguimiento')
            and   type = 'U')
   drop table Seguimiento
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Servicio')
            and   name  = 'se compone_FK'
            and   indid > 0
            and   indid < 255)
   drop index Servicio."se compone_FK"
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Servicio')
            and   type = 'U')
   drop table Servicio
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Tipo_Adiccion')
            and   name  = 'presenta_FK'
            and   indid > 0
            and   indid < 255)
   drop index Tipo_Adiccion.presenta_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tipo_Adiccion')
            and   type = 'U')
   drop table Tipo_Adiccion
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Tratamiento')
            and   name  = 'emplea_FK'
            and   indid > 0
            and   indid < 255)
   drop index Tratamiento.emplea_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Tratamiento')
            and   type = 'U')
   drop table Tratamiento
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Uso_Instalacion')
            and   name  = 'usa2_FK'
            and   indid > 0
            and   indid < 255)
   drop index Uso_Instalacion.usa2_FK
go

if exists (select 1
            from  sysindexes
           where  id    = object_id('Uso_Instalacion')
            and   name  = 'usa_FK'
            and   indid > 0
            and   indid < 255)
   drop index Uso_Instalacion.usa_FK
go

if exists (select 1
            from  sysobjects
           where  id = object_id('Uso_Instalacion')
            and   type = 'U')
   drop table Uso_Instalacion
go

/*==============================================================*/
/* Table: Atencion                                              */
/*==============================================================*/
create table Atencion (
   Especialista_id      numeric              not null,
   Persona_id           numeric              not null,
   Atencion_Fecha       date             null,
)
go

/*==============================================================*/
/* Index: "es atendida_FK"                                      */
/*==============================================================*/




create nonclustered index "es atendida_FK" on Atencion (Especialista_id ASC)
go

/*==============================================================*/
/* Index: "es atendida2_FK"                                     */
/*==============================================================*/




create nonclustered index "es atendida2_FK" on Atencion (Persona_id ASC)
go

/*==============================================================*/
/* Table: Especialista                                          */
/*==============================================================*/
create table Especialista (
   Especialista_id      numeric              not null,
   Especialista_nombre  text                 null,
   Especialista_apellido text                 null,
   Especialista_especialidad text                 null,
   Especialista_direccion text                 null,
   Especialista_telefono numeric              null,
   Especialsita_correo  text                 null,
   constraint PK_ESPECIALISTA primary key (Especialista_id)
)
go

/*==============================================================*/
/* Table: Familiar                                              */
/*==============================================================*/
create table Familiar (
   Familiar_id          numeric              not null,
   Parentesco_id        numeric              null,
   Persona_id           numeric              null,
   Familiar_nombre      text                 null,
   Familiar_apellido    text                 null,
   Familiar_edad        numeric              null,
   Familiar_direccion   text                 null,
   Familiar_telefono    numeric              null,
   Familiar_correo      text                 null,
   constraint PK_FAMILIAR primary key (Familiar_id)
)
go

/*==============================================================*/
/* Index: tiene_FK                                              */
/*==============================================================*/




create nonclustered index tiene_FK on Familiar (Persona_id ASC)
go

/*==============================================================*/
/* Index: Relationship_10_FK                                    */
/*==============================================================*/




create nonclustered index Relationship_10_FK on Familiar (Parentesco_id ASC)
go

/*==============================================================*/
/* Table: Instalacion                                           */
/*==============================================================*/
create table Instalacion (
   Instalacion_id       numeric              not null,
   Instalacion_nombre   text                 null,
   Instalacion_descripcion text                 null,
   constraint PK_INSTALACION primary key (Instalacion_id)
)
go

/*==============================================================*/
/* Table: Parentesco                                            */
/*==============================================================*/
create table Parentesco (
   Parentesco_id        numeric              not null,
   Parentesco_nombre    text                 null,
   constraint PK_PARENTESCO primary key (Parentesco_id)
)
go

/*==============================================================*/
/* Table: Periodo_rehabiltacion                                 */
/*==============================================================*/
create table Periodo_rehabiltacion (
   Periodo_id           numeric              not null,
   Persona_id           numeric              null,
   Periodo_inicia       date             null,
   Perido_fin           date            null,
   Costo                numeric              null,
   constraint PK_PERIODO_REHABILTACION primary key (Periodo_id)
)
go

/*==============================================================*/
/* Index: ingresa_FK                                            */
/*==============================================================*/




create nonclustered index ingresa_FK on Periodo_rehabiltacion (Persona_id ASC)
go

/*==============================================================*/
/* Table: Persona_Adicta                                        */
/*==============================================================*/
create table Persona_Adicta (
   Persona_id           numeric              not null,
   Persona_Nombre       text                 null,
   Persona_Apellido     text                 null,
   Persona_Edad         numeric              null,
   Persona_Direccion    text                 null,
   Persona_cedula       numeric              null,
   Persona_telefono     numeric              null,
   Fecha_adiccion_empieza date             null,
   constraint PK_PERSONA_ADICTA primary key (Persona_id)
)
go

/*==============================================================*/
/* Table: Salida_centro                                         */
/*==============================================================*/
create table Salida_centro (
   Periodo_id           numeric              not null,
   Salida_id            numeric              not null,
   Salida_motivo        text                 null,
   Salida_fecha         date             null,
   constraint PK_SALIDA_CENTRO primary key (Periodo_id, Salida_id)
)
go

/*==============================================================*/
/* Index: contiene_FK                                           */
/*==============================================================*/




create nonclustered index contiene_FK on Salida_centro (Periodo_id ASC)
go

/*==============================================================*/
/* Table: Seguimiento                                           */
/*==============================================================*/
create table Seguimiento (
   Seguimiento_id       numeric              not null,
   Periodo_id           numeric              null,
   Seguimiento_Calificacion text                 null,
   constraint PK_SEGUIMIENTO primary key (Seguimiento_id)
)
go

/*==============================================================*/
/* Index: sigue_FK                                              */
/*==============================================================*/




create nonclustered index sigue_FK on Seguimiento (Periodo_id ASC)
go

/*==============================================================*/
/* Table: Servicio                                              */
/*==============================================================*/
create table Servicio (
   Servicio_id          numeric              not null,
   Periodo_id           numeric              null,
   Servicio_nombre      text                 null,
   Servicio_descripcion text                 null,
   constraint PK_SERVICIO primary key (Servicio_id)
)
go

/*==============================================================*/
/* Index: "se compone_FK"                                       */
/*==============================================================*/




create nonclustered index "se compone_FK" on Servicio (Periodo_id ASC)
go

/*==============================================================*/
/* Table: Tipo_Adiccion                                         */
/*==============================================================*/
create table Tipo_Adiccion (
   Adiccion_id          numeric              not null,
   Persona_id           numeric              null,
   Adiccion_nombre      text                 null,
   Adiccion_descripcion text                 null,
   constraint PK_TIPO_ADICCION primary key (Adiccion_id)
)
go

/*==============================================================*/
/* Index: presenta_FK                                           */
/*==============================================================*/




create nonclustered index presenta_FK on Tipo_Adiccion (Persona_id ASC)
go

/*==============================================================*/
/* Table: Tratamiento                                           */
/*==============================================================*/
create table Tratamiento (
   Tratamiento_id       numeric              not null,
   Periodo_id           numeric              null,
   Tratamiento_nombre   text                 null,
   Tratamiento_descripcion text                 null,
   Tratamiento_inicia   date             null,
   Tratamiento_fin      date             null,
   constraint PK_TRATAMIENTO primary key (Tratamiento_id)
)
go

/*==============================================================*/
/* Index: emplea_FK                                             */
/*==============================================================*/




create nonclustered index emplea_FK on Tratamiento (Periodo_id ASC)
go

/*==============================================================*/
/* Table: Uso_Instalacion                                       */
/*==============================================================*/
create table Uso_Instalacion (
   Servicio_id          numeric              not null,
   Instalacion_id       numeric              not null,
   Uso_Fecha            date             null,
   Uso_Descripcion      text                 null,
)
go

/*==============================================================*/
/* Index: usa_FK                                                */
/*==============================================================*/




create nonclustered index usa_FK on Uso_Instalacion (Servicio_id ASC)
go

/*==============================================================*/
/* Index: usa2_FK                                               */
/*==============================================================*/




create nonclustered index usa2_FK on Uso_Instalacion (Instalacion_id ASC)
go

alter table Atencion
   add constraint "FK_ATENCION_ES ATENDI_ESPECIAL" foreign key (Especialista_id)
      references Especialista (Especialista_id)
go

alter table Atencion
   add constraint "FK_ATENCION_ES ATENDI_PERSONA_" foreign key (Persona_id)
      references Persona_Adicta (Persona_id)
go

alter table Familiar
   add constraint FK_FAMILIAR_RELATIONS_PARENTES foreign key (Parentesco_id)
      references Parentesco (Parentesco_id)
go

alter table Familiar
   add constraint FK_FAMILIAR_TIENE_PERSONA_ foreign key (Persona_id)
      references Persona_Adicta (Persona_id)
go

alter table Periodo_rehabiltacion
   add constraint FK_PERIODO__INGRESA_PERSONA_ foreign key (Persona_id)
      references Persona_Adicta (Persona_id)
go

alter table Salida_centro
   add constraint FK_SALIDA_C_CONTIENE_PERIODO_ foreign key (Periodo_id)
      references Periodo_rehabiltacion (Periodo_id)
go

alter table Seguimiento
   add constraint FK_SEGUIMIE_SIGUE_PERIODO_ foreign key (Periodo_id)
      references Periodo_rehabiltacion (Periodo_id)
go

alter table Servicio
   add constraint "FK_SERVICIO_SE COMPON_PERIODO_" foreign key (Periodo_id)
      references Periodo_rehabiltacion (Periodo_id)
go

alter table Tipo_Adiccion
   add constraint FK_TIPO_ADI_PRESENTA_PERSONA_ foreign key (Persona_id)
      references Persona_Adicta (Persona_id)
go

alter table Tratamiento
   add constraint FK_TRATAMIE_EMPLEA_PERIODO_ foreign key (Periodo_id)
      references Periodo_rehabiltacion (Periodo_id)
go

alter table Uso_Instalacion
   add constraint FK_USO_INST_USA_SERVICIO foreign key (Servicio_id)
      references Servicio (Servicio_id)
go

alter table Uso_Instalacion
   add constraint FK_USO_INST_USA2_INSTALAC foreign key (Instalacion_id)
      references Instalacion (Instalacion_id)
go


insert into  Persona_Adicta VALUES(1,'Jose','Cedeno','21','Portoviejo-Picoaza',1312698424,0988916451,'2020-02-01');
insert into  Persona_Adicta VALUES(2,'Pedro','Menendez','20','Portoviejo-Las Pidras',13089456213,0986324569,'2019-09-30');
insert into  Persona_Adicta VALUES(3,'Luis','Mendez','19','Manta-Barrio Cuba',1302698563,0986325469,'2018-04-25');
insert into  Persona_Adicta VALUES(4,'Brando','Mero','22','Venezuela-Caracas',1302587460,0953246210,'2021-09-24');
insert into  Persona_Adicta VALUES(5,'Carolina','Laz','21','Portoviejo-SAN PABLO',1302686452,0988456924,'2016-04-27');
insert into  Persona_Adicta VALUES(6,'Saul','Rodriguez','30','Portoviejo-Picoaza',1302657985,0986321564,'2017-02-15');
insert into  Persona_Adicta VALUES(7,'Guillermo','Barros','24','Portoviejo-La Pininada',1309845623,0988916451,'2021-04-11');
insert into  Persona_Adicta VALUES(8,'Pedro','Proano','22','Portoviejo-Colon',1302574693,0984120756,'2020-08-12');
insert into  Persona_Adicta VALUES(9,'Joel','Holguin','20','Tosagua',1302541020,0986320142,'2016-04-21');
insert into  Persona_Adicta VALUES(10,'Antonio','Valencia','23','Portoviejo-AV. 5 de junio',1310024478,093365220,'2020-12-20');
select * from Persona_adicta;

insert into Especialista values (1,'Gustavo','Tejena','Medico general','Manta-San Pedro',0983200144,'juantejena@gmail.com');
insert into Especialista values (2,'Luis','Loor','Terapeuta','Manta-Los electricos',0963211103,'loor32145@gmail.com');
insert into Especialista values (3,'Daniel','Mendoza','Cardiologo','Manta',0256312986,'danielM1234@gmail.com');
insert into Especialista values (4,'Juan','Palma','Entrenador deportivo','Manta-Barbasquillo',0983200144,'juanpalma0982@gmail.com');
insert into Especialista values (5,'Plutarco','Buseta','MGastroenterologo','Esmeraldas-Quininde',098523461,'buseta789@gmail.com');

select * from Especialista;

insert into Parentesco values (1,'Padre');
insert into Parentesco values (2,'Madre');
insert into Parentesco values (3,'Otro');

select * from Parentesco;
insert into Familiar values(1,1,1,'Guillermo','Cedeno',60,'Manta',0983260021,'guillermocede@hotmail.com');
insert into Familiar values(2,2,1,'Rita','Mendoza',57,'Manta',0963210355,'rita1650@hotmail.com');
insert into Familiar values(3,1,2,'Luis','Menendez',58,'Manta',0986321367,'pedro-m@hotmail.com');
insert into Familiar values(4,2,2,'Kelly','Fernandez',45,'Manta',0963211032,'kelly-fer@hotmail.com');
insert into Familiar values(5,1,3,'Joel','Mendez',40,'Manta',0963256312,'joel1960@hotmail.com');
insert into Familiar values(6,3,3,'Collin','Zambrano',23,'Manta',0985200136,'collinzam-@hotmail.com');
insert into Familiar values(7,1,4,'Galo','Mero',70,'Manta',0985320046,'galo-mero@hotmail.com');

select * from Familiar;

insert into Tipo_Adiccion values(1,1,'Alcohol','Adiccion grave al alcohol');
insert into Tipo_Adiccion values(2,1,'Cocaina','Adiccion grave a la cocaina');
insert into Tipo_Adiccion values(3,4,'Alcohol','Adiccion leve al alcohol');
insert into Tipo_Adiccion values(4,2,'Heroina','Adiccion grave a la heroina');
insert into Tipo_Adiccion values(5,3,'Marihuana','Adiccion grave a la marihuana');

select * from Tipo_Adiccion;


insert into Periodo_rehabiltacion values (1,1,'2020-01-21','2020-06-21',80);
insert into Periodo_rehabiltacion values (2,2,'2020-03-21','2020-08-21',100);
insert into Periodo_rehabiltacion values (3,3,'2020-05-21','2020-10-21',180);
insert into Periodo_rehabiltacion values (4,4,'2020-01-21','2020-06-21',1000);
insert into Periodo_rehabiltacion values (5,1,'2020-01-21','2020-06-21',1000);
insert into Periodo_rehabiltacion values (6,5,'2020-03-21','2020-08-21',500);
insert into Periodo_rehabiltacion values (7,6,'2020-05-21','2020-10-21',500);
insert into Periodo_rehabiltacion values (8,6,'2019-05-21','2020-10-21',500);


select * from Periodo_rehabiltacion;

insert into Atencion values(1,1,'2020-01-28');
insert into Atencion values(2,1,'2020-01-23');
insert into Atencion values(3,2,'2020-03-25');
insert into Atencion values(1,2,'2020-03-28');
insert into Atencion values(3,3,'2020-05-30');
insert into Atencion values(5,1,'2020-02-05');
insert into Atencion values(4,1,'2020-03-07');

select * from Atencion;


insert into Tratamiento values (1,1,'Medicina','Tomar ibuprofeno cada 7 horas','2020-01-30','2020-02-05');
insert into Tratamiento values (2,1,'Deporte','Hacer ejercicio 30 minutos por dia','2020-01-30','2020-06-21');
insert into Tratamiento values (3,2,'Medicina','Tomar umbral cada 12 horas','2020-03-30','2020-05-27');
insert into Tratamiento values (4,2,'Medicina','Aplicar un suero diario','2020-04-15','2020-06-21');
insert into Tratamiento values (5,3,'Deporte','Nadar dos veces por semana','2020-06-05','2020-10-20');

select * from Tratamiento;

insert into Servicio values (1,1,'Desayuno','Comer frutas y comida suave en el desayuno');
insert into Servicio values (2,1,'Almuerzo','Comer arroz con pollo');
insert into Servicio values (3,2,'Desayuno','Comer comida saludable');
insert into Servicio values (4,2,'Almuerzo','Comer pollo, carne o pescado');
insert into Servicio values (5,3,'Ejercicios','Hacer ejercicio en el gym');
insert into Servicio values (6,3,'Videojuegos','Jugar fifa18 ');
insert into Servicio values (7,3,'Futbol','Jugar futbol 7');

select * from Servicio;

insert into Instalacion values (1,'Comedor','Comedor para los pacientes');
insert into Instalacion values (2,'Gimnasio','Gimnasio con varias maquinas para ejercitarse');
insert into Instalacion values (3,'Sala de videojuegos','Incluye play station y xbox');
insert into Instalacion values (4,'Cancha sintetica','Cancha de cesped sintetico para 7 jugadores');

select * from Instalacion;

insert into Uso_Instalacion values (1,1,'2020-05-24','Se comio todas las frutas');
insert into Uso_Instalacion values (2,1,'2020-04-07','Se comio todo');
insert into Uso_Instalacion values (3,1,'2020-06-20','Se comio todo');
insert into Uso_Instalacion values (4,1,'2020-08-21','Se comio todo');
insert into Uso_Instalacion values (5,2,'2020-10-02','Se hizo barras y abdominales');
insert into Uso_Instalacion values (6,3,'2020-04-16','Se jugo en el play station fifa18');
insert into Uso_Instalacion values (7,4,'2020-03-08','El partido quedo empate');

select * from Uso_Instalacion;

insert into Seguimiento values(1,1,'Bueno');
insert into Seguimiento values(2,1,'Malo');
insert into Seguimiento values(3,2,'Bueno');
insert into Seguimiento values(4,3,'Regular');
insert into Seguimiento values(5,2,'Malo');
insert into Seguimiento values(6,1,'Malo');
insert into Seguimiento values(7,2,'Regular');
insert into Seguimiento values(8,1,'Malo');
insert into Seguimiento values(9,3,'Bueno');
select * from Seguimiento;

insert into Salida_centro values (1,1,'Termino recuperacion','2020-06-21');
insert into Salida_centro values (1,2,'Falta de recursos','2020-04-14');
insert into Salida_centro values (2,3,'Termino recuperacion','2020-08-21');
insert into Salida_centro values (2,4,'No le gusta la atencion','2020-06-04');
insert into Salida_centro values (3,5,'Termino recuperacion','2020-10-21');
insert into Salida_centro values (3,6,'Escapatoria del centro','2020-08-01');


select * from Salida_centro;


--Cada paciente por cuantos especialistas es atendido


select 
Persona_Adicta.Persona_id,
CAST(Persona_Adicta.Persona_Nombre AS varchar(10)) as Nombre_Persona,
CAST(Persona_Adicta.Persona_Apellido AS varchar(10)) as Apellidos_Persona,
COUNT(DISTINCT  Atencion.Especialista_id) AS Numero_Especialistas
from Persona_Adicta
inner join Atencion on Persona_Adicta.Persona_id=Atencion.Persona_id
inner join Especialista on Especialista.Especialista_id = Atencion.Especialista_id
group by  Persona_Adicta.Persona_id,CAST(Persona_Adicta.Persona_Nombre AS varchar(10)),CAST(Persona_Adicta.Persona_Apellido AS varchar(10))
order by CAST(Persona_Adicta.Persona_Nombre AS varchar(10))
go


select * from Atencion

--Listado por cada tipo de seguimiento 
select
CAST(Seguimiento.Seguimiento_Calificacion AS varchar(10)) as Calificacion ,
count(Seguimiento.Seguimiento_id) as Cantidad_Calificacion
from Seguimiento
group by CAST(Seguimiento.Seguimiento_Calificacion AS varchar(10))
go

--Cuantas veces ha sido utilizada cada instalacion
select 
CAST(Instalacion.Instalacion_nombre AS varchar(10)) as Instalacion ,
count(Uso_Instalacion.Instalacion_id) as Numero_utilizaciones
from Instalacion
inner join Uso_Instalacion on Uso_Instalacion.Instalacion_id=Instalacion.Instalacion_id
group by CAST(Instalacion.Instalacion_nombre AS varchar(10))
go

--Ingresos por anio en el centro
select 
YEAR(Periodo_rehabiltacion.Periodo_inicia) as Año,
SUM(Periodo_rehabiltacion.Costo) as Ingresos
from Periodo_rehabiltacion 
where YEAR(Periodo_rehabiltacion.Periodo_inicia)=2020 
GROUP BY YEAR(Periodo_rehabiltacion.Periodo_inicia)

