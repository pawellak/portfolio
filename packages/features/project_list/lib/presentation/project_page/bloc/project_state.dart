part of 'project_cubit.dart';

sealed class ProjectState extends BaseState {
  const ProjectState();
}

class ProjectInitial extends ProjectState {
  const ProjectInitial();
}

class ProjectUpdateView extends ProjectState {
  const ProjectUpdateView({required this.project});

  final ProjectModel project;
}
