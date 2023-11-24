// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'movie_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MovieModel _$MovieModelFromJson(Map<String, dynamic> json) {
  return _MovieModel.fromJson(json);
}

/// @nodoc
mixin _$MovieModel {
  @HiveField(0)
  @JsonKey(name: 'id')
  int get id => throw _privateConstructorUsedError;
  @HiveField(1)
  @JsonKey(name: 'title')
  String get title => throw _privateConstructorUsedError;
  @HiveField(2)
  @JsonKey(name: 'poster_path')
  String get posterPath => throw _privateConstructorUsedError;
  @HiveField(3)
  @JsonKey(name: 'vote_average')
  double get ratingAverage => throw _privateConstructorUsedError;
  @HiveField(4)
  @JsonKey(name: 'vote_count')
  int get ratingCount => throw _privateConstructorUsedError;
  @HiveField(5)
  @JsonKey(name: 'overview')
  String get overview => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MovieModelCopyWith<MovieModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MovieModelCopyWith<$Res> {
  factory $MovieModelCopyWith(
          MovieModel value, $Res Function(MovieModel) then) =
      _$MovieModelCopyWithImpl<$Res, MovieModel>;
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int id,
      @HiveField(1) @JsonKey(name: 'title') String title,
      @HiveField(2) @JsonKey(name: 'poster_path') String posterPath,
      @HiveField(3) @JsonKey(name: 'vote_average') double ratingAverage,
      @HiveField(4) @JsonKey(name: 'vote_count') int ratingCount,
      @HiveField(5) @JsonKey(name: 'overview') String overview});
}

/// @nodoc
class _$MovieModelCopyWithImpl<$Res, $Val extends MovieModel>
    implements $MovieModelCopyWith<$Res> {
  _$MovieModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? posterPath = null,
    Object? ratingAverage = null,
    Object? ratingCount = null,
    Object? overview = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      ratingAverage: null == ratingAverage
          ? _value.ratingAverage
          : ratingAverage // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MovieModelImplCopyWith<$Res>
    implements $MovieModelCopyWith<$Res> {
  factory _$$MovieModelImplCopyWith(
          _$MovieModelImpl value, $Res Function(_$MovieModelImpl) then) =
      __$$MovieModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) @JsonKey(name: 'id') int id,
      @HiveField(1) @JsonKey(name: 'title') String title,
      @HiveField(2) @JsonKey(name: 'poster_path') String posterPath,
      @HiveField(3) @JsonKey(name: 'vote_average') double ratingAverage,
      @HiveField(4) @JsonKey(name: 'vote_count') int ratingCount,
      @HiveField(5) @JsonKey(name: 'overview') String overview});
}

/// @nodoc
class __$$MovieModelImplCopyWithImpl<$Res>
    extends _$MovieModelCopyWithImpl<$Res, _$MovieModelImpl>
    implements _$$MovieModelImplCopyWith<$Res> {
  __$$MovieModelImplCopyWithImpl(
      _$MovieModelImpl _value, $Res Function(_$MovieModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? posterPath = null,
    Object? ratingAverage = null,
    Object? ratingCount = null,
    Object? overview = null,
  }) {
    return _then(_$MovieModelImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      posterPath: null == posterPath
          ? _value.posterPath
          : posterPath // ignore: cast_nullable_to_non_nullable
              as String,
      ratingAverage: null == ratingAverage
          ? _value.ratingAverage
          : ratingAverage // ignore: cast_nullable_to_non_nullable
              as double,
      ratingCount: null == ratingCount
          ? _value.ratingCount
          : ratingCount // ignore: cast_nullable_to_non_nullable
              as int,
      overview: null == overview
          ? _value.overview
          : overview // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
@HiveType(typeId: 0)
class _$MovieModelImpl implements _MovieModel {
  const _$MovieModelImpl(
      {@HiveField(0) @JsonKey(name: 'id') required this.id,
      @HiveField(1) @JsonKey(name: 'title') required this.title,
      @HiveField(2) @JsonKey(name: 'poster_path') required this.posterPath,
      @HiveField(3) @JsonKey(name: 'vote_average') required this.ratingAverage,
      @HiveField(4) @JsonKey(name: 'vote_count') required this.ratingCount,
      @HiveField(5) @JsonKey(name: 'overview') required this.overview});

  factory _$MovieModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$MovieModelImplFromJson(json);

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  final int id;
  @override
  @HiveField(1)
  @JsonKey(name: 'title')
  final String title;
  @override
  @HiveField(2)
  @JsonKey(name: 'poster_path')
  final String posterPath;
  @override
  @HiveField(3)
  @JsonKey(name: 'vote_average')
  final double ratingAverage;
  @override
  @HiveField(4)
  @JsonKey(name: 'vote_count')
  final int ratingCount;
  @override
  @HiveField(5)
  @JsonKey(name: 'overview')
  final String overview;

  @override
  String toString() {
    return 'MovieModel(id: $id, title: $title, posterPath: $posterPath, ratingAverage: $ratingAverage, ratingCount: $ratingCount, overview: $overview)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MovieModelImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.posterPath, posterPath) ||
                other.posterPath == posterPath) &&
            (identical(other.ratingAverage, ratingAverage) ||
                other.ratingAverage == ratingAverage) &&
            (identical(other.ratingCount, ratingCount) ||
                other.ratingCount == ratingCount) &&
            (identical(other.overview, overview) ||
                other.overview == overview));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType, id, title, posterPath, ratingAverage, ratingCount, overview);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      __$$MovieModelImplCopyWithImpl<_$MovieModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MovieModelImplToJson(
      this,
    );
  }
}

abstract class _MovieModel implements MovieModel {
  const factory _MovieModel(
      {@HiveField(0) @JsonKey(name: 'id') required final int id,
      @HiveField(1) @JsonKey(name: 'title') required final String title,
      @HiveField(2)
      @JsonKey(name: 'poster_path')
      required final String posterPath,
      @HiveField(3)
      @JsonKey(name: 'vote_average')
      required final double ratingAverage,
      @HiveField(4) @JsonKey(name: 'vote_count') required final int ratingCount,
      @HiveField(5)
      @JsonKey(name: 'overview')
      required final String overview}) = _$MovieModelImpl;

  factory _MovieModel.fromJson(Map<String, dynamic> json) =
      _$MovieModelImpl.fromJson;

  @override
  @HiveField(0)
  @JsonKey(name: 'id')
  int get id;
  @override
  @HiveField(1)
  @JsonKey(name: 'title')
  String get title;
  @override
  @HiveField(2)
  @JsonKey(name: 'poster_path')
  String get posterPath;
  @override
  @HiveField(3)
  @JsonKey(name: 'vote_average')
  double get ratingAverage;
  @override
  @HiveField(4)
  @JsonKey(name: 'vote_count')
  int get ratingCount;
  @override
  @HiveField(5)
  @JsonKey(name: 'overview')
  String get overview;
  @override
  @JsonKey(ignore: true)
  _$$MovieModelImplCopyWith<_$MovieModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
