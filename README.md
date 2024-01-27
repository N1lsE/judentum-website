# judentum-website

IT-Schulprojekt: Website über Judentum.

# Setup

## requirements

### Docker

https://www.docker.com/

### Make

Linux: `sudo apt install make`\
MacOS: `brew install make`\
WSL (Windows Subsystem for Linux): `sudo apt install make`

## Start the Webserver

```
cd /path/to/judentum-website/
sudo make run
```

Wenn der Befehl scheitert, versuch `docker pull httpd:2.4` auszuführen

Nach dem starten des Webservers wird jede Änderung im `src/` Ordner auf der Webseite angezeigt.
Die Webseite ist erreichber unter `localhost:8080`.

Wenn der Webserver auf einem Server (PC) mit öffentlicher IP und freigegebenen Port `8080` ist, kann man über die IP des Servers auf die Webseite zugreifen.
Um der Webseite eine schönere URL zu geben muss man sich so eine Mieten und bei einem Anbieter in die DNS-Server schreiben lassen.

## Stop the Webserver

```
cd /path/to/judentum-website/
sudo make stop
```

Hallo, hier war Luis <3
Und hier war Nils.
