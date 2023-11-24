import 'package:freezed_annotation/freezed_annotation.dart';

part 'failures.freezed.dart';

@freezed
class Failure with _$Failure {
  const factory Failure.server() = _Server;

  const factory Failure.cache() = _Cache;

  const factory Failure.notFound() = _NotFound;

  const factory Failure.offline() = _Offline;

  const factory Failure.timeout() = _Timeout;

  const factory Failure.unauthorized() = _Unauthorized;

  const factory Failure.badRequest() = _BadRequest;
}
