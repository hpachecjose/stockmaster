# StockMaster

Sistema Universal de Controle de Estoque com backend em COBOL, API Node.js e frontend Next.js.

## Estrutura do Projeto

- `core/`: Motor de regras de negócio escrito em COBOL.
- `api/`: API RESTful em Node.js (Express).
- `web/`: Aplicação frontend em Next.js.
- `database/`: Scripts SQL para criação das tabelas e população inicial (seeds).
- `installer/`: Scripts automatizados para instalação em Linux e Windows.
- `docs/`: Manuais e documentações adicionais.

## Como Executar (Docker)

1. Clone o repositório.
2. Na raiz do projeto, execute o comando:
   ```bash
   docker-compose up -d --build
   ```
3. A API estará disponível em `http://localhost:3000` e o frontend em `http://localhost:3001`.
