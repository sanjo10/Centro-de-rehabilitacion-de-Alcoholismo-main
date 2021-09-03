--Cuantas veces ha sido utilizada cada instalacion
select 
CAST(Instalacion.Instalacion_nombre AS varchar(10)) as Instalacion ,
count(Uso_Instalacion.Instalacion_id) as Numero_utilizaciones
from Instalacion
inner join Uso_Instalacion on Uso_Instalacion.Instalacion_id=Instalacion.Instalacion_id
group by CAST(Instalacion.Instalacion_nombre AS varchar(10))
go