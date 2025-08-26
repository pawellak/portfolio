import 'package:components_library/widgets/adapters/cl_adapter.dart';
import 'package:components_library/widgets/page/base_page.dart';
import 'package:feature_about_me/presentation/about_me_page/about_me_compact_widget.dart';
import 'package:feature_about_me/presentation/about_me_page/about_me_expanded_widget.dart';
import 'package:feature_about_me/presentation/about_me_page/bloc/about_me_cubit.dart';
import 'package:flutter/material.dart';

const _kPageName = 'about-me';
const _kDefaultRoutePath = '/';

class AboutMePage extends BasePage<AboutMeCubit> {
  const AboutMePage({super.key}) : super(edgeInsets: EdgeInsets.zero);

  static const String name = _kPageName;
  static const String path = _kDefaultRoutePath;

  @override
  Widget buildPage(BuildContext context) =>
      const SingleChildScrollView(child: ClAdapter(expanded: AboutMeExpanded(), compact: AboutMeCompact()));
}
