INSERT INTO Clientes (TipoPessoa, Nome, Email, Telefone, Endereco, CPF, CNPJ)
VALUES
('PF', 'Ana Silva', 'ana.silva@email.com', '11999990001', 'Rua A, São Paulo', '123.456.789-00', NULL),
('PJ', 'Tech Solutions Ltda', 'contato@techsolutions.com', '11999990002', 'Av B, São Paulo', NULL, '12.345.678/0001-99'),
('PF', 'Carlos Souza', 'carlos.souza@email.com', '11999990003', 'Rua C, São Paulo', '987.654.321-00', NULL),
('PJ', 'Logística BR', 'logistica@br.com', '11999990004', 'Av D, São Paulo', NULL, '98.765.432/0001-88'),
('PF', 'Beatriz Lima', 'beatriz.lima@email.com', '11999990005', 'Rua E, São Paulo', '111.222.333-44', NULL),
('PJ', 'Construtora Alpha', 'alpha@construtora.com', '11999990006', 'Av F, São Paulo', NULL, '22.333.444/0001-55'),
('PF', 'Daniel Costa', 'daniel.costa@email.com', '11999990007', 'Rua G, São Paulo', '555.666.777-88', NULL),
('PJ', 'Serviços Beta', 'beta@servicos.com', '11999990008', 'Av H, São Paulo', NULL, '33.444.555/0001-66'),
('PF', 'Fernanda Rocha', 'fernanda.rocha@email.com', '11999990009', 'Rua I, São Paulo', '999.888.777-66', NULL),
('PJ', 'Distribuidora Zeta', 'zeta@distribuidora.com', '11999990010', 'Av J, São Paulo', NULL, '44.555.666/0001-77'),
('PF', 'Gustavo Martins', 'gustavo.martins@email.com', '11999990011', 'Rua K, São Paulo', '222.333.444-55', NULL),
('PJ', 'Agência Criativa', 'contato@criativa.com', '11999990012', 'Av L, São Paulo', NULL, '55.666.777/0001-88'),
('PF', 'Helena Dias', 'helena.dias@email.com', '11999990013', 'Rua M, São Paulo', '666.777.888-99', NULL),
('PJ', 'Consultoria Omega', 'omega@consultoria.com', '11999990014', 'Av N, São Paulo', NULL, '66.777.888/0001-99'),
('PF', 'Igor Almeida', 'igor.almeida@email.com', '11999990015', 'Rua O, São Paulo', '777.888.999-00', NULL),
('PJ', 'Financeira Delta', 'delta@financeira.com', '11999990016', 'Av P, São Paulo', NULL, '77.888.999/0001-00'),
('PF', 'Juliana Freitas', 'juliana.freitas@email.com', '11999990017', 'Rua Q, São Paulo', '888.999.000-11', NULL),
('PJ', 'Transportes Sigma', 'sigma@transportes.com', '11999990018', 'Av R, São Paulo', NULL, '88.999.000/0001-11'),
('PF', 'Lucas Pereira', 'lucas.pereira@email.com', '11999990019', 'Rua S, São Paulo', '999.000.111-22', NULL),
('PJ', 'Eventos Epsilon', 'epsilon@eventos.com', '11999990020', 'Av T, São Paulo', NULL, '99.000.111/0001-22');

INSERT INTO Pagamentos (ClienteID, TipoPagamento, Detalhes)
VALUES
(1, 'Pix', 'Chave aleatória'),
(2, 'Boleto', 'Vencimento em 5 dias'),
(3, 'CartaoCredito', 'Visa final 1234'),
(4, 'CartaoDebito', 'Master final 5678'),
(5, 'Pix', 'CPF como chave'),
(6, 'Transferencia', 'Banco XPTO'),
(7, 'CartaoCredito', 'Amex final 9999'),
(8, 'Pix', 'Telefone como chave'),
(9, 'Boleto', 'Vencimento em 3 dias'),
(10, 'CartaoDebito', 'Elo final 1111'),
(11, 'Pix', 'Email como chave'),
(12, 'CartaoCredito', 'Visa final 2222'),
(13, 'Transferencia', 'Banco ABC'),
(14, 'Pix', 'Chave aleatória'),
(15, 'CartaoDebito', 'Master final 3333'),
(16, 'Boleto', 'Vencimento em 7 dias'),
(17, 'CartaoCredito', 'Visa final 4444'),
(18, 'Pix', 'Telefone como chave'),
(19, 'Transferencia', 'Banco XPTO'),
(20, 'CartaoDebito', 'Elo final 5555');

