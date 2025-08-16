import 'package:components_library/components_library_export.dart';
import 'package:feature_weather/presentation/weather_page/weather_page.dart' show WeatherPage;

@injectable
class WeatherRouter implements BaseRouter {
  const WeatherRouter();

  @override
  List<RouteBase> get routes => [];

  @override
  StatefulShellBranch get statefulShellBranch => StatefulShellBranch(routes: [const WeatherPage().toRoute]);
}
