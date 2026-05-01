CREATE TABLE fornecedores (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nome VARCHAR(150) NOT NULL,
    documento VARCHAR(20) UNIQUE NOT NULL,
    email VARCHAR(150),
    telefone VARCHAR(20),
    ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE produto_fornecedor (
    produto_id UUID NOT NULL REFERENCES produtos(id) ON DELETE CASCADE,
    fornecedor_id UUID NOT NULL REFERENCES fornecedores(id) ON DELETE CASCADE,
    preco_custo NUMERIC(15,2) NOT NULL,
    principal BOOLEAN DEFAULT FALSE,
    PRIMARY KEY (produto_id, fornecedor_id)
);
