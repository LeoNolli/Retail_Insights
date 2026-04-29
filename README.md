# Retail Insights: AI-Driven Data Pipeline 📊

[![Python](https://img.shields.io/badge/Python-3.10+-blue.svg)](https://www.python.org/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-orange.svg)](https://www.mysql.com/)
[![Gemini](https://img.shields.io/badge/Google_Gemini-2.5_Flash-green.svg)](https://ai.google.dev/)

Nesse repositório encontra-se uma **pipeline de análise e tratamento de dados** focado no setor de varejo (*Retail*). O objetivo principal é a unificação de **Python, SQL e IA** para criação de um ambiente de testes realistas com análise de dados para suporte à decisão. 

O sistema utiliza a **API Google Gemini 2.5 Flash** para geração de dados sintéticos de alta fidelidade, que são processados via **Pandas** e persistidos em um banco de dados **MySQL**.

---

## Tecnologias e Bibliotecas

* **Python**: Linguagem principal do ecossistema.
* **Google Generative AI SDK**: Interface com o modelo LLM Gemini.
* **SQLAlchemy**: ORM e Driver para conexão e manipulação SQL.
* **Pandas**: Biblioteca para manipulação, limpeza e transformação de dados.
* **Matplotlib/Seaborn**: Ferramentas para visualização exploratória de dados.
* **MySQL**: Sistema de gerenciamento de banco de dados relacional.

---

## Estrutura do Banco de Dados

O banco de dados `retailDB` contém duas entidades principais com integridade referencial:

1.  **Clientes**: Armazena informações cadastrais.
    * `ID`, `first_name`, `last_name`, `data_nascimento`.
2.  **Pedidos**: Registra as transações comerciais vinculadas aos clientes via **Foreign Key (FK)**.

---

## Fluxo de Funcionamento

O pipeline segue as seguintes etapas de execução:

1.  **Setup**: Instalação de dependências e configurações de chaves de API.
2.  **Schema**: Criação do Schema e scripts SQL via SQLAlchemy para estruturação das tabelas.
3.  **Ingestão**: Chamadas otimizadas à API do Google para geração de dados em formato JSON.
4.  **ETL**: Conversão de JSON para DataFrame, normalização de tipos de dados e inserção via `to_sql`.
5.  **Analytics**: Execução de queries analíticas para extração de KPIs de negócio.

---

## Como Utilizar

1.  **Clone este repositório:**
    ```bash
    git clone [https://github.com/seu-usuario/Retail_Insights.git](https://github.com/seu-usuario/Retail_Insights.git)
    ```
2.  **Configure o servidor MySQL:** Certifique-se de que o serviço está ativo.
3.  **Variáveis de Ambiente:** Crie um arquivo `.env` na raiz do projeto:
    ```env
    GOOGLE_API_KEY=sua_chave_aqui
    DB_USER=seu_usuario
    DB_PASSWORD=sua_senha
    DB_HOST=localhost
    DB_NAME=retail_db
    ```
4.  **Execução:** Execute o notebook principal ou o script `main.py`.

---

## Objetivos de Estudo

Este projeto faz parte do meu portfólio pessoal e visa demonstrar competências em:

* [x] Integração de APIs de terceiros em fluxos de dados reais.
* [x] Modelagem e manipulação de bancos de dados relacionais.
* [x] Criação de dados sintéticos para simulação de cenários de negócios (LGPD compliant).
* [x] Visualização de dados para auxílio na tomada de decisões estratégicas.

---

**Desenvolvido por:** José Leonardo Noli Júnior  
**Área:** Data Analytics  
**Data:** 29 de Abril de 2026, Brasil.
