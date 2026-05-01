CREATE TABLE auditoria_log (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    tabela VARCHAR(50) NOT NULL,
    operacao VARCHAR(10) NOT NULL CHECK (operacao IN ('INSERT', 'UPDATE', 'DELETE')),
    usuario_id UUID REFERENCES usuarios(id),
    dados_antes JSONB,
    dados_depois JSONB,
    criado_em TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
