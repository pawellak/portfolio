import 'package:components_library/components_library_export.dart';

part 'about_me_state.dart';

@injectable
class AboutMeCubit extends BaseCubit<AboutMeState> {
  AboutMeCubit() : super(AboutMeInitial());

  @override
  Future<void> initialMethod() async {}
}
