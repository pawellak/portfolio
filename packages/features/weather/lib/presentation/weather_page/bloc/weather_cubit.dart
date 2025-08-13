import 'package:components_library/components_library_export.dart';

part 'weather_state.dart';

@injectable
class WeatherCubit extends BaseCubit<WeatherState> {
  WeatherCubit() : super(WeatherInitial());

  @override
  Future<void> initialMethod() async {}
}
