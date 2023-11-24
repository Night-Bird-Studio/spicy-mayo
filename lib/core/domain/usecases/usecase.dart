import 'package:flutter/foundation.dart';

import '../entities/result.dart';

@immutable
abstract interface class UseCase<Type, Params> {
  Future<Result<Type>> call(Params params);
}

@immutable
abstract interface class UseCaseWithoutParams<Type> {
  Future<Result<Type>> call();
}
