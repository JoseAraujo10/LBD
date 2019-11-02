use Hotel

select * from Empleados e inner join Pais as p on p.idPais=e.idPais order by p.idPais
select * from Huesped h inner join Pais as p on p.idPais=h.idPais order by p.idPais
select * from Empleados e inner join Ciudad as c on c.idCiudad=e.idCiudad order by c.idCiudad
select * from Huesped h inner join Ciudad as c on c.idCiudad=h.idCiudad order by c.idCiudad
select * from Empleados e inner join Estado as s on s.idEstado=e.idEstado order by s.idEstado
select * from Huesped h inner join Estado as s on s.idEstado=h.idEstado order by s.idEstado
select * from Habitaciones h inner join Estado_Habitacion as e on e.idEstadoHabitacion=h.idEstadoHabitacion
select * from Empleados e inner join Puesto_Empleado as p on p.idPuesto=e.idPuesto 
select * from Servicios s inner join Tipo_Servicios as t on t.idTipoServicio=s.idTipoServicio
select * from Reservaciones r inner join Temporada as t on t.idTemporada=r.idTemporada

select count(e.idEmpleado), e.idPais from Empleados e inner join Pais as p on p.idPais=e.idPais group by e.idPais
select count(h.idHuesped), h.idPais from Huesped h inner join Pais as p on p.idPais=h.idPais group by h.idPais
select count(e.idEmpleado), e.idCiudad from Empleados e inner join Ciudad as c on c.idCiudad=e.idCiudad group by e.idCiudad
select count(h.idHuesped), h.idCiudad from Huesped h inner join Ciudad as c on c.idCiudad=h.idCiudad group by h.idCiudad
select count(e.idEmpleado), e.idEstado from Empleados e inner join Estado as s on s.idEstado=e.idEstado group by e.idEstado
select count(h.idHuesped), h.idEstado from Huesped h inner join Estado as s on s.idEstado=h.idEstado group by h.idEstado
select count(h.idHabitacion), h.idEstadoHabitacion from Habitaciones h inner join Estado_Habitacion as e on e.idEstadoHabitacion=h.idEstadoHabitacion group by h.idEstadoHabitacion
select count(e.idEmpleado), e.idPuesto from Empleados e inner join Puesto_Empleado as p on p.idPuesto=e.idPuesto group by e.idPuesto
select count (s.idServicio), s.idTipoServicio from Servicios s inner join Tipo_Servicios as t on t.idTipoServicio=s.idTipoServicio group by s.idTipoServicio
select count (r.idReservacion), r.idTemporada from Reservaciones r inner join Temporada as t on t.idTemporada=r.idTemporada group by r.idTemporada

