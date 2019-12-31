# Start SQL Server, start the script to create the DB and initial data

echo 'Setting up Database'
./setup-database.sh & /opt/mssql/bin/sqlservr

# Note:

#	We run ./setup-database first.
#	This ensures that Sql Server is the foreground process
#	running which keeps the docker container from stopping right away.