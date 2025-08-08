SELECT 
    p.PedidoID,
    p.StatusPedido,
    e.StatusEntrega,
    e.DataEnvio,
    e.DataEntrega,
    DATEDIFF(NOW(), e.DataEnvio) AS DiasDesdeEnvio
FROM Pedidos p
JOIN Entregas e ON p.PedidoID = e.PedidoID
WHERE 
    e.DataEntrega IS NULL
    AND e.DataEnvio IS NOT NULL
    AND DATEDIFF(NOW(), e.DataEnvio) > 0;
