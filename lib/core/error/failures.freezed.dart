// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$Failure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() notFound,
    required TResult Function() offline,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? notFound,
    TResult? Function()? offline,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? notFound,
    TResult Function()? offline,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Offline value)? offline,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FailureCopyWith<$Res> {
  factory $FailureCopyWith(Failure value, $Res Function(Failure) then) =
      _$FailureCopyWithImpl<$Res, Failure>;
}

/// @nodoc
class _$FailureCopyWithImpl<$Res, $Val extends Failure>
    implements $FailureCopyWith<$Res> {
  _$FailureCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$ServerImplCopyWith<$Res> {
  factory _$$ServerImplCopyWith(
          _$ServerImpl value, $Res Function(_$ServerImpl) then) =
      __$$ServerImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$ServerImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$ServerImpl>
    implements _$$ServerImplCopyWith<$Res> {
  __$$ServerImplCopyWithImpl(
      _$ServerImpl _value, $Res Function(_$ServerImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$ServerImpl implements _Server {
  const _$ServerImpl();

  @override
  String toString() {
    return 'Failure.server()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$ServerImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() notFound,
    required TResult Function() offline,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return server();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? notFound,
    TResult? Function()? offline,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
  }) {
    return server?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? notFound,
    TResult Function()? offline,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return server(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return server?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Offline value)? offline,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (server != null) {
      return server(this);
    }
    return orElse();
  }
}

abstract class _Server implements Failure {
  const factory _Server() = _$ServerImpl;
}

/// @nodoc
abstract class _$$CacheImplCopyWith<$Res> {
  factory _$$CacheImplCopyWith(
          _$CacheImpl value, $Res Function(_$CacheImpl) then) =
      __$$CacheImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CacheImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$CacheImpl>
    implements _$$CacheImplCopyWith<$Res> {
  __$$CacheImplCopyWithImpl(
      _$CacheImpl _value, $Res Function(_$CacheImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CacheImpl implements _Cache {
  const _$CacheImpl();

  @override
  String toString() {
    return 'Failure.cache()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CacheImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() notFound,
    required TResult Function() offline,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return cache();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? notFound,
    TResult? Function()? offline,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
  }) {
    return cache?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? notFound,
    TResult Function()? offline,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return cache(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return cache?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Offline value)? offline,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (cache != null) {
      return cache(this);
    }
    return orElse();
  }
}

abstract class _Cache implements Failure {
  const factory _Cache() = _$CacheImpl;
}

/// @nodoc
abstract class _$$NotFoundImplCopyWith<$Res> {
  factory _$$NotFoundImplCopyWith(
          _$NotFoundImpl value, $Res Function(_$NotFoundImpl) then) =
      __$$NotFoundImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$NotFoundImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$NotFoundImpl>
    implements _$$NotFoundImplCopyWith<$Res> {
  __$$NotFoundImplCopyWithImpl(
      _$NotFoundImpl _value, $Res Function(_$NotFoundImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$NotFoundImpl implements _NotFound {
  const _$NotFoundImpl();

  @override
  String toString() {
    return 'Failure.notFound()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$NotFoundImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() notFound,
    required TResult Function() offline,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return notFound();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? notFound,
    TResult? Function()? offline,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
  }) {
    return notFound?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? notFound,
    TResult Function()? offline,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Offline value)? offline,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class _NotFound implements Failure {
  const factory _NotFound() = _$NotFoundImpl;
}

/// @nodoc
abstract class _$$OfflineImplCopyWith<$Res> {
  factory _$$OfflineImplCopyWith(
          _$OfflineImpl value, $Res Function(_$OfflineImpl) then) =
      __$$OfflineImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$OfflineImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$OfflineImpl>
    implements _$$OfflineImplCopyWith<$Res> {
  __$$OfflineImplCopyWithImpl(
      _$OfflineImpl _value, $Res Function(_$OfflineImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$OfflineImpl implements _Offline {
  const _$OfflineImpl();

  @override
  String toString() {
    return 'Failure.offline()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$OfflineImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() notFound,
    required TResult Function() offline,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return offline();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? notFound,
    TResult? Function()? offline,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
  }) {
    return offline?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? notFound,
    TResult Function()? offline,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return offline(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return offline?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Offline value)? offline,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (offline != null) {
      return offline(this);
    }
    return orElse();
  }
}

abstract class _Offline implements Failure {
  const factory _Offline() = _$OfflineImpl;
}

/// @nodoc
abstract class _$$TimeoutImplCopyWith<$Res> {
  factory _$$TimeoutImplCopyWith(
          _$TimeoutImpl value, $Res Function(_$TimeoutImpl) then) =
      __$$TimeoutImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$TimeoutImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$TimeoutImpl>
    implements _$$TimeoutImplCopyWith<$Res> {
  __$$TimeoutImplCopyWithImpl(
      _$TimeoutImpl _value, $Res Function(_$TimeoutImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$TimeoutImpl implements _Timeout {
  const _$TimeoutImpl();

  @override
  String toString() {
    return 'Failure.timeout()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$TimeoutImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() notFound,
    required TResult Function() offline,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return timeout();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? notFound,
    TResult? Function()? offline,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
  }) {
    return timeout?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? notFound,
    TResult Function()? offline,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return timeout(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return timeout?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Offline value)? offline,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (timeout != null) {
      return timeout(this);
    }
    return orElse();
  }
}

abstract class _Timeout implements Failure {
  const factory _Timeout() = _$TimeoutImpl;
}

/// @nodoc
abstract class _$$UnauthorizedImplCopyWith<$Res> {
  factory _$$UnauthorizedImplCopyWith(
          _$UnauthorizedImpl value, $Res Function(_$UnauthorizedImpl) then) =
      __$$UnauthorizedImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnauthorizedImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$UnauthorizedImpl>
    implements _$$UnauthorizedImplCopyWith<$Res> {
  __$$UnauthorizedImplCopyWithImpl(
      _$UnauthorizedImpl _value, $Res Function(_$UnauthorizedImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnauthorizedImpl implements _Unauthorized {
  const _$UnauthorizedImpl();

  @override
  String toString() {
    return 'Failure.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnauthorizedImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() notFound,
    required TResult Function() offline,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? notFound,
    TResult? Function()? offline,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
  }) {
    return unauthorized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? notFound,
    TResult Function()? offline,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return unauthorized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Offline value)? offline,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class _Unauthorized implements Failure {
  const factory _Unauthorized() = _$UnauthorizedImpl;
}

/// @nodoc
abstract class _$$BadRequestImplCopyWith<$Res> {
  factory _$$BadRequestImplCopyWith(
          _$BadRequestImpl value, $Res Function(_$BadRequestImpl) then) =
      __$$BadRequestImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$BadRequestImplCopyWithImpl<$Res>
    extends _$FailureCopyWithImpl<$Res, _$BadRequestImpl>
    implements _$$BadRequestImplCopyWith<$Res> {
  __$$BadRequestImplCopyWithImpl(
      _$BadRequestImpl _value, $Res Function(_$BadRequestImpl) _then)
      : super(_value, _then);
}

/// @nodoc

class _$BadRequestImpl implements _BadRequest {
  const _$BadRequestImpl();

  @override
  String toString() {
    return 'Failure.badRequest()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$BadRequestImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() server,
    required TResult Function() cache,
    required TResult Function() notFound,
    required TResult Function() offline,
    required TResult Function() timeout,
    required TResult Function() unauthorized,
    required TResult Function() badRequest,
  }) {
    return badRequest();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? server,
    TResult? Function()? cache,
    TResult? Function()? notFound,
    TResult? Function()? offline,
    TResult? Function()? timeout,
    TResult? Function()? unauthorized,
    TResult? Function()? badRequest,
  }) {
    return badRequest?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? server,
    TResult Function()? cache,
    TResult Function()? notFound,
    TResult Function()? offline,
    TResult Function()? timeout,
    TResult Function()? unauthorized,
    TResult Function()? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Server value) server,
    required TResult Function(_Cache value) cache,
    required TResult Function(_NotFound value) notFound,
    required TResult Function(_Offline value) offline,
    required TResult Function(_Timeout value) timeout,
    required TResult Function(_Unauthorized value) unauthorized,
    required TResult Function(_BadRequest value) badRequest,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Server value)? server,
    TResult? Function(_Cache value)? cache,
    TResult? Function(_NotFound value)? notFound,
    TResult? Function(_Offline value)? offline,
    TResult? Function(_Timeout value)? timeout,
    TResult? Function(_Unauthorized value)? unauthorized,
    TResult? Function(_BadRequest value)? badRequest,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Server value)? server,
    TResult Function(_Cache value)? cache,
    TResult Function(_NotFound value)? notFound,
    TResult Function(_Offline value)? offline,
    TResult Function(_Timeout value)? timeout,
    TResult Function(_Unauthorized value)? unauthorized,
    TResult Function(_BadRequest value)? badRequest,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class _BadRequest implements Failure {
  const factory _BadRequest() = _$BadRequestImpl;
}
