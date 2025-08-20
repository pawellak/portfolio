import 'package:components_library/components_library_export.dart';
import 'package:components_library/presentation/home_page/web/widgets/appbar_drawer_widget.dart'
    show AppbarDrawerWidget;
import 'package:components_library/presentation/home_page/web/widgets/appbar_menu_widget.dart';
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:flutter/material.dart';

class WebBodyWidget extends StatelessWidget {
  const WebBodyWidget({super.key, required this.navigationShell});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) => Scaffold(
    drawer: AppbarDrawerWidget(navigationShell: navigationShell),
    body: Column(
      children: [
        AppBarMenuWidget(navigationShell: navigationShell),
        Expanded(
          child: SingleChildScrollView(
            child: Padding(padding: EdgeInsets.symmetric(horizontal: context.paddingMobile), child: navigationShell),
          ),
        ),
        Container(
          color: Colors.black,
          width: double.infinity,
          height: Dimens.dimen34,
          child: const Center(
            child: Label('-= Paweł Łąk & Flutter 2025 =-', color: Colors.white, textAlign: TextAlign.center),
          ),
        ),
      ],
    ),
  );
}
