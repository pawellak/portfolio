// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectModel _$ProjectModelFromJson(Map<String, dynamic> json) => ProjectModel(
  id: json['id'] as String,
  title: json['title'] as String,
  shortDescription: json['shortDescription'] as String,
  role: json['role'] as String,
  dateStart:
      json['dateStart'] == null
          ? null
          : DateTime.parse(json['dateStart'] as String),
  dateEnd:
      json['dateEnd'] == null
          ? null
          : DateTime.parse(json['dateEnd'] as String),
  shortDescriptionUrl: json['shortDescriptionUrl'] as String,
  introduction: json['introduction'] as String,
  introductionUrl: json['introductionUrl'] as String,
  development: json['development'] as String,
  developmentUrl: json['developmentUrl'] as String,
  conclusion: json['conclusion'] as String,
  conclusionUrl: json['conclusionUrl'] as String,
  category: json['category'] as String,
);
