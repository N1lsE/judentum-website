build:
	rmi my-apache2 || true # Remove the existing image if it already exists
	docker build --no-cache -t my-apache2 .

create:
	docker stop judentum-webserver || true  # Stop the existing container if it's running
	docker rm judentum-webserver || true    # Remove the existing container if it exists
	# Create container without a Volume
	# docker run -dit --name judentum-webserver -p 8080:80 my-apache2
	# Create container with a Volume
	docker run -dit --name judentum-webserver -p 8080:80 -v ./src:/usr/local/apache2/htdocs/ my-apache2

remove:
	# Stop the existing container if it's running
	docker stop judentum-webserver || true
	# Remove the existing container if it exists
	if [ -z $$(docker ps -q --filter "name=judentum-webserver") ]; then \
		docker rm judentum-webserver; \
	fi
	# Remove the existing image if it exists
	docker rmi my-apache2 || true 

stop:
	docker stop judentum-webserver || true  # Stop the existing container if it's running

start:
	if [ -z $$(docker ps -q --filter "name=judentum-webserver") ]; then \
		docker start judentum-webserver; \
	fi

run: build create
