import 'package:grpc/grpc.dart';
import 'package:grpc/src/server/call.dart';
import 'package:todo_server/src/constants/constants.dart';
import 'package:todo_server/src/gRPC/generated/todo.pbgrpc.dart';
import 'package:todo_server/locator.dart';

import 'package:todo_server/src/server/database.dart';

class TodoService extends TodoServiceBase {
  final PostgresDatabase _database =
      locator.get<PostgresDatabase>(instanceName: 'database');

  TodoService() {
    _database.setupDatabase(
      '$DATABASE_NAME',
      host: 'localhost',
      port: 5432,
      username: '$DATABASE_USERNAME',
      password: '$DATABASE_PASSWORD',
    );

    print('PostgreSQL Connection Established');
  }

  @override
  Future<GetAllResponse> getAllTodo(
      ServiceCall call, GetAllRequest request) async {
    final todos = await _database.getAllTodos(request.queryParams);
    return GetAllResponse(api: 1, todos: todos);
  }

  @override
  Future<GetResponse> getTodo(ServiceCall call, GetRequest request) async {
    final todo = await _database.getSingleTodo(request.id);
    return GetResponse(api: 1, todo: todo);
  }

  @override
  Future<CreateResponse> createTodo(
      ServiceCall call, CreateRequest request) async {
    final todo = await _database.createTodo(request.todo.title,
        request.todo.description, request.todo.time, request.todo.isComplete);
    return CreateResponse(api: 1, todo: todo);
  }

  @override
  Future<UpdateResponse> updateTodo(
      ServiceCall call, UpdateRequest request) async {
    final todo = await _database.updateTodo(request.todo);
    return UpdateResponse(api: 1, todo: todo);
  }

  @override
  Future<DeleteResponse> deleteTodo(
      ServiceCall call, DeleteRequest request) async {
    final id = await _database.deleteTodo(request.id);
    return DeleteResponse(api: 1, id: id);
  }
}
