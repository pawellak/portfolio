import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart';

class AboutMeSectionDescription extends StatelessWidget {
  const AboutMeSectionDescription({super.key});

  @override
  Widget build(BuildContext context) => ClContainer(
    padding: const EdgeInsets.all(Dimens.dimen32),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Dimens.dimen12,
      children: [
        Label('label.about_me.title', style: context.textTheme.titleLarge,fontWeight: FontWeight.bold,),
        ClHtmlLabel(data: 'label.about_me.description'.tr(context: context)),
      ],
    ),
  );
}
