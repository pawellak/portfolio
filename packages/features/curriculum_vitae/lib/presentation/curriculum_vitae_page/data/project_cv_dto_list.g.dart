// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'project_cv_dto_list.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ProjectCvDtoList _$ProjectCvDtoListFromJson(Map<String, dynamic> json) =>
    ProjectCvDtoList(
      result:
          (json['result'] as List<dynamic>)
              .map((e) => ProjectCvDto.fromJson(e as Map<String, dynamic>))
              .toList(),
    );
