import 'package:components_library/components_library_export.dart' show ClIcon, Label, ThemeExtensions;
import 'package:components_library/resources/resources_exports.dart' show Dimens;
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart'
    show BuildContext, Column, CrossAxisAlignment, EdgeInsets, Expanded, FontWeight, IconData, Row, SizedBox, StatelessWidget, Widget;

class AboutMeSectionWidget extends StatelessWidget {
  const AboutMeSectionWidget({super.key, required this.icon, required this.title, required this.child});

  final IconData icon;
  final String title;
  final Widget child;

  @override
  Widget build(BuildContext context) => ClContainer(
    margin: const EdgeInsets.all(Dimens.dimen8),
    padding: const EdgeInsets.all(Dimens.dimen12),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        _AboutMeEducationTitleWidget(title: title, icon: icon),
        ClContainer(
          width: double.infinity,
          height: Dimens.dimen1,
          backgroundColor: context.colorTokens.dividerColor,
          margin: const EdgeInsets.only(left: Dimens.dimen4, right: Dimens.dimen4, bottom: Dimens.dimen12,top: Dimens.dimen4),
        ),
        child,
      ],
    ),
  );
}

class _AboutMeEducationTitleWidget extends StatelessWidget {
  const _AboutMeEducationTitleWidget({required this.title, required this.icon});

  final String title;
  final IconData icon;

  @override
  Widget build(BuildContext context) => Row(
    spacing: Dimens.dimen12,
    children: [
      ClIcon(path: icon, size: Dimens.dimen28, color: context.colorTokens.iconPrimaryColor),
      Expanded(child: Label(title, style: context.textTheme.titleLarge?.copyWith(fontWeight: FontWeight.w600))),
    ],
  );
}
