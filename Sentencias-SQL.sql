INSERT INTO cliente (nombre_cliente, ubicacion_cliente, estado_cliente) VALUES ('Parque La Libertad', 'Desamparados', 1);
INSERT INTO cliente (nombre_cliente, ubicacion_cliente, estado_cliente) VALUES ('Mall San Pedro', 'Montes de Oca', 1);
INSERT INTO cliente (nombre_cliente, ubicacion_cliente, estado_cliente) VALUES ('GREE', 'Estados Unidos', 0);

INSERT INTO Proyecto ( id_cliente, tipo_proyecto, nombre_proyecto, precio_hora ) VALUES ( 1, 1, 'Rediseño sitio web', 25 );
INSERT INTO Proyecto ( id_cliente, tipo_proyecto, nombre_proyecto, precio_hora ) VALUES ( 1, 2, 'Desarrollo sitio web', 30 );
INSERT INTO Proyecto ( id_cliente, tipo_proyecto, nombre_proyecto, precio_hora ) VALUES ( 2, 1, 'HR Portal', 35 );

INSERT INTO colaborador ( cedula_colaborador, nombre_colaborador, puesto_colaborador, estado_colaborador ) VALUES ( 11111111, 'Laurem Ipsum', 'Diseñador', 1 );
INSERT INTO colaborador ( cedula_colaborador, nombre_colaborador, puesto_colaborador, estado_colaborador ) VALUES ( 22222222, 'Manny Ger', 'PM', 1 );
INSERT INTO colaborador ( cedula_colaborador, nombre_colaborador, puesto_colaborador, estado_colaborador ) VALUES ( 33333333, 'Dave Loper', 'Desarrollador', 1 );
INSERT INTO colaborador ( cedula_colaborador, nombre_colaborador, puesto_colaborador, estado_colaborador ) VALUES ( 44444444, 'Adam Inistrator', 'Administrador', 0 );

INSERT INTO tarea ( id_proyecto, nombre_tarea, cobrable ) VALUES ( 1, 'Desarrollo', 1 );
INSERT INTO tarea ( id_proyecto, nombre_tarea, cobrable ) VALUES ( 1, 'Developer Onboarding', 0 );
INSERT INTO tarea ( id_proyecto, nombre_tarea, cobrable ) VALUES ( 2, 'PM', 1 );

INSERT INTO reporte_semanal ( fecha_inicio_reporte, id_colaborador, cantidad_total_horas_reporte, estado_reporte, fecha_envio_reporte ) VALUES ( 1436745600, 1, 40, 1, 1437350400 );

INSERT INTO registro_horas ( id_reporte, id_colaborador, id_tarea, descripcion_registro, fecha_registro, cantidad_horas ) VALUES ( 1, 3, 2, 'Setup Env', 1436745600, 8 );
INSERT INTO registro_horas ( id_reporte, id_colaborador, id_tarea, descripcion_registro, fecha_registro, cantidad_horas ) VALUES ( 1, 3, 1, 'P-01', 1436832000, 8  );
INSERT INTO registro_horas ( id_reporte, id_colaborador, id_tarea, descripcion_registro, fecha_registro, cantidad_horas ) VALUES ( 1, 3, 1, 'P-02', 1436918400, 8 );
INSERT INTO registro_horas ( id_reporte, id_colaborador, id_tarea, descripcion_registro, fecha_registro, cantidad_horas ) VALUES ( 1, 3, 1, 'P-03', 1437004800, 8 );
INSERT INTO registro_horas ( id_reporte, id_colaborador, id_tarea, descripcion_registro, fecha_registro, cantidad_horas ) VALUES ( 1, 3, 1, 'P-04', 1437091200, 8 );

DELETE FROM registro_horas
where descripcion_registro = 'P-01';

update reporte_semanal
set cantidad_total_horas_reporte = 36
where fecha_inicio_reporte = 1436140800;