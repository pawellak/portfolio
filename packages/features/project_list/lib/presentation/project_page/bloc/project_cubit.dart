import 'package:components_library/components_library_export.dart' show BaseCubit, BaseState, injectable;
import 'package:feature_project_list/presentation/data/project_model.dart';
import 'package:feature_project_list/presentation/repositories/project_list_repository.dart';

part 'project_state.dart';

@injectable
class ProjectCubit extends BaseCubit<ProjectState> {
  ProjectCubit(this._repository) : super(const ProjectInitial());

  final ProjectListRepository _repository;

  @override
  Future<void> initialParams(dynamic args) async {
    await super.initialParams(args);

    if (args is String) {
      final project = await _repository.getProjectById(args);
      if (project != null) {
        emit(ProjectUpdateView(project: project));
      }
    }
  }
}
