import 'package:components_library/components_library_export.dart';
import 'package:feature_weather/presentation/weather_page/weather_page.dart';

@Singleton(as: FeatureWeather)
class FeatureWeatherImpl implements FeatureWeather {
  const FeatureWeatherImpl();

  static const String featureName = WeatherPage.name;
  static const String featurePath = WeatherPage.path;

  @override
  String get path => WeatherPage.path;

  @override
  String get name => WeatherPage.name;
}
