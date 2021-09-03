--Listado por cada tipo de seguimiento 
select
CAST(Seguimiento.Seguimiento_Calificacion AS varchar(10)) as Calificacion ,
count(Seguimiento.Seguimiento_id) as Cantidad_Calificacion
from Seguimiento
group by CAST(Seguimiento.Seguimiento_Calificacion AS varchar(10))
go