import 'package:components_library/components_library_export.dart';

part 'project_list_state.dart';

@injectable
class ProjectListCubit extends BaseCubit<ProjectListState> {
  ProjectListCubit() : super(ProjectListInitial());

  @override
  Future<void> initialMethod() async {}
}
