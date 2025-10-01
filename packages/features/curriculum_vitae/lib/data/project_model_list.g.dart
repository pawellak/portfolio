// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_model_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectModelList _$ProjectModelListFromJson(Map<String, dynamic> json) =>
    ProjectModelList(
      result:
          (json['result'] as List<dynamic>)
              .map((e) => ProjectModel.fromJson(e as Map<String, dynamic>))
              .toList(),
      length: (json['length'] as num).toInt(),
    );
