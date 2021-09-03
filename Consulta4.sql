--Ingresos por anio en el centro
select 
YEAR(Periodo_rehabiltacion.Periodo_inicia) as Año,
SUM(Periodo_rehabiltacion.Costo) as Ingresos
from Periodo_rehabiltacion 
where YEAR(Periodo_rehabiltacion.Periodo_inicia)=2020 
GROUP BY YEAR(Periodo_rehabiltacion.Periodo_inicia)