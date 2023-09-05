FROM ubuntu:18.04

# Evitar prompts durante a instalação de pacotes
ENV DEBIAN_FRONTEND=noninteractive

# Instalar dependências
RUN apt-get update && \
    apt-get install -y xvfb firefox x11vnc net-tools && \
    apt-get clean

# Configurar o ambiente
ENV DISPLAY=:99
ENV SCREEN=1024x768x24

# Script de inicialização
COPY start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]

