## Person Service (Producer)

In the context of provider and consumer, this is the provider.

Person Service has a database. When you give it a "GET" request like
"persons/victor", it will give you a JSON with "name: Victor" and
"salary: 1000". The name and salary information is obtained from the database.

### Creating the database

Go to the 'db' folder of this module. In the 'db' folder, run the following
commands.

```sqlite
sqlite3 person_db.sqlite3

CREATE TABLE IF NOT EXISTS Persons(Id INTEGER PRIMARY KEY, Name TEXT, SALARY 
TEXT);

INSERT INTO Persons VALUES(1, 'Victor', '1000');
```