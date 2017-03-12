

DROP TABLE IF EXISTS usuario CASCADE;

CREATE TABLE usuario (
  username varchar(20) NOT NULL DEFAULT '',
  password varchar(20) NOT NULL DEFAULT '',
  nombre varchar(50) DEFAULT NULL,
  nacionalidad varchar(20) DEFAULT NULL,
  direccion varchar(50) DEFAULT NULL,
  correo varchar(40) DEFAULT NULL,
  departamento varchar(20) DEFAULT NULL,
  PRIMARY KEY (username)
) ;




DROP TABLE IF EXISTS icurso CASCADE;

CREATE TABLE icurso (
  curso_id serial NOT NULL,
  sigla varchar(10) NOT NULL,
  seccion int DEFAULT NULL,
  semestre int NOT NULL,
  ano int NOT NULL,
  profesor varchar(20) DEFAULT NULL,
  campus varchar(20) DEFAULT NULL,
  PRIMARY KEY (curso_id),
  FOREIGN KEY (profesor)
    REFERENCES  usuario (username),
  UNIQUE (sigla,seccion,semestre,ano)
) ;





DROP TABLE IF EXISTS inscribe CASCADE;

CREATE TABLE inscribe (
  username varchar(20) NOT NULL,
  curso_id int NOT NULL,
  nota int DEFAULT NULL,
  PRIMARY KEY (username, curso_id),
  FOREIGN KEY (username)
    REFERENCES  usuario (username),
  FOREIGN KEY (curso_id)
    REFERENCES  icurso (curso_id)
) ;



DROP TABLE IF EXISTS curso CASCADE;

CREATE TABLE curso (
  sigla varchar(10) NOT NULL DEFAULT '',
  nombre varchar(40) DEFAULT NULL,
  departamento varchar(30) DEFAULT NULL,
  creditos int DEFAULT NULL,
  PRIMARY KEY (sigla)
) ;

DROP TABLE IF EXISTS es_prerrequisito CASCADE;

CREATE TABLE es_prerrequisito (
  curso varchar(10) NOT NULL DEFAULT '',
  prerrequisito varchar(10) NOT NULL DEFAULT '',    
  PRIMARY KEY (curso,prerrequisito),
  FOREIGN KEY (curso)
    REFERENCES  curso (sigla),
  FOREIGN KEY (prerrequisito)
    REFERENCES  curso (sigla)
) ;


DROP TABLE IF EXISTS es_curso ;

CREATE TABLE es_curso (
  icurso int NOT NULL,
  curso varchar(10) NOT NULL DEFAULT '',
  PRIMARY KEY (icurso, curso),    
  FOREIGN KEY (curso)
    REFERENCES  curso (sigla),
  FOREIGN KEY (icurso)
    REFERENCES  icurso (curso_id)
) ;

DROP TABLE IF EXISTS rol CASCADE;

CREATE TABLE rol (
  rol_id serial NOT NULL,
  nombre varchar(30) DEFAULT NULL,
  nacceso int DEFAULT NULL,
  PRIMARY KEY (rol_id)
) ;



DROP TABLE IF EXISTS tiene_rol;

CREATE TABLE tiene_rol (
  username varchar(10) NOT NULL DEFAULT '',
  rol_id int NOT NULL,
  PRIMARY KEY (username,rol_id),    
  FOREIGN KEY (username)
    REFERENCES  usuario (username),
  FOREIGN KEY (rol_id)
    REFERENCES  rol (rol_id)
) ;

INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('adelsol1','q1w2e3','Alicia del Sol','Chile','ermita de torreciudad 4252','adelsol1@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('sicastro','q1w2e3','Sofia Castro','Chile','Camino las campanas 4223','sicastro1@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('ppiero','1q2w2e3','Piero Piero','Argentina','calle argentina 1123','ppiero@uc.cl','Sociologia');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('ffuto','asdf','Francisco Futo','Chile','aeromucho 1221','ffuto@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('adelsol','q1w2e3','Antonio del Sol','Ecuador','ermita de torreciudad 4252','adelsol@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('camelio','q1w2e3','Carlos Amelio','Chile','ermita 4252','camelio@uc.cl','Sociologia');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('clehuede','q1w2e3','Cristian Lehuede','Chile','el chato 3002','clehuede@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('ftello','q1w2e3','Felipe Tello','Chile','el profe 3002','ftello@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('treyes','q1w2e3','Tomas Reyes','Chile','la platita 3002','treyes@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('pdelsolf','q1w2e3','Patricio del Sol','Chile','el bro 3002','pdelsolf@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('mamello','q1w2e3','Maria Amello','Chile','Culplace 9910','mamello@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('rvcalderon','q1w2e3','Rosario Valentina Calderon','Chile','ProviLife 1399','rvcalderon@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('jmleighton','1q2w2e3','Jose Manuel Leighton','Chile','calle argentina 1123','jmleighton@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('ffutos','asdf','Francisco Futos','Chile','aeromucho 1221','ffutos@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('adelsol5','q1w2e3','Antonino del Sol','Chile','ermita de torreciudad 4252','adelsol5@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('hsimonetti','q1w2e3','Horacio Simonetti','Chile','ermita 4252','hsimonetti@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('clehuede4','q1w2e3','Cristobal Lehuede','Chile','el chatocuatro 3002','clehuede4@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('fatmagul','q1w2e3','Fatmagul Tello','Chile','Fatma 3002','fatmagul@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('treyes1','q1w2e3','Tito Reyes','Chile','la platitano 3002','treyes1@uc.cl','Ingenieria');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('pdelsol','q1w2e3','Patricio del Sol','Chile','el dad 3002','pdelsol@uc.cl','Ingenieria');
INSERT INTO usuario (username,password)
VALUES ('glund','q1w2e3');
INSERT INTO usuario (username,password)
VALUES ('glund1','q1w2e3');
INSERT INTO usuario (username,password)
VALUES ('glund2','q1w2e3');
INSERT INTO usuario (username,password)
VALUES ('glund3','q1w2e3');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('elagro','q1w2e3','Eladio Lagro','Chile','el agro 3002','elagro@uc.cl','Agronomia');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('samsu','q1w2e3','Samuel amsual','Chile','el agros 3002','samsu@uc.cl','Agronomia');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('dehoy','q1w2e3','Daniel ehoy','Chile','el agros 3002','dehoy@uc.cl','Diseno');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('dihoy','q1w2e3','Daniel ihoy','Chile','el agros 3002','dihoy@uc.cl','Diseno');
INSERT INTO usuario (username,password,nombre,nacionalidad,direccion,correo,departamento)
VALUES ('elmagro','q1w2e3','Ezequiel L magro','Chile','el magros 3002','elmagro@uc.cl','Agronomia');



INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('IIC2413','1','2','2015','clehuede','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('IIC2413','1','1','2015','clehuede','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('IIC2413','1','2','2014','clehuede','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('IIC2413','1','1','2014','clehuede','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('IIC2343','1','2','2015','ftello','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('ICS3413','1','2','2015','treyes','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('ICS3413','1','1','2015','treyes','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('IIC2233','1','2','2014','pdelsolf','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('ICS3412','1','1','2015','treyes','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('MAT1600','1','2','2014','ftello','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor)
VALUES ('MAT1610','1','1','2015','ftello');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor)
VALUES ('MAT1620','1','2','2015','treyes');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('AGL221','1','1','2015','samsu','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('AGL101','1','1','2015','elmagro','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('AGL112','1','1','2015','elagro','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('AGL203','1','2','2015','samsu','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('AGL211','1','2','2015','elagro','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('AGL221','1','2','2015','elagro','San Joaquin');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO001','1','2','2014','dehoy','Lo Contador');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO001','2','2','2014','dehoy','Lo Contador');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO002','1','1','2014','dehoy','Lo Contador');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO003','1','2','2014','dihoy','Lo Contador');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO004','1','1','2015','dehoy','Lo Contador');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO111','2','1','2015','dihoy','Lo Contador');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO020','1','2','2015','dihoy','Lo Contador');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO0121','1','1','2015','dihoy','Lo Contador');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO020','1','1','2014','dihoy','Lo Contador');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO0121','1','1','2014','dihoy','Lo Contador');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO020','2','1','2015','dihoy','Lo Contador');
INSERT INTO icurso (sigla,seccion,semestre,ano,profesor,campus)
VALUES ('DNO020','1','1','2015','dihoy','Lo Contador');




INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('IIC2413','Bases de Datos','Ingenieria','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('IIC2343','Arquitectura de Computadores','Ingenieria','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('ICS3413','Finanzas','Ingenieria','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('IIC2233','Programacion Avanzada','Ingenieria','15');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('ICS3412','Pre Finanzas','Ingenieria','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('MAT1600','Contabilidad','Ingenieria','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('AGL101','Botanica','Agronomia','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('AGL110','Suelos y Fertilidad','Agronomia','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('AGL201','Estadistica','Agronomia','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('AGL112','Climatologia','Agronomia','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('AGL203','Genetica y Biotecnologia','Agronomia','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('AGL211','Proteccion de Plantas','Agronomia','10');
INSERT INTO curso (sigla, creditos)
VALUES ('AGL221','10');
INSERT INTO curso (sigla, nombre)
VALUES ('MAT1610','Calculo I');
INSERT INTO curso (sigla)
VALUES ('MAT1620');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('DNO001','Iluminacion','Diseno','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('DNO002','Introduccion a la tipografia','Diseno','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('DNO003','Imagen Textil','Diseno','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('DNO004','Manejo y aplicacion de color','Diseno','10');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('DNO111','Introduccion al proyecto','Diseno','15');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('DNO0121','Taller: Interaccion','Diseno','15');
INSERT INTO curso (sigla,nombre,departamento,creditos)
VALUES ('DNO020','Fotografia hoy','Diseno','10');




INSERT INTO es_curso (icurso,curso)
VALUES ('1','IIC2413');
INSERT INTO es_curso (icurso,curso)
VALUES ('2','IIC2413');
INSERT INTO es_curso (icurso,curso)
VALUES ('3','IIC2413');
INSERT INTO es_curso (icurso,curso)
VALUES ('4','IIC2413');
INSERT INTO es_curso (icurso,curso)
VALUES ('5','IIC2343');
INSERT INTO es_curso (icurso,curso)
VALUES ('6','ICS3413');
INSERT INTO es_curso (icurso,curso)
VALUES ('7','ICS3413');
INSERT INTO es_curso (icurso,curso)
VALUES ('8','IIC2233');
INSERT INTO es_curso (icurso,curso)
VALUES ('9','ICS3412');
INSERT INTO es_curso (icurso,curso)
VALUES ('10','MAT1600');
INSERT INTO es_curso (icurso,curso)
VALUES ('11','MAT1610');
INSERT INTO es_curso (icurso,curso)
VALUES ('12','MAT1620');
INSERT INTO es_curso (icurso,curso)
VALUES ('13','AGL221');
INSERT INTO es_curso (icurso,curso)
VALUES ('14','AGL101');
INSERT INTO es_curso (icurso,curso)
VALUES ('15','AGL112');
INSERT INTO es_curso (icurso,curso)
VALUES ('16','AGL203');
INSERT INTO es_curso (icurso,curso)
VALUES ('17','AGL211');
INSERT INTO es_curso (icurso,curso)
VALUES ('18','AGL221');
INSERT INTO es_curso (icurso,curso)
VALUES ('19','DNO001');
INSERT INTO es_curso (icurso,curso)
VALUES ('20','DNO001');
INSERT INTO es_curso (icurso,curso)
VALUES ('21','DNO002');
INSERT INTO es_curso (icurso,curso)
VALUES ('22','DNO003');
INSERT INTO es_curso (icurso,curso)
VALUES ('23','DNO004');
INSERT INTO es_curso (icurso,curso)
VALUES ('24','DNO111');
INSERT INTO es_curso (icurso,curso)
VALUES ('25','DNO020');
INSERT INTO es_curso (icurso,curso)
VALUES ('26','DNO0121');
INSERT INTO es_curso (icurso,curso)
VALUES ('27','DNO020');
INSERT INTO es_curso (icurso,curso)
VALUES ('28','DNO0121');
INSERT INTO es_curso (icurso,curso)
VALUES ('29','DNO020');
INSERT INTO es_curso (icurso,curso)
VALUES ('30','DNO020');



INSERT INTO es_prerrequisito (curso,prerrequisito)
VALUES ('IIC2413','IIC2233');
INSERT INTO es_prerrequisito (curso,prerrequisito)
VALUES ('ICS3413','ICS3412');
INSERT INTO es_prerrequisito (curso,prerrequisito)
VALUES ('ICS3413','MAT1600');
INSERT INTO es_prerrequisito (curso,prerrequisito)
VALUES ('AGL221','AGL211');
INSERT INTO es_prerrequisito (curso,prerrequisito)
VALUES ('AGL211','AGL201');
INSERT INTO es_prerrequisito (curso,prerrequisito)
VALUES ('AGL203','AGL110');
INSERT INTO es_prerrequisito (curso,prerrequisito)
VALUES ('DNO0121','DNO111');
INSERT INTO es_prerrequisito (curso,prerrequisito)
VALUES ('DNO020','DNO001');
INSERT INTO es_prerrequisito (curso,prerrequisito)
VALUES ('DNO020','DNO002');
INSERT INTO es_prerrequisito (curso,prerrequisito)
VALUES ('DNO020','DNO003');
INSERT INTO es_prerrequisito (curso,prerrequisito)
VALUES ('DNO020','DNO004');



INSERT INTO rol (nombre,nacceso)
VALUES ('profesor','2');
INSERT INTO rol (nombre,nacceso)
VALUES ('funcionario','3');
INSERT INTO rol (nombre,nacceso)
VALUES ('alumno pregrado','4');
INSERT INTO rol (nombre,nacceso)
VALUES ('alumno postgrado','4');
INSERT INTO rol (nombre,nacceso)
VALUES ('alumno intercambio','4');
INSERT INTO rol (nombre,nacceso)
VALUES ('administrador','1');




INSERT INTO tiene_rol (username,rol_id)
VALUES ('pdelsolf','1');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('ftello','1');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('clehuede','1');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('treyes','1');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('adelsol1','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('camelio','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('ffuto','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('adelsol','5');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('ppiero','6');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('sicastro','4');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('mamello','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('rvcalderon','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('jmleighton','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('ffutos','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('adelsol5','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('hsimonetti','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('clehuede4','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('fatmagul','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('treyes1','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('pdelsol','1');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('glund','3');
INSERT INTO tiene_rol (username,rol_id)
VALUES ('glund2','3');


INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol1','8','55');
INSERT INTO inscribe (username,curso_id)
VALUES ('adelsol1','1');
INSERT INTO inscribe (username,curso_id)
VALUES ('adelsol1','5');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol1','9','48');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol1','10','43');
INSERT INTO inscribe (username,curso_id)
VALUES ('adelsol1','6');
INSERT INTO inscribe (username,curso_id)
VALUES ('adelsol5','1');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol5','7','50');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol5','8','65');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('rvcalderon','8','55');
INSERT INTO inscribe (username,curso_id)
VALUES ('rvcalderon','1');
INSERT INTO inscribe (username,curso_id)
VALUES ('rvcalderon','5');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('rvcalderon','9','62');
INSERT INTO inscribe (username,curso_id)
VALUES ('rvcalderon','6');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('rvcalderon','10','40');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('jmleighton','8','55');
INSERT INTO inscribe (username,curso_id)
VALUES ('jmleighton','1');
INSERT INTO inscribe (username,curso_id)
VALUES ('jmleighton','5');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol','9','53');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol','10','56');
INSERT INTO inscribe (username,curso_id)
VALUES ('adelsol','6');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol','3','45');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('hsimonetti','3','54');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('clehuede4','3','45');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('sicastro','3','54');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('camelio','3','25');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('ffutos','3','68');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('ffuto','3','36');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('ffuto','9','36');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('ffutos','9','49');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('elmagro','9','49');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('elmagro','13','39');
INSERT INTO inscribe (username,curso_id)
VALUES ('elmagro','18');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('elmagro','14','55');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('elmagro','15','50');
INSERT INTO inscribe (username,curso_id)
VALUES ('elmagro','16');
INSERT INTO inscribe (username,curso_id)
VALUES ('elmagro','17');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol','19','45');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol','23','45');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol','21','45');
INSERT INTO inscribe (username,curso_id,nota)
VALUES ('adelsol','22','45');



