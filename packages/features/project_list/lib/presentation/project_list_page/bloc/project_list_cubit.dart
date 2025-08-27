import 'package:components_library/components_library_export.dart';
import 'package:feature_project_list/presentation/data/project_model.dart';
import 'package:feature_project_list/presentation/repositories/project_list_repository.dart';

part 'project_list_state.dart';

@injectable
class ProjectListCubit extends BaseCubit<ProjectListState> {
  ProjectListCubit(this._repository) : super(const ProjectListInitial());

  final ProjectListRepository _repository;

  String currentLocale = getIt<AppSettingsRepository>().currentLocale;

  @override
  Future<void> initialMethod() async {
    await refreshPage();
  }

  Future<void> refreshPage() async {
    final list = await _repository.getProjectList();
    if (list.isNotEmpty) {
      emit(ProjectListUpdateView(items: list));
    }
  }
}