INSERT INTO Produtos (Nome, Descricao, Preco, Estoque, Categoria)
VALUES
('Notebook', 'Intel i5, 8GB RAM', 3500.00, 10, 'Informática'),
('Mouse', 'Óptico USB', 50.00, 100, 'Acessórios'),
('Teclado', 'Mecânico RGB', 250.00, 50, 'Acessórios'),
('Monitor', '24" LED', 800.00, 20, 'Informática'),
('Impressora', 'Multifuncional', 600.00, 15, 'Periféricos'),
('Cadeira Gamer', 'Ergonômica', 1200.00, 5, 'Móveis'),
('Smartphone', 'Android 128GB', 2000.00, 30, 'Celulares'),
('Fone Bluetooth', 'Sem fio', 300.00, 40, 'Áudio'),
('HD Externo', '1TB USB 3.0', 400.00, 25, 'Armazenamento'),
('Pen Drive', '64GB', 80.00, 60, 'Armazenamento'),
('Webcam', 'Full HD', 150.00, 35, 'Periféricos'),
('Roteador', 'Dual Band', 250.00, 20, 'Redes'),
('Tablet', '10" Android', 1500.00, 12, 'Celulares'),
('Caixa de Som', 'Bluetooth', 220.00, 18, 'Áudio'),
('Microfone', 'Condensador USB', 350.00, 10, 'Áudio'),
('Estabilizador', '500VA', 180.00, 8, 'Energia'),
('Fonte ATX', '600W', 300.00, 14, 'Energia'),
('Placa de Vídeo', 'RTX 3060', 2800.00, 6, 'Hardware'),
('Memória RAM', '16GB DDR4', 400.00, 20, 'Hardware'),
('SSD', '512GB NVMe', 500.00, 22, 'Armazenamento');

INSERT INTO Pedidos (ClienteID, StatusPedido)
VALUES
(1, 'Pendente'), (2, 'Processando'), (3, 'Enviado'), (4, 'Entregue'), (5, 'Cancelado'),
(6, 'Pendente'), (7, 'Processando'), (8, 'Enviado'), (9, 'Entregue'), (10, 'Cancelado'),
(11, 'Pendente'), (12, 'Processando'), (13, 'Enviado'), (14, 'Entregue'), (15, 'Cancelado'),
(16, 'Pendente'), (17, 'Processando'), (18, 'Enviado'), (19, 'Entregue'), (20, 'Cancelado');


INSERT INTO ItensPedido (PedidoID, ProdutoID, Quantidade, PrecoUnitario)
VALUES
(1, 1, 1, 3500.00),
(2, 2, 2, 50.00),
(3, 3, 1, 250.00),
(4, 4, 1, 800.00),
(5, 5, 1, 600.00),
(6, 6, 1, 1200.00),
(7, 7, 1, 2000.00),
(8, 8, 2, 300.00),
(9, 9, 1, 400.00),
(10, 10, 3, 80.00),
(11, 11, 1, 150.00),
(12, 12, 1, 250.00),
(13, 13, 1, 1500.00),
(14, 14, 2, 220.00),
(15, 15, 1, 350.00),
(16, 16, 1, 180.00),
(17, 17, 1, 300.00),
(18, 18, 1, 2800.00),
(19, 19, 2, 400.00),
(20, 20, 1, 500.00);


INSERT INTO Entregas (PedidoID, StatusEntrega, CodigoRastreio, DataEnvio, DataEntrega)
VALUES
(1, 'Preparando', 'BR1234567890', NOW(), NULL),
(2, 'EmTransito', 'BR2234567890', NOW(), NULL),
(3, 'Entregue', 'BR3234567890', NOW(), NOW()),
(4, 'Entregue', 'BR4234567890', NOW(), NOW()),
(5, 'Atrasado', 'BR5234567890', NOW(), NULL),
(6, 'Preparando', 'BR6234567890', NOW(), NULL),
(7, 'EmTransito', 'BR7234567890', NOW(), NULL),
(8, 'Entregue', 'BR8234567890', NOW(), NOW()),
(9, 'Entregue', 'BR9234567890', NOW(), NOW()),
(10, 'Atrasado', 'BR1034567890', NOW(), NULL),
(11, 'Preparando', 'BR1134567890', NOW(), NULL),
(12, 'EmTransito', 'BR1234567891', NOW(), NULL),
(13, 'Entregue', 'BR1334567891', NOW(), NOW()),
(14, 'Entregue', 'BR1434567891', NOW(), NOW()),
(15, 'Atrasado', 'BR1534567891', NOW(), NULL),
(16, 'Preparando', 'BR1634567891', NOW(), NULL),
(17, 'EmTransito', 'BR1734567891', NOW(), NULL),
(18, 'Entregue', 'BR1834567891', NOW(), NOW()),
(19, 'Entregue', 'BR1934567891', NOW(), NOW()),
(20, 'Atrasado', 'BR2034567891', NOW(), NULL);
