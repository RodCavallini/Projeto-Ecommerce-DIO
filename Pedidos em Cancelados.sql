USE LojaOnline;

SELECT 
    p.PedidoID,
    c.Nome AS Cliente,
    pr.Nome AS Produto,
    ip.Quantidade,
    ip.PrecoUnitario,
    p.DataPedido
FROM Pedidos p
JOIN Clientes c ON p.ClienteID = c.ClienteID
JOIN ItensPedido ip ON p.PedidoID = ip.PedidoID
JOIN Produtos pr ON ip.ProdutoID = pr.ProdutoID
WHERE LOWER(TRIM(p.StatusPedido)) = 'cancelado'
ORDER BY p.DataPedido DESC;


