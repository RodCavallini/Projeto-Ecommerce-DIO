SELECT 
    c.ClienteID,
    c.Nome,
    COUNT(p.PedidoID) AS TotalPedidos
FROM 
    Clientes c
LEFT JOIN 
    Pedidos p ON c.ClienteID = p.ClienteID
GROUP BY 
    c.ClienteID, c.Nome
ORDER BY 
    TotalPedidos DESC;