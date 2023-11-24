// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'page_of_movies_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

PageOfMoviesModel _$PageOfMoviesModelFromJson(Map<String, dynamic> json) {
  return _PageOfMoviesModel.fromJson(json);
}

/// @nodoc
mixin _$PageOfMoviesModel {
  @JsonKey(name: 'page')
  int get page => throw _privateConstructorUsedError;
  @JsonKey(name: 'results')
  List<MovieModel> get results => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_pages')
  int get totalPages => throw _privateConstructorUsedError;
  @JsonKey(name: 'total_results')
  int get totalResults => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PageOfMoviesModelCopyWith<PageOfMoviesModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PageOfMoviesModelCopyWith<$Res> {
  factory $PageOfMoviesModelCopyWith(
          PageOfMoviesModel value, $Res Function(PageOfMoviesModel) then) =
      _$PageOfMoviesModelCopyWithImpl<$Res, PageOfMoviesModel>;
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<MovieModel> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class _$PageOfMoviesModelCopyWithImpl<$Res, $Val extends PageOfMoviesModel>
    implements $PageOfMoviesModelCopyWith<$Res> {
  _$PageOfMoviesModelCopyWithImpl(this._value, this._then);

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
              as List<MovieModel>,
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
abstract class _$$PageOfMoviesModelImplCopyWith<$Res>
    implements $PageOfMoviesModelCopyWith<$Res> {
  factory _$$PageOfMoviesModelImplCopyWith(_$PageOfMoviesModelImpl value,
          $Res Function(_$PageOfMoviesModelImpl) then) =
      __$$PageOfMoviesModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@JsonKey(name: 'page') int page,
      @JsonKey(name: 'results') List<MovieModel> results,
      @JsonKey(name: 'total_pages') int totalPages,
      @JsonKey(name: 'total_results') int totalResults});
}

/// @nodoc
class __$$PageOfMoviesModelImplCopyWithImpl<$Res>
    extends _$PageOfMoviesModelCopyWithImpl<$Res, _$PageOfMoviesModelImpl>
    implements _$$PageOfMoviesModelImplCopyWith<$Res> {
  __$$PageOfMoviesModelImplCopyWithImpl(_$PageOfMoviesModelImpl _value,
      $Res Function(_$PageOfMoviesModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? page = null,
    Object? results = null,
    Object? totalPages = null,
    Object? totalResults = null,
  }) {
    return _then(_$PageOfMoviesModelImpl(
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      results: null == results
          ? _value._results
          : results // ignore: cast_nullable_to_non_nullable
              as List<MovieModel>,
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
@JsonSerializable()
class _$PageOfMoviesModelImpl implements _PageOfMoviesModel {
  const _$PageOfMoviesModelImpl(
      {@JsonKey(name: 'page') required this.page,
      @JsonKey(name: 'results') required final List<MovieModel> results,
      @JsonKey(name: 'total_pages') required this.totalPages,
      @JsonKey(name: 'total_results') required this.totalResults})
      : _results = results;

  factory _$PageOfMoviesModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$PageOfMoviesModelImplFromJson(json);

  @override
  @JsonKey(name: 'page')
  final int page;
  final List<MovieModel> _results;
  @override
  @JsonKey(name: 'results')
  List<MovieModel> get results {
    if (_results is EqualUnmodifiableListView) return _results;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_results);
  }

  @override
  @JsonKey(name: 'total_pages')
  final int totalPages;
  @override
  @JsonKey(name: 'total_results')
  final int totalResults;

  @override
  String toString() {
    return 'PageOfMoviesModel(page: $page, results: $results, totalPages: $totalPages, totalResults: $totalResults)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PageOfMoviesModelImpl &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality().equals(other._results, _results) &&
            (identical(other.totalPages, totalPages) ||
                other.totalPages == totalPages) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, page,
      const DeepCollectionEquality().hash(_results), totalPages, totalResults);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PageOfMoviesModelImplCopyWith<_$PageOfMoviesModelImpl> get copyWith =>
      __$$PageOfMoviesModelImplCopyWithImpl<_$PageOfMoviesModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PageOfMoviesModelImplToJson(
      this,
    );
  }
}

abstract class _PageOfMoviesModel implements PageOfMoviesModel {
  const factory _PageOfMoviesModel(
          {@JsonKey(name: 'page') required final int page,
          @JsonKey(name: 'results') required final List<MovieModel> results,
          @JsonKey(name: 'total_pages') required final int totalPages,
          @JsonKey(name: 'total_results') required final int totalResults}) =
      _$PageOfMoviesModelImpl;

  factory _PageOfMoviesModel.fromJson(Map<String, dynamic> json) =
      _$PageOfMoviesModelImpl.fromJson;

  @override
  @JsonKey(name: 'page')
  int get page;
  @override
  @JsonKey(name: 'results')
  List<MovieModel> get results;
  @override
  @JsonKey(name: 'total_pages')
  int get totalPages;
  @override
  @JsonKey(name: 'total_results')
  int get totalResults;
  @override
  @JsonKey(ignore: true)
  _$$PageOfMoviesModelImplCopyWith<_$PageOfMoviesModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
