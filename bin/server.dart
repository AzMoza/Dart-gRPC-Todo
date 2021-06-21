import 'dart:io';

import 'package:grpc/grpc.dart';
import 'package:todo_server/locator.dart';
import 'package:todo_server/src/server/database.dart';
import 'package:todo_server/src/server/server.dart';

void main(List<String> arguments) async {
  /// Initalise the service locator
  setupLocator();

  /// Gets the singleton instance of the Postgres database
  final _database = locator.get<PostgresDatabase>(instanceName: 'database');

  print('-----------TODO gRPC SERVER-----------');
  print('Starting gRPC Server\n\n');

  final server = Server(
    [TodoService()],
    const <Interceptor>[],
    CodecRegistry(
      codecs: const [
        GzipCodec(),
        IdentityCodec(),
      ],
    ),
  );

  await server.serve(port: 8888);

  print('gRPC Server Started');
  print('Server listening on port ${server.port}...\n\n');

  /// Awaits an input in order to terminate the server execution
  await stdin.first;
  await _database.teardownDatabase();

  exit(0);
}
