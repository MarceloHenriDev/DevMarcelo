SELECT
a.pvenda,
g.tipo,
f.codgrupo,
b.precofixo,
f.coditem
FROM PCTABPR A, PCPRODUT B, PCPRECOPROM C, 
PCDESCONTO D, PCCLIENT E, PCGRUPOSCAMPANHAI F, 
PCGRUPOSCAMPANHAC G, PCPOLITICADESCFINAN I

--AMARRACAO A B C
WHERE A.CODPROD = B.CODPROD
AND C.NUMREGIAO = A.numregiao
AND C.codprod = B.CODPROD

--AMARRACAO D E F

AND D.CODCLI = E.codcli
AND F.CODITEM = E.codcli
AND D.codcli = F.CODITEM

--AMARRACAO G I F

AND G.codgrupo = F.codgrupo
AND I.numregiao = A.numregiao
AND I.codcliente = E.CODCLI
and a.numregiao = 17

group by 

a.pvenda,
g.tipo,
f.codgrupo,
b.precofixo,
f.coditem
