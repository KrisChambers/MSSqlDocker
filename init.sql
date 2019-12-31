/*
	Database initialization script.
*/
CREATE DATABASE AppDB;
GO

USE AppDB;
GO

CREATE TABLE Book (
	id INT NOT NULL IDENTITY PRIMARY KEY ,
	title VARCHAR(100) NOT NULL,
	primary_author VARCHAR(100) NOT NULL
);
GO
/*
After we create our database we can setup our user.

-- Switch to the created database
USE AppDB;
GO

-- Create a Login for our application
CREATE LOGIN MyApp_Login WITH PASSWORD = 'MyAppPassword1234', DEFAULT_DATABASE = AppDB;
GO

-- Create a User for our Login
CREATE USER MyApp FOR LOGIN MyApp_Login WITH DEFAULT_SCHEMA = dbo;
GO

-- Make our application a db_owner
ALTER ROLE db_owner ADD MEMBER MyApp;
GO
*/