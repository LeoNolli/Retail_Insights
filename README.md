# Retail Insights: AI-Driven Data Pipeline 📊

[![Python](https://img.shields.io/badge/Python-3.10+-blue.svg)](https://www.python.org/)
[![MySQL](https://img.shields.io/badge/MySQL-8.0-orange.svg)](https://www.mysql.com/)
[![Gemini](https://img.shields.io/badge/Google_Gemini-2.5_Flash-green.svg)](https://ai.google.dev/)

Retail Insights: AI-Driven Data Pipeline
Nesse repositório encontra-se uma pipeline de análise e tratamento de dados focado no setor de varejo (Retail). O objetivo principal é a unificação de Python, SQL e Inteligência Artificial para a criação de um ambiente de testes realistas com análise de dados para suporte à decisão.

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
## Fluxo de Funcionamento e Arquitetura de Dados
O pipeline foi desenhado para simular um ambiente real de análise de dados:

Geração Sintética: Utilização da API Google Gemini 1.5 Flash para popular o DataFrame inicial com dados sintéticos de alta fidelidade, garantindo um volume de dados realista para testes.

Persistência Relacional: Estruturação e inserção dos dados em um banco de dados MySQL, garantindo a integridade referencial entre as tabelas de Clientes, Produtos, Pedidos e Endereços.

Consolidação (Master Dataset): Processamento das tabelas SQL para a criação de um arquivo CSV Master. Esta etapa foi fundamental para permitir uma visualização completa e performática de todas as colunas em um único dataset consolidado.

Analytics: Leitura do arquivo consolidado para extração de métricas de negócio.
---
## Estrutura do Banco de Dados
O banco de dados contém quatro entidades principais:

Clientes: Dados cadastrais e demográficos.

Produtos: Catálogo de itens com precificação e categorias.

Pedidos: Transações comerciais vinculando clientes e produtos.

Endereços: Localizações geográficas para análise de expansão e logística.
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
Análises Propostas e Insights
Ao final da pipeline, o projeto entrega análises estratégicas baseadas em dados reais de mercado:

Análise Geográfica: Identificação de polos de consumo através de mapas de calor, destacando a relevância do PIB per capita no volume de vendas regional.

Comportamento Geracional: Estudo sobre o Ticket Médio por faixa etária, identificando o teto salarial e o poder de compra de Millennials e Geração X.

Mix de Produtos (Volume vs. Valor): Análise da disparidade entre a quantidade de itens vendidos e o valor agregado, propondo estratégias para produtos Premium.
---
Objetivos de Estudo

* **Este projeto demonstra competências em, desenvolvido para meu portfólio pessoal:**

* **Modelagem e manipulação de bancos de dados relacionais**.

* **Processos de ETL (Extração, Transformação e Carga) para análise de performance**.

* **Criação de dados sintéticos LGPD compliant para simulação de negócios**.

* **Visualização de dados avançada com mapas de calor e gráficos estatísticos**.

**Desenvolvido por:** José Leonardo Noli Júnior  
**Área:** Data Analytics  
**Data:** 29 de Abril de 2026, Brasil.
