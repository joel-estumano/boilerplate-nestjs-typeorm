<h1 align="center"> Joel Estumano | Boilerplate NestJS Typeorm </h1>

<p align="center">
  <a href="http://nestjs.com/" target="blank"><img src="https://nestjs.com/img/logo-small.svg" width="120" alt="Nest Logo" /></a>
</p>

[circleci-image]: https://img.shields.io/circleci/build/github/nestjs/nest/master?token=abc123def456
[circleci-url]: https://circleci.com/gh/nestjs/nest

  <p align="center">A progressive <a href="http://nodejs.org" target="_blank">Node.js</a> framework for building efficient and scalable server-side applications.</p>
    <p align="center">

### ✍️ Autor

Este projeto foi desenvolvido por [Joel Estumano](https://www.joelestumano.com/).

Sinta-se à vontade para enviar sugestões, melhorias ou perguntas! 🚀

### 📌 Introdução

Este projeto foi criado para a implementação de APIs REST, oferecendo uma estrutura pronta para CRUD de empresas e produtos, com integração a banco de dados, validação de dados e documentação automatizada.
Empresas podem ser cadastradas com informações como nome e logo, enquanto produtos são vinculados a empresas específicas, garantindo um relacionamento claro entre essas entidades.

### 🏢 Gerenciamento de Empresas e Produtos

O sistema permite que cada empresa tenha múltiplos produtos associados a ela, criando uma estrutura organizada para armazenar e gerenciar informações comerciais.
Ao criar um produto, é necessário informar a empresa à qual ele pertence, garantindo que a gestão dos produtos seja feita de forma correta e consistente.
Essa abordagem melhora a integridade dos dados e facilita a escalabilidade da aplicação.

### 🎯 Objetivo do Projeto

✅ Construir uma base sólida para projetos NestJS, seguindo boas práticas de desenvolvimento.
✅ Oferecer um projeto pronto para escalabilidade, com uma arquitetura organizada e modular.
✅ Implementar um exemplo funcional, incluindo operações CRUD (Create, Read, Update, Delete) para empresas e produtos.

✅ Providenciar uma infraestrutura inicial preparada para produção, integrando banco de dados, autenticação e documentação via Swagger.

🛠️ Tecnologias Utilizadas

- NestJS → Framework TypeScript para construção de APIs.
- [TypeORM](https://docs.nestjs.com/recipes/sql-typeorm) → ORM para interação com o banco de dados MySQL.
- [Swagger](https://docs.nestjs.com/openapi/introduction) → Documentação da API integrada para facilitar testes.

#### 🔧 Configurações Adicionais

Além das tecnologias principais, este projeto já inclui configurações essenciais para garantir qualidade e padronização do código:
✅ Padronização de Código

- Prettier → Formatação automática do código para um estilo consistente.
- ESLint → Linter para identificar e corrigir problemas no código.
  🔍 Validação Antes do Commit
- Husky → Configurado para executar validações antes do commit, garantindo que o código siga os padrões definidos.
- Testes Automáticos → Rodados no pre-commit para evitar a entrada de código não validado no repositório.

🔄 Processo de CI

- Para automatizar verificações no código e garantir qualidade contínua, este projeto inclui um pipeline de CI pronto para integração.

### 📖 Documentação da API

Este projeto inclui Swagger para facilitar a exploração e teste dos endpoints da API.
🔹 Acessando a Documentação
Após iniciar o servidor, a documentação Swagger pode ser acessada nos seguintes endpoints:

- Swagger UI (Interface gráfica para testes)

```
http://localhost:3000/swagger
```

- Especificação OpenAPI (em JSON/YAML)

```
http://localhost:3000/swagger-json
```

✅ O Swagger
✔️ Permite visualizar todos os endpoints da API de forma organizada.
✔️ Possibilita testar requisições diretamente no navegador.
✔️ Facilita a integração com outras aplicações e ferramentas

![Figma](https://joel-estumano.github.io/public/img/apps/boilerplate-nestjs-typeorm-swagger.png)

### 🚀 Instalação e Configuração

Para começar, siga os passos abaixo para baixar e configurar o projeto.

📌 1. Baixar o repositório
Clone o projeto do GitHub:

```
git clone https://github.com/joel-estumano/boilerplate-nestjs-typeorm.git
```

📌 2. Configurar variáveis de ambiente
Copie o arquivo de exemplo `.env` para criar um ambiente local: `.env.local
`
Em seguida, edite o arquivo `.env.local` e configure os valores corretos para conexão ao banco de dados.

### 🔥 Executando o projeto

O projeto pode ser rodado localmente ou dentro de um container Docker.

✅ Para rodar localmente instale as dependências e inicie o servidor:

```
npm install
```

```
npm run start:dev
```

Isso iniciará a API NestJS para desenvolvimento.

```
http://localhost:3000
```

🐳 Caso queira usar Docker, basta rodar:

```
docker-compose up --build -d
```

Certifique-se de que você tem:

- [Docker](https://www.docker.com/get-started/) instalado.
- Docker Compose configurado corretamente.

Isso iniciará a API NestJS junto com o banco MySQL dentro de containers.

### ✍️ Criando um novo recurso

- Instalar o [NestJS CLI](https://docs.nestjs.com/cli/overview) (caso ainda não tenha)
  Se ainda não tiver o CLI do NestJS instalado globalmente, execute:

```
npm install -g @nestjs/cli
```

- Localize o diretório `modules` (src/modules) e execute o comando abaixo para gerar o recurso:

```
nest g resource modules/nome-do-recurso
```

⚠️ Substitua `nome-do-recurso` pelo nome do recurso que deseja criar. ⚠️

Seu novo recurso estrá disponível.

```
modules/
├── nome-do-recurso/
│   ├── dto/
│   │   ├── create-nome-do-recurso.dto.ts
│   │   ├── update-nome-do-recurso.dto.ts
│   ├── entities/
│   │   ├── nome-do-recurso.entity.ts
│   ├── nome-do-recurso.controller.ts
│   ├── nome-do-recurso.module.ts
│   ├── nome-do-recurso.service.ts
```
