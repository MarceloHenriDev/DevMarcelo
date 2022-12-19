select 
sum(a.pvenda*a.qt) valor
from pcpedi  a, pcpedc b, pcprodut c, pcfornec d 
where b.DATA BETWEEN '01-jul-2022' and '31-jul-2022' 
and c.codfornec = d.codfornec 
and a.numped = b.numped
--and d.codfornec = 190
---and D.fornecedor like '%PORTOBELLO%'
AND A.CODPROD = 33792
AND A.CODPROD = C.CODPROD
