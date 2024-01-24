FROM httpd:2.4

# Run webserver without volume (you have to rebuild docker to change the files)
COPY ./src/ /usr/local/apache2/htdocs/
