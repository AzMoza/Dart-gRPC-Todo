# Todo Server
A simple gRPC todo server, client application using Darts gRPC package.

### Useful Links
Make sure you've read through the gRPC Dart documentation before starting with this project. Find below a list of useful links to help you get started with gRPC.
- [Introduction to gRPC](https://grpc.io/docs/what-is-grpc/introduction/)
- [Dart gRPC  - Quick Start](https://grpc.io/docs/languages/dart/quickstart/)
- [Dart gRPC - Basics Tutorial](https://grpc.io/docs/languages/dart/basics/)

### Project Setup
Firstly, make sure you get the project's dependencies by running the following command at the root of the project

```sh
dart pub get
```

The todo server uses a PostgreSQL database to store its data. Before spinning up the server, you'll need to ensure Postgres is installed. Additionally, you've created the todo database, the appropriate user and the todos table, which will store all the servers todos. Below is the SQL command.

```sql
CREATE DATABASE todo;
CREATE USER todo WITH createdb;
ALTER USER todo WITH password '[YOUR USER PASSWORD HERE]';
GRANT ALL ON DATABASE todo TO todo;
```

You'll then need to create the todos table and its required columns. The SQL command for that is below.

```sql
CREATE TABLE todos (
    id BIGINT PRIMARY KEY,
    title VARCHAR(40) NOT NULL,
    description VARCHAR(255) NOT NULL,
    iscompleted BOOLEAN NOT NULL DEFAULT FALSE,
    reminder TIMESTAMPTZ NOT NULL DEFAULT NOW()
);
```

Sweet! Feel free to customise that SQL commands as required, adding new columns or default values, but remember to ensure those changes are reflected in the corresponding `todo.proto` file, located in the `proto` folder.

With that, now make sure you've created a `constants.dart` file in the directory `lib/src/constants`. Here, you'll put the database name, username and password from which you created earlier. 

**IMPORTANT**: Make sure you check this out of source control if you're building upon this project! 

An example of the `constants.dart` file could be:

```dart
const String DATABASE_NAME = 'todo'
const String DATABASE_USERNAME = 'username'
const String DATABASE_PASSWORD = 'password'
```

### Running the project
Now it's time to spin up the project. Firstly, the server! Located at `bin/server.dart`, you can spin this up using the following command.

```sh
dart bin/server.dart
```

Next, the client, located at `bin/client.dart`...

```sh
dart bin/client.dart
```

If everything was set up correctly, the client should run successfully, and no errors returned. 

Whether you're using this just as a guide, or hoping to build a project upon it, best of luck! It's not perfect, as this was a starter project for me to get used to gRPC, so there's a lack of validation and covers the bare bone basics, but, hopefully, it's enough to get you started with gRPC in Dart.

Have Fun!



