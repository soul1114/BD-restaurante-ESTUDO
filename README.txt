Tabelas
1. FUNCIONARIOS
Esta tabela armazena os dados dos funcionários do restaurante.

Colunas:

id_funcionario (INT, PRIMARY KEY, AUTO_INCREMENT): Identificador único para cada funcionário.

nome (VARCHAR(255), NOT NULL): Nome completo do funcionário.

cpf (VARCHAR(14), UNIQUE, NOT NULL): CPF do funcionário.

data_nascimento (DATE, NOT NULL): Data de nascimento do funcionário.

endereco (VARCHAR(255), NOT NULL): Endereço residencial do funcionário.

telefone (VARCHAR(15)): Número de telefone do funcionário.

email (VARCHAR(255), UNIQUE): E-mail do funcionário.

cargo (VARCHAR(100), NOT NULL): Cargo do funcionário no restaurante.

salario (DECIMAL(10,2), NOT NULL): Salário do funcionário.

data_admissao (DATE, NOT NULL): Data de admissão do funcionário no restaurante.

2. clientes
Esta tabela armazena os dados dos clientes do restaurante.

Colunas:

id_cliente (INT, PRIMARY KEY, AUTO_INCREMENT): Identificador único para cada cliente.

nome (VARCHAR(255), NOT NULL): Nome completo do cliente.

cpf (VARCHAR(14), UNIQUE, NOT NULL): CPF do cliente.

data_nascimento (DATE, NOT NULL): Data de nascimento do cliente.

endereco (VARCHAR(255), NOT NULL): Endereço residencial do cliente.

telefone (VARCHAR(15)): Número de telefone do cliente.

email (VARCHAR(255), UNIQUE): E-mail do cliente.

data_cadastro (DATE): Data de cadastro do cliente no sistema.

3. produtos
Esta tabela lista os produtos/itens disponíveis no cardápio do restaurante.

Colunas:

id_produto (INT, PRIMARY KEY, AUTO_INCREMENT): Identificador único para cada produto.

nome (VARCHAR(255)): Nome do produto.

descricao (TEXT): Descrição detalhada do produto.

preco (DECIMAL(10,2)): Preço do produto.

categoria (VARCHAR(100)): Categoria do produto (ex: 'Prato Principal', 'Bebida', 'Aperitivo', 'Sobremesa').

4. pedidos
Esta tabela registra os pedidos feitos no restaurante, detalhando qual cliente fez, qual funcionário atendeu, qual produto foi pedido e a quantidade.

Colunas:

id_pedido (INT, PRIMARY KEY, AUTO_INCREMENT): Identificador único para cada pedido.

id_cliente (INT, NOT NULL, FOREIGN KEY): Referência ao id_cliente da tabela clientes (quem fez o pedido).

id_funcionario (INT, NOT NULL, FOREIGN KEY): Referência ao id_funcionario da tabela FUNCIONARIOS (quem atendeu o pedido).

id_produto (INT, NOT NULL, FOREIGN KEY): Referência ao id_produto da tabela produtos (o produto pedido).

quantidade (INT, NOT NULL): Quantidade do produto pedido neste item do pedido.

preco (DECIMAL(10,2)): Preço unitário do produto no momento do pedido (pode ser NULL).

data_pedido (DATE, NOT NULL): Data em que o pedido foi realizado.

status_pedido (VARCHAR(50), NOT NULL): Status atual do pedido (ex: 'Pendente', 'Concluído', 'Cancelado').

Nota: Esta coluna foi inicialmente NOT NULL, e você tentou alterá-la para NULL mas o sistema impediu devido à restrição. Ela permanece NOT NULL conforme sua definição original.

5. info_produtos
Esta tabela armazena informações adicionais e detalhadas sobre os produtos, como ingredientes e fornecedores.

Colunas:

id_info (INT, PRIMARY KEY, AUTO_INCREMENT): Identificador único para cada registro de informação de produto.

id_produto (INT, NOT NULL, FOREIGN KEY): Referência ao id_produto da tabela produtos.

ingredientes (TEXT): Lista de ingredientes do produto.

fornecedor (VARCHAR(255)): Nome do fornecedor do produto ou de seus ingredientes.

6. backup_pedidos
Esta tabela é uma cópia de segurança dos dados da tabela pedidos.

Colunas: Possui as mesmas colunas e tipos de dados da tabela pedidos no momento da sua criação, mas não herda as chaves primárias, chaves estrangeiras ou AUTO_INCREMENT da tabela original.

Views
1. resumo_pedido
Esta View combina informações de pedidos, clientes, FUNCIONARIOS e produtos para fornecer um resumo detalhado de cada pedido.

Propósito: Simplifica consultas que precisam de informações de múltiplas tabelas relacionadas a um pedido, agindo como uma "tabela virtual" já com os dados unidos.

Colunas:

id_pedido (de pedidos)

quantidade (de pedidos)

data_pedido (de pedidos)

nome_cliente (de clientes)

email_cliente (de clientes)

nome_funcionario (de FUNCIONARIOS)

nome_produto (de produtos)

preco_produto (de produtos)

total_por_pedido (Calculado: quantidade * preco_produto)