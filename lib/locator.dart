import 'package:get_it/get_it.dart';
import 'package:todo_server/src/server/database.dart';

GetIt locator = GetIt.I;

void setupLocator() {
  locator.registerLazySingleton(() => PostgresDatabase(),
      instanceName: 'database');
}
