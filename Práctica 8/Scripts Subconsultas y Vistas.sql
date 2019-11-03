use Hotel

select * from Habitaciones where idEstadoHabitacion = (select idEstadoHabitacion from Estado_Habitacion where idEstadoHabitacion=2)

with EmpleadosAmericanos as (select * from Pais where idPais=13)
select EmpleadosAmericanos.*, e.Nombre_Empleado from EmpleadosAmericanos inner join Empleados e on EmpleadosAmericanos.idPais=e.idPais

select Nombre_Huesped,ApellidoP_Huesped into ClientesDeEUA from Huesped where idPais=13
select * from ClientesDeEUA

create view HabitacionesDisponibles as select * from Habitaciones where idEstadoHabitacion=2
create view HabitacionesOcupadas as select * from Habitaciones where idEstadoHabitacion=1
create view SevicioPiscina as select * from Servicios where idTipoServicio=2
create view HabitacionesIndividuales as select * from Habitaciones where idTipoHabitacion=1
create view HabitacionesMatrimoniales as select * from Habitaciones where idTipoHabitacion=3





