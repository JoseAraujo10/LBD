use Hotel

create function FechaConLetras (@fecha as date)
returns varchar(20)
begin
declare @resultado varchar(20)
set @resultado=concat(day(@fecha),' de ', datename(month,@fecha),' del ',year(@fecha))
return @resultado
end

select dbo.FechaConLetras('2019-02-11') as [Fecha Actual]

create trigger AltaEmpleado 
on Empleados for insert 
as 
begin 
insert into Historial values (getdate(),'Alta Empleado', system_user)
end

create procedure Recepcionistas
as select * from Empleados where idPuesto=1
exec Recepcionistas

create procedure EmpleadasDeLimpieza
as select * from Empleados where idPuesto=2
exec EmpleadasDeLimpieza

create procedure Gerentes
as select * from Empleados where idPuesto=3
exec Gerentes

create procedure Botones
as select * from Empleados where idPuesto=4
exec Botones

create procedure ReservacionesPorTrabajo
as select * from Reservaciones where MotivoVisita='Trabajo'
exec ReservacionesPorTrabajo