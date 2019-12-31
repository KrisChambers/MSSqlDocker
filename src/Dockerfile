# The latest 2017 mssql version. Todo: Update this.
FROM mcr.microsoft.com/mssql/server:2017-latest

# Environment Variables when creating SQL Server.
ENV ACCEPT_EULA=Y
ENV SA_PASSWORD=ThisIsPassword!

WORKDIR /setup

# The script for the database setup.
COPY setup-database.sh ./

# The main entry point that sets up, initializes, and runs sql server.
COPY entrypoint.sh ./

# Give permisions to run the entrypoint and setup scripts.
RUN chmod +x ./setup-database.sh
RUN chmod +x ./entrypoint.sh

# SQL Server operates on 1433.
EXPOSE 1433/tcp

ENTRYPOINT [ "/bin/bash", "./entrypoint.sh"]