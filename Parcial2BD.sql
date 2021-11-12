create database Veterinaria;

use Veterinaria;

CREATE TABLE Due�o_Mascota (
IdDue�o int identity,
Numero_de_identidad int primary key,
Nombre varchar(50)NOT NULL,
Apellido varchar(50)NOT NULL,
);

create table DatosDue�o(
 Id_Datos INT PRIMARY KEY identity,
 Numero_de_identidad int,
 Sexo varchar(50)NOT NULL,
 Tel_Due�o Int,
 FOREIGN KEY (Numero_de_identidad) REFERENCES Due�o_Mascota(Numero_de_identidad),
);

create table DatosDireccionDue�o(
 Id_DatosDireccion INT PRIMARY KEY identity,
 Id_Datos int,
 Departamento varchar(50)NOT NULL,
 Municipio varchar(50)NOT NULL,
 Cod_Postal varchar(50)NOT NULL unique,
 FOREIGN KEY (Id_Datos) REFERENCES DatosDue�o(Id_Datos),
);

CREATE TABLE Mascota (
IdMascota int identity,
Numero_de_identidadMascota int primary key,
Nombre varchar(50)NOT NULL,
Raza varchar(50)NOT NULL,
Peso varchar(50)NOT NULL,
Tipo_deMascota varchar(50)NOT NULL,
Observaciones varchar(50)NOT NULL,
);

CREATE TABLE Veterinario (
Id_Veterinario int identity,
Codigo_Identificacion_Veterinario int primary key,
Nombre_Medico varchar(50)NOT NULL,
Apellido_Medico varchar(50)NOT NULL,
Cargo varchar(150)NOT NULL
);

create table DatosVeterinario(
 Id_Dato INT PRIMARY KEY identity,
 Codigo_Identificacion_Veterinario int,
 Sexo_Medico varchar (2)NOT NULL,
 Tel_Medico int NOT NULL unique,

  FOREIGN KEY (Codigo_Identificacion_Veterinario) REFERENCES Veterinario(Codigo_Identificacion_Veterinario),
);

CREATE TABLE IngresosVeterinaria (
 Id_Ingreso INT PRIMARY KEY identity,
 Motivo VARCHAR(150) NOT NULL,
 FechaIngreso date,
 Observaciones varchar(150),
 Numero_de_identidadMascota INT NOT NULL,
 Codigo_Identificacion_Veterinario int NOT NULL

 FOREIGN KEY (Numero_de_identidadMascota) REFERENCES Mascota(Numero_de_identidadMascota),
 FOREIGN KEY (Codigo_Identificacion_Veterinario) REFERENCES Veterinario(Codigo_Identificacion_Veterinario)
);




-----Insercion de datos en un d�a de Consulta en la veterinaria ----

INSERT INTO Due�o_Mascota VALUES( 06136652, 'Eduardo','Vasquez');
INSERT INTO Due�o_Mascota VALUES( 07654322, 'Juan','Perez');
INSERT INTO Due�o_Mascota VALUES( 06145678, 'Edgar','Jimenez');
INSERT INTO Due�o_Mascota VALUES( 09666779, 'Axl','Rose');
INSERT INTO Due�o_Mascota VALUES( 67543288, 'Edwin','Chavez');
INSERT INTO Due�o_Mascota VALUES( 07643567, 'Raul','Gutierrez');
INSERT INTO Due�o_Mascota VALUES( 09876543, 'Christian','Gutierrez');
INSERT INTO Due�o_Mascota VALUES( 65432145, 'Eliseo','Lopez');
INSERT INTO Due�o_Mascota VALUES( 98768899, 'Josie','Andaluz');
INSERT INTO Due�o_Mascota VALUES( 00987654, 'Fer','Uma�a');


INSERT INTO DatosDue�o VALUES( 06136652,'M',78654327);
INSERT INTO DatosDue�o VALUES( 07654322,'M',78634327);
INSERT INTO DatosDue�o VALUES( 06145678,'M',78698727);
INSERT INTO DatosDue�o VALUES( 09666779,'M',78612327);
INSERT INTO DatosDue�o VALUES( 67543288,'M',67854321);
INSERT INTO DatosDue�o VALUES( 07643567,'M',78618976);
INSERT INTO DatosDue�o VALUES( 09876543,'M',78618743);
INSERT INTO DatosDue�o VALUES( 65432145,'M',78610009);
INSERT INTO DatosDue�o VALUES( 98768899,'M',70092327);
INSERT INTO DatosDue�o VALUES( 00987654,'M',60812327);

----Agregue todos los departamentos como CHALATENANGO, porque basicamente ide� la veterinaria como que solo era para este departamento---
INSERT INTO DatosDireccionDue�o VALUES( 1,'Chalatenango', 'San Ignacio','1fre3');
INSERT INTO DatosDireccionDue�o VALUES( 2,'Chalatenango', 'La Palma','176r4');
INSERT INTO DatosDireccionDue�o VALUES( 3,'Chalatenango', 'Citala','564r8');
INSERT INTO DatosDireccionDue�o VALUES( 4,'Chalatenango', 'Tejutla','6yug7');
INSERT INTO DatosDireccionDue�o VALUES( 5,'Chalatenango', 'Las Pilas','7y65g');
INSERT INTO DatosDireccionDue�o VALUES( 6,'Chalatenango', 'San Jos�','7yik9');
INSERT INTO DatosDireccionDue�o VALUES( 7,'Chalatenango', 'Amayo','3ret5');
INSERT INTO DatosDireccionDue�o VALUES( 8,'Chalatenango', 'Aguilares','bhy54');
INSERT INTO DatosDireccionDue�o VALUES( 9,'Chalatenango', 'El Paraiso','6u711');
INSERT INTO DatosDireccionDue�o VALUES( 10,'Chalatenango', 'Nva Concepcion','7ommy');

