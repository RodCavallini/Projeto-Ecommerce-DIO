USE LojaOnline;

SELECT 
    pr.ProdutoID,
    pr.Nome AS Produto,
    SUM(ip.Quantidade) AS QuantidadeVendida,
    SUM(ip.Quantidade * ip.PrecoUnitario) AS ValorTotalVendido
FROM Produtos pr
JOIN ItensPedido ip ON pr.ProdutoID = ip.ProdutoID
JOIN Pedidos p ON ip.PedidoID = p.PedidoID
WHERE LOWER(TRIM(p.StatusPedido)) = 'entregue'
GROUP BY pr.ProdutoID, pr.Nome
ORDER BY QuantidadeVendida DESC;
