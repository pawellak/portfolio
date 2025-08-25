import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/resources/icons/app_image.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:flutter/material.dart';

const _kMe = 'Paweł Łąk';
const _kPhoneContact = '+48 792-592-688';
const _kEmail = 'pawellak@gmail.com';

class AboutMeSectionContact extends StatelessWidget {
  const AboutMeSectionContact({super.key});

  @override
  Widget build(BuildContext context) => ClContainer(
    borderRadius: BorderRadius.zero,
    child: Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      spacing: Dimens.dimen16,
      children: [
        const ClImagePathWidget(path: AppImage.me, width: Dimens.dimen120),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: Dimens.dimen12,
            children: [
              Label(_kMe, style: context.textTheme.titleLarge, textAlign: TextAlign.start),
              const _AboutMeContactWidget(description: _kPhoneContact, icon: FluentIcons.phone_16_regular),
              const _AboutMeContactWidget(description: _kEmail, icon: FluentIcons.mail_16_regular),
              const _AboutMeContactWidget(
                description: 'label.about_me.office_place',
                icon: FluentIcons.city_16_regular,
                translate: true,
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

class _AboutMeContactWidget extends StatelessWidget {
  const _AboutMeContactWidget({required this.description, required this.icon, this.translate = false});

  final String description;
  final IconData icon;
  final bool translate;

  @override
  Widget build(BuildContext context) => Row(
    spacing: Dimens.dimen8,
    children: [
      ClIcon(path: icon, color: context.colorTokens.textPrimary),
      Expanded(
        child: Label(
          description,
          translate: translate,
          style: context.textTheme.bodyLarge,
          color: context.colorTokens.textSecondary,
          textAlign: TextAlign.start,
        ),
      ),
    ],
  );
}
