--Cada paciente por cuantos especialistas es atendido


select 
Persona_Adicta.Persona_id,
CAST(Persona_Adicta.Persona_Nombre AS varchar(10)) as Nombre_Persona,
CAST(Persona_Adicta.Persona_Apellido AS varchar(10)) as Apellidos_Persona,
COUNT(DISTINCT  Atencion.Especialista_id) AS Numero_Especialistas
from Persona_Adicta
inner join Atencion on Persona_Adicta.Persona_id=Atencion.Persona_id
inner join Especialista on Especialista.Especialista_id = Atencion.Especialista_id
group by  Persona_Adicta.Persona_id,CAST(Persona_Adicta.Persona_Nombre AS varchar(10)),CAST(Persona_Adicta.Persona_Apellido AS varchar(10))
order by CAST(Persona_Adicta.Persona_Nombre AS varchar(10))
go