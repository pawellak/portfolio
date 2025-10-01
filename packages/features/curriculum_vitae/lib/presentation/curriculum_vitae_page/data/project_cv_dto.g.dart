// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_cv_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectCvDto _$ProjectCvDtoFromJson(Map<String, dynamic> json) => ProjectCvDto(
  id: json['id'] as String,
  title: json['title'] as String,
  description: json['description'] as String,
  advantages: json['advantages'] as String,
  additional: json['additional'] as String,
  imageUrl: json['imageUrl'] as String,
  dateStart: DateTime.parse(json['dateStart'] as String),
  dateEnd:
      json['dateEnd'] == null
          ? null
          : DateTime.parse(json['dateEnd'] as String),
);
