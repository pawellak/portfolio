import 'package:components_library/components_library_export.dart';
import 'package:feature_curriculum_vitae/presentation/curriculum_vitae_page/curriculum_vitae_page.dart';

@injectable
class CurriculumVitaeRouter implements BaseRouter {
  const CurriculumVitaeRouter();

  @override
  List<RouteBase> get routes => [];

  @override
  StatefulShellBranch get statefulShellBranch => StatefulShellBranch(
    routes: [
      GoRoute(
        path: CurriculumVitaePage.path,
        name: CurriculumVitaePage.name,
        builder: (context, state) => const CurriculumVitaePage(),
      ),
    ],
  );
}