----Datos de mascota---
INSERT INTO Mascota VALUES( 0612,'Rocky','San Bernardo', '12kg','Perro','Fuerte dolor abdominal');
INSERT INTO Mascota VALUES( 0613,'Alessa','Salchicha', '1kg','Perro','Revision Dental');
INSERT INTO Mascota VALUES( 0614,'Copo de Nieve','Angora', '3kg','Gato','Sangrado');
INSERT INTO Mascota VALUES( 0615,'Chipilin','Sabueso', '5kg','Perro','Vomito');
INSERT INTO Mascota VALUES( 0616,'Blanquito','Gato Persa', '7kg','Gato','Dolor de oidos');
INSERT INTO Mascota VALUES( 0617,'Anubis','Gato Esfinge', '4kg','Gato','Jiote');
INSERT INTO Mascota VALUES( 0618,'Rambo','Pastor Aleman', '15kg','Perro','Indicio de Rabia');
INSERT INTO Mascota VALUES( 0619,'Job','Husky', '7kg','Perro','Vomito');
INSERT INTO Mascota VALUES( 0620,'Picky','Periquito', '500gr','Ave','Dolor');
INSERT INTO Mascota VALUES( 0621,'Jojo','Belier Holandes', '5kg','Conejo','Vomito');

------Datos Veterinario----
INSERT INTO Veterinario VALUES( 2332, 'Hugo','Benitez','Doctor');
INSERT INTO Veterinario VALUES( 2334, 'Joaquin','Reyes','Odontologo');
INSERT INTO Veterinario VALUES( 2336, 'Carlos','Bunbury','Doctor');
INSERT INTO Veterinario VALUES( 2338, 'Adriana','Cortez','Patologica');


INSERT INTO DatosVeterinario VALUES(2332,'M',78894327);
INSERT INTO DatosVeterinario VALUES(2334,'M',78865327);
INSERT INTO DatosVeterinario VALUES(2336,'M',78894432);
INSERT INTO DatosVeterinario VALUES(2338,'F',60894327);

----Datos ingresos----

INSERT INTO IngresosVeterinaria VALUES( 'Dolor de panza','2021-05-11','Estable',0612,2332);
INSERT INTO IngresosVeterinaria VALUES( 'Fuerte dolor abdominal','2021-05-11','Estable',0612,2332);
INSERT INTO IngresosVeterinaria VALUES( 'Revision Dental','2021-05-11','Estable',0613,2334);
INSERT INTO IngresosVeterinaria VALUES( 'Sangrado','2021-05-11','Estable',0614,2332);
INSERT INTO IngresosVeterinaria VALUES( 'Vomito','2021-05-11','Estable',0615,2336);
INSERT INTO IngresosVeterinaria VALUES( 'Dolor de oidos','2021-05-11','Estable',0616,2336);
INSERT INTO IngresosVeterinaria VALUES( 'Jiote','2021-05-11','Estable',0617,2332);
INSERT INTO IngresosVeterinaria VALUES( 'Indicio de Rabia','2021-05-11','Estable',0618,2338);
INSERT INTO IngresosVeterinaria VALUES( 'Vomito','2021-05-11','Estable',0619,2336);
INSERT INTO IngresosVeterinaria VALUES( 'Dolor','2021-05-11','Estable',0620,2332);
INSERT INTO IngresosVeterinaria VALUES( 'Vomito','2021-05-11','Estable',0621,2336);
INSERT INTO IngresosVeterinaria VALUES( 'Rabia Observacion','2021-05-11','Estable',0618,2338);
INSERT INTO IngresosVeterinaria VALUES( 'Revision dental','2021-05-11','Estable',0613,2334);
INSERT INTO IngresosVeterinaria VALUES( 'Jiote','2021-05-11','Estable',0617,2332);



select * from Due�o_Mascota
order by IdDue�o asc;

select * from DatosDue�o;
select * from DatosDireccionDue�o;

select * from Mascota;

select * from Veterinario;
select * from DatosVeterinario;


select * from IngresosVeterinaria;


---Mostrar due�o de mascota y nombre de Mascota---
select Due�o_Mascota.Nombre as Due�o, Mascota.Nombre as Mascota
from (Mascota
inner join Due�o_Mascota on Due�o_Mascota.IdDue�o=Mascota.IdMascota)

---Mostrar primeros 4 due�os de mascotas, mascotas y doctores---

select Due�o_Mascota.Nombre as Due�o, Mascota.Nombre as Mascota, Veterinario.Nombre_Medico as MedicoACargo
from ((Mascota
inner join Due�o_Mascota on Due�o_Mascota.IdDue�o=Mascota.IdMascota)
inner join Veterinario on Veterinario.Id_Veterinario=Mascota.IdMascota)
