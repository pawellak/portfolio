import 'package:components_library/widgets/adapters/cl_adapter.dart';
import 'package:components_library/widgets/page/base_page.dart';
import 'package:feature_weather/presentation/weather_page/bloc/weather_cubit.dart';
import 'package:feature_weather/presentation/weather_page/widgets/weather_desktop_widget.dart';
import 'package:feature_weather/presentation/weather_page/widgets/weather_mobile_widget.dart';
import 'package:flutter/material.dart';

class WeatherPage extends BasePage<WeatherCubit> {
  const WeatherPage({super.key});

  static const String name = 'weather-page';
  static const String path = '/$name';

  @override
  String get goName => name;

  @override
  String get goPath => path;

  @override
  ClAdapter buildPage(BuildContext context) =>
      const ClAdapter(desktop: WeatherDesktopWidget(), mobile: WeatherMobileWidget());
}
