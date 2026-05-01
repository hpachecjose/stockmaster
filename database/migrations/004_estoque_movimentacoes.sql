CREATE TABLE depositos (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE saldo_estoque (
    produto_id UUID NOT NULL REFERENCES produtos(id) ON DELETE CASCADE,
    deposito_id UUID NOT NULL REFERENCES depositos(id) ON DELETE CASCADE,
    quantidade_atual NUMERIC(15,3) DEFAULT 0,
    PRIMARY KEY (produto_id, deposito_id)
);

CREATE TABLE movimentacoes (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    produto_id UUID NOT NULL REFERENCES produtos(id),
    deposito_id UUID NOT NULL REFERENCES depositos(id),
    tipo VARCHAR(20) NOT NULL CHECK (tipo IN ('ENTRADA', 'SAIDA', 'TRANSFERENCIA', 'AJUSTE', 'PERDA')),
    quantidade NUMERIC(15,3) NOT NULL,
    usuario_id UUID REFERENCES usuarios(id),
    fornecedor_id UUID REFERENCES fornecedores(id),
    observacao TEXT,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
