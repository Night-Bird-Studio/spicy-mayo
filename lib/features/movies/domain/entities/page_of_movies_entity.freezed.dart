// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_of_movies_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$PageOfMoviesEntity {
  int get page => throw _privateConstructorUsedError;
  List<MovieEntity> get results => throw _privateConstructorUsedError;
  int get totalPages => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $PageOfMoviesEntityCopyWith<PageOfMoviesEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageOfMoviesEntityCopyWith<$Res> {
  factory $PageOfMoviesEntityCopyWith(
          PageOfMoviesEntity value, $Res Function(PageOfMoviesEntity) then) =
      _$PageOfMoviesEntityCopyWithImpl<$Res, PageOfMoviesEntity>;
  @useResult
  $Res call(
      {int page, List<MovieEntity> results, int totalPages, int totalResults});
}

/// @nodoc
class _$PageOfMoviesEntityCopyWithImpl<$Res, $Val extends PageOfMoviesEntity>
    implements $PageOfMoviesEntityCopyWith<$Res> {
  _$PageOfMoviesEntityCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_value.copyWith(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value.results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PageOfMoviesEntityImplCopyWith<$Res>
    implements $PageOfMoviesEntityCopyWith<$Res> {
  factory _$$PageOfMoviesEntityImplCopyWith(_$PageOfMoviesEntityImpl value,
          $Res Function(_$PageOfMoviesEntityImpl) then) =
      __$$PageOfMoviesEntityImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int page, List<MovieEntity> results, int totalPages, int totalResults});
}

/// @nodoc
class __$$PageOfMoviesEntityImplCopyWithImpl<$Res>
    extends _$PageOfMoviesEntityCopyWithImpl<$Res, _$PageOfMoviesEntityImpl>
    implements _$$PageOfMoviesEntityImplCopyWith<$Res> {
  __$$PageOfMoviesEntityImplCopyWithImpl(_$PageOfMoviesEntityImpl _value,
      $Res Function(_$PageOfMoviesEntityImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$PageOfMoviesEntityImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieEntity>,
      totalPages: null == totalPages
          ? _value.totalPages
          : totalPages // ignore: cast_nullable_to_non_nullable
              as int,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$PageOfMoviesEntityImpl implements _PageOfMoviesEntity {
  const _$PageOfMoviesEntityImpl(
      {required this.page,
      required final List<MovieEntity> results,
      required this.totalPages,
      required this.totalResults})
      : _results = results;

  @override
  final int page;
  final List<MovieEntity> _results;
  @override
  List<MovieEntity> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  final int totalPages;
  @override
  final int totalResults;

  @override
  String toString() {
    return 'PageOfMoviesEntity(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageOfMoviesEntityImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageOfMoviesEntityImplCopyWith<_$PageOfMoviesEntityImpl> get copyWith =>
      __$$PageOfMoviesEntityImplCopyWithImpl<_$PageOfMoviesEntityImpl>(
          this, _$identity);
}

abstract class _PageOfMoviesEntity implements PageOfMoviesEntity {
  const factory _PageOfMoviesEntity(
      {required final int page,
      required final List<MovieEntity> results,
      required final int totalPages,
      required final int totalResults}) = _$PageOfMoviesEntityImpl;

  @override
  int get page;
  @override
  List<MovieEntity> get results;
  @override
  int get totalPages;
  @override
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$PageOfMoviesEntityImplCopyWith<_$PageOfMoviesEntityImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
