import 'package:components_library/widgets/adapters/cl_adapter.dart';
import 'package:components_library/widgets/page/base_page.dart';
import 'package:feature_about_me/presentation/about_me_page/bloc/about_me_cubit.dart';
import 'package:feature_about_me/presentation/about_me_page/widgets/about_me_desktop_widget.dart';
import 'package:feature_about_me/presentation/about_me_page/widgets/about_me_mobile_widget.dart';
import 'package:flutter/material.dart';

const _kPageName = 'about-me';
const _kDefaultRoutePath = '/';

class AboutMePage extends BasePage<AboutMeCubit> {
  const AboutMePage({super.key});

  static const String name = _kPageName;
  static const String path = _kDefaultRoutePath;

  @override
  String get goName => name;

  @override
  String get goPath => path;

  @override
  ClAdapter buildPage(BuildContext context) => const ClAdapter(desktop: AboutMeDesktop(), mobile: AboutMeMobile());
}
