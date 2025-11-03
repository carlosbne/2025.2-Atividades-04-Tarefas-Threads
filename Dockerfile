# Dockerfile para executar a atividade de threads em Fedora
FROM fedora:latest

# Atualiza o sistema e instala ferramentas necessárias
RUN dnf update -y && \
    dnf install -y gcc make && \
    dnf clean all

# Define o diretório de trabalho
WORKDIR /app

# Copia os arquivos do projeto
COPY atividade_threads.c .
COPY Makefile .

# Compila o programa
RUN make

# Comando padrão ao executar o container
CMD ["./atividade_threads"]
