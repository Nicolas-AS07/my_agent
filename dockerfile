# syntax=docker/dockerfile:1

FROM n8nio/n8n:latest

# Copia o workflow e os CSVs para dentro do container
COPY workflow /data/workflow
COPY dados /data/dados

# Expõe porta (já padrão do n8n)
EXPOSE 5678

# Roda o n8n
CMD ["n8n", "start", "--tunnel"]
