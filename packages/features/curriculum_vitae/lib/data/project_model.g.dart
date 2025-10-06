// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) => ProjectModel(
  id: json['id'] as String,
  title: json['title'] as String,
  shortDescription: json['shortDescription'] as String,
  dateStart: DateTime.parse(json['dateStart'] as String),
  dateEnd:
      json['dateEnd'] == null
          ? null
          : DateTime.parse(json['dateEnd'] as String),
  shortDescriptionUrl: json['shortDescriptionUrl'] as String,
);
