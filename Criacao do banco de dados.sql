-- Cria o banco de dados se não existir
CREATE schema IF NOT EXISTS LojaOnline;
USE LojaOnline;

-- Tabela de Clientes (PF ou PJ em uma única tabela)
CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY AUTO_INCREMENT,
    TipoPessoa ENUM('PF', 'PJ') NOT NULL,
    Nome VARCHAR(100) NOT NULL,
    Email VARCHAR(100) UNIQUE NOT NULL,
    Telefone VARCHAR(20),
    Endereco TEXT,
    CPF VARCHAR(14),         
    CNPJ VARCHAR(18),        
    DataCadastro DATETIME DEFAULT CURRENT_TIMESTAMP
);

-- Tabela de Formas de Pagamento
CREATE TABLE Pagamentos (
    PagamentoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    TipoPagamento ENUM('CartaoCredito', 'CartaoDebito', 'Pix', 'Boleto', 'Transferencia') NOT NULL,
    Detalhes TEXT,
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Tabela de Produtos
CREATE TABLE Produtos (
    ProdutoID INT PRIMARY KEY AUTO_INCREMENT,
    Nome VARCHAR(100) NOT NULL,
    Descricao TEXT,
    Preco DECIMAL(10, 2) NOT NULL,
    Estoque INT DEFAULT 0,
    Categoria VARCHAR(50)
);

-- Tabela de Pedidos
CREATE TABLE Pedidos (
    PedidoID INT PRIMARY KEY AUTO_INCREMENT,
    ClienteID INT NOT NULL,
    DataPedido DATETIME DEFAULT CURRENT_TIMESTAMP,
    StatusPedido ENUM('Pendente', 'Processando', 'Enviado', 'Entregue', 'Cancelado') DEFAULT 'Pendente',
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID)
);

-- Tabela de Itens do Pedido
CREATE TABLE ItensPedido (
    ItemID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    ProdutoID INT NOT NULL,
    Quantidade INT NOT NULL,
    PrecoUnitario DECIMAL(10, 2) NOT NULL,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID),
    FOREIGN KEY (ProdutoID) REFERENCES Produtos(ProdutoID)
);

-- Tabela de Entrega
CREATE TABLE Entregas (
    EntregaID INT PRIMARY KEY AUTO_INCREMENT,
    PedidoID INT NOT NULL,
    StatusEntrega ENUM('Preparando', 'EmTransito', 'Entregue', 'Atrasado') DEFAULT 'Preparando',
    CodigoRastreio VARCHAR(50),
    DataEnvio DATETIME,
    DataEntrega DATETIME,
    FOREIGN KEY (PedidoID) REFERENCES Pedidos(PedidoID)
);
