# SQL Server Docker Container

This docker container allows you to startup an SQL Server container with a custom initialization script that is provided through mounting a volume config.

# Running the container.

1. `docker build -t <name>:<tag> ./src` Will build an image on your machine.
2. Create the following structure in your project.

```
<project_folder>
	- config
		- <init_script_name>.sql
	- docker-compose.yaml
```

3. The minimal docker-compose file will look something like:

```yaml
version: "3"

services:
  db:
    # The name and tag of the image you built in step 1.
    image: <name>:<tag>

    # This maps your local ./config folder into the container
    volumes:
      - ./config:/config

    # Pass in the script path.
    environment:
      - "init_script=<init_script_path>"


    # Maps the internal 1433 to the host 1433 so we can connect to from your host machine (ex: using sqlcmd).
    ports:
      - 1433:1433
```