import 'dart:math';

import 'package:postgres/postgres.dart';
import 'package:todo_server/src/gRPC/generated/todo.pb.dart';

class PostgresDatabase {
  PostgreSQLConnection connection;

  Future<void> setupDatabase(String databaseName,
      {String host, int port, String username, String password}) async {
    /// Creates an instance of a PostgreSQL database
    ///
    /// [setupDatabase] parameters supply the connextion information
    connection = PostgreSQLConnection(
      host,
      port,
      databaseName,
      username: username,
      password: password,
    );

    /// Opens the databases connection
    await connection.open();
  }

  Future<Todo> getSingleTodo(int id) async {
    final result = await connection.query('SELECT * FROM todos WHERE id = @id',
        substitutionValues: {'id': id});

    Todo todo;

    for (final row in result) {
      todo = Todo()
        ..id = row[0]
        ..title = row[1]
        ..description = row[2]
        ..isComplete = row[3]
        ..time = row[4].toString();
    }

    return todo;
  }

  Future<List<Todo>> getAllTodos(GetAllRequest_QueryParams params) async {
    final results = await connection.query('SELECT * FROM todos');

    var todo = <Todo>[];

    for (final row in results) {
      todo.add(Todo()
        ..id = row[0]
        ..title = row[1]
        ..description = row[2]
        ..isComplete = row[3]
        ..time = row[4].toString());
    }

    return todo;
  }

  Future<Todo> createTodo(
      String title, String description, String reminder, bool complete) async {
    Todo newTodo;
    await connection.transaction((con) async {
      final rnd = Random();

      final number = rnd.nextInt(pow(2, 20).round());
      final time = DateTime.parse(reminder);

      await con.query(
        'INSERT INTO todos(id, title, description, reminder, iscompleted) VALUES (@todoId, @todoTitle, @todoDescription, @todoTime, @todoIsCompleted)',
        substitutionValues: {
          'todoId': number,
          'todoTitle': title,
          'todoDescription': description,
          'todoTime': time,
          'todoIsCompleted': complete,
        },
      );

      final inserted = await con.query('SELECT * FROM todos WHERE id = @id',
          substitutionValues: {'id': number});

      for (final row in inserted) {
        newTodo = Todo()
          ..id = row[0]
          ..title = row[1]
          ..description = row[2]
          ..isComplete = row[3]
          ..time = [4].toString();
      }
    });

    return newTodo;
  }

  Future<Todo> updateTodo(Todo updatedTodo) async {
    Todo todo;
    await connection.transaction((con) async {
      final time = DateTime.parse(updatedTodo.time);

      await con.query(
        'UPDATE todos SET title = @title, description = @description, reminder = @reminder, iscompleted = @isCompleted WHERE id = @id',
        substitutionValues: {
          'id': updatedTodo.id,
          'title': updatedTodo.title,
          'description': updatedTodo.description,
          'reminder': time,
          'isCompleted': updatedTodo.isComplete,
        },
      );

      final inserted = await con.query(
        'SELECT * FROM todos WHERE id = @id',
        substitutionValues: {'id': updatedTodo.id},
      );

      for (final row in inserted) {
        todo = Todo()
          ..id = row[0]
          ..title = row[1]
          ..description = row[2]
          ..isComplete = row[3]
          ..time = row[4].toString();
      }
    });

    return todo;
  }

  Future<int> deleteTodo(int id) async {
    final result = await connection.query(
      'DELETE FROM todos WHERE id = @id',
      substitutionValues: {
        'id': id,
      },
    );

    if (result.isEmpty) return id;

    return null;
  }

  Future<void> teardownDatabase() async {
    /// Closes the database connection
    await connection.close();
  }
}
