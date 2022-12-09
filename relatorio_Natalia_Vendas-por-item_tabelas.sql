-- cliente info
SELECT 
    Clientes.codcli     AS cliente_cod,
    Clientes.cliente    AS cliente_nome,
    tipoempresa,
    tipofj
FROM 
    pcclient Clientes

--vendedor info
SELECT 
    codusur             vendedor_RCA,
    nome                vendedor_Nome
FROM 
    pcusuari Usuarios

--venda info
SELECT
    numped              pedido_num,
    data                pedido_data,
    codcli              cliente_cod,
    codprod             produto_cod,
    codusur             vendedor_cod,
    vlcustofin          valor_custo_fin, 
    pvenda              valor_venda,
    qt                  venda_quanti,
    perdesc             venda_desconto,
    percom              venda_comissao
FROM 
    pcpedi Pedido

-- produto info
select 
    codprod             produto_cod,
    descricao           produto
from 
pcprodut Produto
