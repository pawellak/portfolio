part of 'project_list_cubit.dart';

sealed class ProjectListState extends BaseState {
  const ProjectListState();
}

class ProjectListInitial extends ProjectListState {
  const ProjectListInitial();
}

class ProjectListUpdateView extends ProjectListState {
  const ProjectListUpdateView({required this.items});

  final List<ProjectModel> items;
}
