import 'package:components_library/components_library_export.dart' show AutoSizeGroup, BaseCubit, BaseState, injectable;

part 'about_me_state.dart';

@injectable
class AboutMeCubit extends BaseCubit<AboutMeState> {
  AboutMeCubit() : super(AboutMeInitial());

  final _contactGroup = AutoSizeGroup();

  AutoSizeGroup get contactGroup => _contactGroup;
}
