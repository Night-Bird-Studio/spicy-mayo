// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'movie_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class MovieModelImplAdapter extends TypeAdapter<_$MovieModelImpl> {
  @override
  final int typeId = 0;

  @override
  _$MovieModelImpl read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return _$MovieModelImpl(
      id: fields[0] as int,
      title: fields[1] as String,
      posterPath: fields[2] as String,
      ratingAverage: fields[3] as double,
      ratingCount: fields[4] as int,
      overview: fields[5] as String,
    );
  }

  @override
  void write(BinaryWriter writer, _$MovieModelImpl obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.posterPath)
      ..writeByte(3)
      ..write(obj.ratingAverage)
      ..writeByte(4)
      ..write(obj.ratingCount)
      ..writeByte(5)
      ..write(obj.overview);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is MovieModelImplAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MovieModelImpl _$$MovieModelImplFromJson(Map<String, dynamic> json) =>
    _$MovieModelImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      posterPath: json['poster_path'] as String,
      ratingAverage: (json['vote_average'] as num).toDouble(),
      ratingCount: json['vote_count'] as int,
      overview: json['overview'] as String,
    );

Map<String, dynamic> _$$MovieModelImplToJson(_$MovieModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'poster_path': instance.posterPath,
      'vote_average': instance.ratingAverage,
      'vote_count': instance.ratingCount,
      'overview': instance.overview,
    };
