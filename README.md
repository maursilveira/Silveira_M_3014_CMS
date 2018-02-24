# Create User Page #

Extending Research Project 1, this project builds an administration page where admin users can create new users, storing their information into the database. The password is generated automatically, therefore there is not a input field to password. Furthermore, passwords are encrypted, and the proper password hash is stored in the database.

## Getting Started

These instructions will get you a copy of the project up and running on your local machine for development and testing purposes. See deployment for notes on how to deploy the project on a live system.

### Prerequisites

**Git:**
To clone this project to a local repository, it is required using [Git](https://git-scm.com/). Follow instructions provided [here](https://git-scm.com/downloads) to install and configure Git.

**PHP:**    
This project is PHP-based, so it is required to have a web server running PHP on your local machine. Any variant of LAMP bundle (MAMP, WAMP, etc) works fine for this purpose.

**MySQL:**
Dynamic content is loaded from database to build the website and present projects information. Database used is simple MySQL, and it is possible to use any distribution or application that runs it (MariaDB, MAMP, WAMP, etc). There is a file into 'assets' folder that contains all tables and data exported from this database.

## Deployment

To run the project, it is necessary to import the database content to local application. It is possible to import it using PHPMyAdmin interface or via command line:

```
mysql -h localhost -u <user> -p <password> <database name> < db_movies.sql
```

## Execution

If your LAMP bundle is running properly on your local machine and project directory is into proper folder structure, you are good to run and test the application.

## Author
* [**Mauricio M. Silveira**](https://github.com/maursilveira)

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details
