-- Crearemos una tabla muy simple para probar el poder de PL SQL
CREATE TABLE DANCE(ID_DANCE INTEGER, NOMBRE VARCHAR2(40), EDAD INTEGER);
--PRENDEMOS EL SERVIDOR EN MODO DE DESARROLLADOR
SET SERVEROUTPUT ON; 
--VAMOS A EMPEZAR CON UN BLOQUE DE PL SQL
DECLARE 
-- AQUI SE DECLARAN LAS VARIABLES A USARSE 
EDAD INTEGER;
YEARS INTEGER;
BEGIN
--AQUI LA LOGICA DE TU PROGRAMA
YEARS:=22;
EDAD:=YEARS*365;

DBMS_OUTPUT.PUT_LINE('TU EDAD EN DIAS ES ' || EDAD);
END;
/
--crear un bloque PL SQL que genere 200 mil ciclos de manera ascendente 
BEGIN 

FOR I IN 1..200000 LOOP
INSERT INTO DANCE VALUES(I,'SALAS',22);

END LOOP;
END;
/
--HACEMOS UN SELECT PARA VER QUE DIABLOS HISO
SELECT * FROM DANCE;
--SISTEMITA DE PELICULAS Y LA DE SALA SERA DE TAREA
CREATE TABLE PELICULA (ID_PELICULA INTEGER,
                        TITULO VARCHAR2(120),
                        SINOPSIS VARCHAR2(500),
                        CLASIFICACION VARCHAR2(5),
                        CONSTRAINT PK_ID_PELICULA PRIMARY KEY(ID_PELICULA)
                        );
                        DESCRIBE PELICULA;
CREATE TABLE HORARIO (ID_HORARIO INTEGER,
                      ID_PELICULA INTEGER,
                      HORARIO VARCHAR(8),
                      CONSTRAINT PKL_ID_HORARIO PRIMARY KEY(ID_HORARIO),
                      CONSTRAINT FK1_ID_PELICULA FOREIGN KEY (ID_PELICULA) REFERENCES PELICULA (ID_PELICULA)
                      );
                        



