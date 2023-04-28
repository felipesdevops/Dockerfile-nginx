# Imagem base do Nginx
FROM nginx:latest

# Define um nome para a imagem 
LABEL nome="NginxDesafio04"

# Diretório de trabalho da aplicação
WORKDIR /usr/share/nginx/html

# Copia o arquivo index.html para o diretório de trabalho
COPY /site/index.html /usr/share/nginx/html/index.html

# Expõe a porta 80 do container
EXPOSE 80

# Comando de inicialização do Nginx
CMD ["nginx", "-g", "daemon off;"]


