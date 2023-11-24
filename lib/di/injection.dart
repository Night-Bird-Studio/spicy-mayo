import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';
import 'package:injectable/injectable.dart';

import 'injection.config.dart';

GetIt getIt = GetIt.instance;
final hive = Hive;

@InjectableInit(
  initializerName: 'init',
  preferRelativeImports: true,
  asExtension: false,
)
Future<void> configureDependencies() async {
  await init(getIt);
}
