echo 'Initializing Database'
/opt/mssql-tools/bin/sqlcmd -S localhost -l 30 -U sa -P 'ThisIsPassword!' -i init.sql

# -S The instance of sql server we want to connect to.
# -l The login timeout of 30 seconds. This is to ensure that the docker container is up and running.
# -U the user we are logging in with.
# -P The password we are using.
# -i The script we are executing to initialize the database.

echo 'Finished initializing the database'