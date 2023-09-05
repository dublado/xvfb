# Dockerized Xvfb and Firefox with VNC Access

Este projeto permite que você execute um navegador Firefox dentro de um contêiner Docker usando o Xvfb (X Virtual Framebuffer) como um servidor X em segundo plano. Ele também configura um servidor VNC para que você possa visualizar e interagir com o Firefox através de qualquer cliente VNC.

## Pré-requisitos

- Docker
- Docker Compose
- Cliente VNC

## Como usar

### 1. Clonar o Repositório

Clone este repositório para sua máquina local.

```bash
git clone git@github.com:dublado/xvfb.git
cd xvfb
```

### 2. Construir a Imagem Docker

Execute o seguinte comando para construir a imagem Docker:

```bash
docker-compose build
```

### 3. Iniciar o Contêiner

Execute o seguinte comando para iniciar o contêiner:

```bash
docker-compose up
```

### 4. Conectar via Cliente VNC

Abra seu cliente VNC favorito e conecte-se a `localhost:5901`.

## Estrutura do Projeto

- `Dockerfile`: Este arquivo define como a imagem Docker será construída.
- `docker-compose.yml`: Este arquivo permite que você execute `docker-compose up` para iniciar o contêiner facilmente.
- `start.sh`: Este é o script de inicialização que configura e inicia o Xvfb, x11vnc e Firefox.

## Configurações

- **Porta**: A porta VNC é configurada para `5901` por padrão. Você pode alterar isso no arquivo `docker-compose.yml`.
- **Resolução de Tela**: A resolução da tela é configurada para `1024x768x24` por padrão. Você pode alterar a variável `SCREEN` no `Dockerfile`.

## Contribuições

Contribuições são sempre bem-vindas! Sinta-se à vontade para abrir um issue ou criar um pull request.

## Licença

Este projeto está licenciado sob a Licença MIT - consulte o arquivo [LICENSE.md](LICENSE.md) para mais detalhes.

