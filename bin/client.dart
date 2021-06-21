import 'package:fixnum/fixnum.dart';
import 'dart:math';

import 'package:grpc/grpc.dart';
import 'package:todo_server/src/gRPC/generated/todo.pbgrpc.dart';

Future<void> main(List<String> args) async {
  print('-----------TODO gRPC CLIENT-----------');
  print('Starting gRPC Client');

  final channel = ClientChannel(
    'localhost',
    port: 8888,
    options: ChannelOptions(
      credentials: ChannelCredentials.insecure(),
      codecRegistry:
          CodecRegistry(codecs: const [GzipCodec(), IdentityCodec()]),
    ),
  );

  final stub = TodoServiceClient(channel);

  print(Int64(DateTime.now().millisecondsSinceEpoch));
  print(Int64(DateTime.now().millisecond ~/ 1000));

  try {
    /// Create three todo items
    await stub.createTodo(
      CreateRequest(
        api: 1,
        todo: Todo()
          ..title = '🐕 Walk the Dod'
          ..description = 'Walk the Dog'
          ..isComplete = false
          ..time = DateTime.now().add(Duration(hours: 12)).toLocal().toString(),
      ),
    );
    await stub.createTodo(
      CreateRequest(
        api: 1,
        todo: Todo()
          ..title = '🏎🚿 Clean the Car'
          ..description = 'Clean the car, ready for the holiday'
          ..isComplete = false
          ..time = DateTime.now().add(Duration(hours: 12)).toLocal().toString(),
      ),
    );
    await stub.createTodo(
      CreateRequest(
        api: 1,
        todo: Todo()
          ..title = '🍫 Buy CHocolate'
          ..description = 'Buy some chocolate from the shop'
          ..isComplete = false
          ..time = DateTime.now().add(Duration(hours: 12)).toLocal().toString(),
      ),
    );

    print('\n\n✅ Created Three Todo Items');

    /// Gets all the todos stored in the database
    final todos = await stub.getAllTodo(
        GetAllRequest(api: 1, queryParams: GetAllRequest_QueryParams.ALL));
    print('\n\n✅ Fetched All Todos\n${todos.toDebugString()}');

    /// Update the incorrectly added todo
    final updatedResponse = await stub.updateTodo(
      UpdateRequest(
        api: 1,
        todo: Todo()
          // Hack to change the incorrect last element, needs more robust solution.
          ..id = todos.todos.elementAt(todos.todos.length - 1).id
          ..title = '🍫 Buy Chocolate'
          ..description =
              todos.todos.elementAt(todos.todos.length - 1).description
          ..isComplete = true
          ..time = todos.todos.elementAt(todos.todos.length - 1).time,
      ),
    );
    print(
        '\n\n✅ Updated Todo ${updatedResponse.todo.id}\n${updatedResponse.todo.toDebugString()}');

    /// Get a random todo from the database.
    final getRnd = Random();
    final fetchId =
        todos.todos.elementAt(getRnd.nextInt(todos.todos.length - 1)).id;

    final getResponse = await stub.getTodo(
      GetRequest()
        ..api = 1
        ..id = fetchId,
    );
    print('\n\n✅ Fetched Todo $fetchId\n${getResponse.todo.toDebugString()}');

    /// Delete a random todo added to the database.
    final deleteRnd = Random();
    final deleteId =
        todos.todos.elementAt(deleteRnd.nextInt(todos.todos.length - 1)).id;

    final deleted = await stub.deleteTodo(
      DeleteRequest()
        ..api = 1
        ..id = deleteId,
    );

    print('\n\n✅ Deleted Todo ${deleted.id}');
  } catch (e) {
    print('❌ gRPC Error: $e');
  }

  await channel.shutdown();

  print('\n\n-----------TODO gRPC Client End-----------');
}
