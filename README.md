# SQL Server Docker Container

This docker container allows you to startup an SQL Server container with a custom initialization script `init.sh`.

Modify `init.sh` to build a new database once the container is started.
Run `docker build -t <name>:<tag> .` in the directory to build the image.
Run `docker run -p 1433:1433 <name>:<tag>` to start a container with the init script.

To check if the database is running

1. `docker exec -it <container_name> 'bash'` and then use `sqlcmd -S localhost -U SA -P ThisIsPassword!` to open an interactive shell inside the docker container.
2. Use `sqlcmd -S 10.0.75.1,1433 -U SA -P ThisIsPassword!` to open an interactive shell on your host machine (this is why we mapped the internal 1433 to the external 1433 using -p 1433:1433 in the docker run command.)