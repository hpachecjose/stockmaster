-- 001_admin_seed.sql (versão corrigida)

-- Depósito Central
INSERT INTO depositos (id, nome, descricao, ativo)
VALUES (
    uuid_generate_v4(),
    'Depósito Central',
    'Depósito principal do sistema',
    TRUE
);

-- Admin com hash Argon2id de 'StockMaster@2024!'
-- ATENÇÃO: troque este hash antes de ir para produção
-- Hash gerado via: node -e "require('argon2').hash('StockMaster@2024!').then(console.log)"
INSERT INTO usuarios (id, nome, email, senha_hash, perfil, ativo)
VALUES (
    uuid_generate_v4(),
    'Administrador',
    'admin@stockmaster.local',
    '$argon2id$v=19$m=65536,t=3,p=4$[hash_gerado_pelo_installer]',
    'ADMIN',
    TRUE
) ON CONFLICT (email) DO NOTHING;
