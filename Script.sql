CREATE TABLE cliente(
	id SERIAL PRIMARY KEY,
	nombre VARCHAR (50) NOT NULL,
	email VARCHAR (50) NOT NULL,
	telefono VARCHAR (50) NOT NULL,
	direccion VARCHAR (50) NOT NULL,
	fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE prestamo(
	id SERIAL PRIMARY KEY,
	monto DECIMAL (15,2) NOT NULL,
	interes DECIMAL (3,2) NOT NULL,
	duracion_meses INTEGER NOT NULL,
	estado VARCHAR (50) NOT NULL,
	fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	id_cliente INTEGER REFERENCES cliente(id) NOT NULL
);

CREATE TABLE historial_prestamo(
	id SERIAL PRIMARY KEY,
	id_prestamo INTEGER REFERENCES prestamo(id) NOT NULL,
	monto DECIMAL (15,2) NOT NULL,
	estado VARCHAR (50) NOT NULL,
	fecha_creacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
	fecha_actualizacion TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP
);

INSERT INTO public.cliente(nombre, email, telefono, direccion)
VALUES ('Andres Norena', 'andres.norena@yahoo.com', '3201234562', 'Carrea 123 # 45-67');

INSERT INTO public.cliente(nombre, email, telefono, direccion)
VALUES ('Manuel Cediel', 'manuel.cediel@yahoo.com', '3219543264', 'Avenida 70 # 32-57');

INSERT INTO public.cliente(nombre, email, telefono, direccion)
VALUES ('Julian Vasquez', 'julian.vasquez@yahoo.com', '3132548632', 'Calle 45 # 67-89');

INSERT INTO public.cliente(nombre, email, telefono, direccion)
VALUES ('Juliana Galviz', 'juliana.galviz@yahoo.com', '3105453265', 'Carrera 23 # 45-67');

INSERT INTO public.cliente(nombre, email, telefono, direccion)
VALUES ('Viviana Gomez', 'viviana.gomez@yahoo.com', '3054532657', 'Calle 33 # 25-67');