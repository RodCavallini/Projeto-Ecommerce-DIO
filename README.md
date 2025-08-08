# 🛒 LojaOnline – Banco de Dados para E-commerce

Este projeto contém o schema de um banco de dados relacional para uma loja online. Ele foi projetado para armazenar informações sobre clientes, pedidos, produtos e itens vendidos, permitindo análises de vendas, comportamento de clientes e gestão de estoque.

## 📦 Funcionalidades

- Cadastro de clientes e produtos  
- Registro de pedidos e itens vendidos  
- Relatórios de vendas e desempenho  
- Consultas para identificar clientes e produtos mais relevantes  

## ⚙️ Instalação

### 1. Criar o banco de dados

```sql
CREATE DATABASE LojaOnline;
USE LojaOnline;
```

### 2. Criar as tabelas

```
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Email VARCHAR(100),
    Telefone VARCHAR(20)
);

CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY,
    Nome VARCHAR(100),
    Descricao TEXT,
    Preco DECIMAL(10,2),
    Estoque INT
);

CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY,
    ClienteID INT,
    DataPedido DATE,
    StatusPedido VARCHAR(50),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

CREATE TABLE ItensPedido (
    ItemID INT PRIMARY KEY,
    PedidoID INT,
    ProdutoID INT,
    Quantidade INT,
    PrecoUnitario DECIMAL(10,2),
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);

```

### 3. Inserir dados de exemplo

```
INSERT INTO Clientes VALUES 
(1, 'Ana Silva', 'ana@email.com', '11999999999'),
(2, 'Carlos Souza', 'carlos@email.com', '11988888888'),
(3, 'Juliana Costa', 'juliana@email.com', '11977777777');

INSERT INTO Produtos VALUES 
(1, 'Notebook', 'Notebook Dell i5', 3500.00, 10),
(2, 'Mouse', 'Mouse sem fio Logitech', 120.00, 50),
(3, 'Teclado', 'Teclado mecânico RGB', 250.00, 30);

INSERT INTO Pedidos VALUES 
(1, 1, '2025-08-01', 'Concluido'),
(2, 2, '2025-08-02', 'Concluido'),
(3, 1, '2025-08-03', 'Cancelado'),
(4, 3, '2025-08-04', 'Concluido');

INSERT INTO ItensPedido VALUES 
(1, 1, 1, 1, 3500.00),
(2, 2, 2, 2, 120.00),
(3, 3, 3, 1, 250.00),
(4, 4, 2, 1, 120.00),
(5, 4, 3, 2, 250.00);

```
### 🧭 Diagrama ER (texto)
```
Clientes (ClienteID) ────┐
                         │
                     Pedidos (PedidoID) ────┐
                                            │
                      ItensPedido (ItemID) ─┼─── Produtos (ProdutoID)

```

## 📊 Consultas Úteis

### 🔝 Top 5 clientes que mais gastam
```
SELECT 
    c.ClienteID,
    c.Nome,
    SUM(ip.Quantidade * ip.PrecoUnitario) AS ValorTotalGasto
FROM Clientes c
JOIN Pedidos p ON c.ClienteID = p.ClienteID
JOIN ItensPedido ip ON p.PedidoID = ip.PedidoID
WHERE LOWER(TRIM(p.StatusPedido)) = 'concluido'
GROUP BY c.ClienteID, c.Nome
ORDER BY ValorTotalGasto DESC
LIMIT 5;
```
### 📦 Produtos mais vendidos

```

SELECT 
    pr.ProdutoID,
    pr.Nome,
    SUM(ip.Quantidade) AS QuantidadeVendida,
    SUM(ip.Quantidade * ip.PrecoUnitario) AS ValorTotalVendido
FROM Produtos pr
JOIN ItensPedido ip ON pr.ProdutoID = ip.ProdutoID
JOIN Pedidos p ON ip.PedidoID = p.PedidoID
WHERE LOWER(TRIM(p.StatusPedido)) = 'concluido'
GROUP BY pr.ProdutoID, pr.Nome
ORDER BY QuantidadeVendida DESC;

```
## 🧠 Autor
 Rodrigo – Desenvolvedor e idealizador do projeto LojaOnline 📍 São Paulo, Brasil

