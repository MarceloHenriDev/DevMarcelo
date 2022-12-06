update pcclient set condvenda5='N',condvenda11='N',condvenda13='N',condvenda14='N'
where tipofj='F' and (cgcent like '%111%' or cgcent like '%222%' or cgcent like '%333%')
and condvenda5='S'


--10 cadastros errados :(
