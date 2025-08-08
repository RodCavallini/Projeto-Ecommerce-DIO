USE LojaOnline;

SELECT 
    c.ClienteID,
    c.Nome AS Cliente,
    COUNT(p.PedidoID) AS QuantidadePedidos,
    SUM(ip.Quantidade * ip.PrecoUnitario) AS ValorTotalComprado
FROM Clientes c
JOIN Pedidos p ON c.ClienteID = p.ClienteID
JOIN ItensPedido ip ON p.PedidoID = ip.PedidoID
WHERE LOWER(TRIM(p.StatusPedido)) = 'entregue'
GROUP BY c.ClienteID, c.Nome
ORDER BY ValorTotalComprado DESC
LIMIT 5;

