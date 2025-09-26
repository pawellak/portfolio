import 'package:components_library/components_library_export.dart' show BaseCubit, BaseState, injectable;

part 'curriculum_vitae_state.dart';

@injectable
class CurriculumVitaeCubit extends BaseCubit<CurriculumVitaeState> {
  CurriculumVitaeCubit() : super(const CurriculumVitaeInitial());
}
