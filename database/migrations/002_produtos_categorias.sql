CREATE TABLE categorias (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE produtos (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    codigo VARCHAR(50) UNIQUE NOT NULL,
    nome VARCHAR(150) NOT NULL,
    descricao TEXT,
    categoria_id UUID REFERENCES categorias(id) ON DELETE SET NULL,
    unidade_medida VARCHAR(10) NOT NULL,
    estoque_minimo NUMERIC(15,3) DEFAULT 0,
    estoque_maximo NUMERIC(15,3),
    ativo BOOLEAN DEFAULT TRUE
);

CREATE TABLE produto_foto (
    id UUID PRIMARY KEY DEFAULT uuid_generate_v4(),
    produto_id UUID NOT NULL REFERENCES produtos(id) ON DELETE CASCADE,
    caminho_arquivo VARCHAR(255) NOT NULL
);
