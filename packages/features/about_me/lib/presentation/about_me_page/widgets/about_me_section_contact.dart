import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/resources/icons/app_image.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:feature_about_me/presentation/about_me_page/bloc/about_me_cubit.dart';
import 'package:flutter/material.dart';

const _kMe = 'Paweł Łąk';
const _kPhoneContact = '+48 792-592-688';
const _kEmail = 'pawellak@gmail.com';
const _kMaxContactLines = 1;

class AboutMeSectionContact extends StatelessWidget {
  const AboutMeSectionContact({super.key});

  @override
  Widget build(BuildContext context) {
    final textGroup = context.read<AboutMeCubit>().contactGroup;

    return ClContainer(
      borderRadius: const BorderRadius.only(
        bottomLeft: Radius.circular(Dimens.dimen12),
        bottomRight: Radius.circular(Dimens.dimen12),
      ),
      margin: const EdgeInsets.only(bottom: Dimens.dimen12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        spacing: Dimens.dimen12,
        children: [
          const ClImagePathWidget(path: AppImage.me, width: Dimens.dimen120, fit: BoxFit.scaleDown),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              spacing: Dimens.dimen12,
              children: [
                Label(
                  _kMe,
                  translate: false,
                  style: context.textTheme.titleLarge,
                  textAlign: TextAlign.start,
                  fontWeight: FontWeight.bold,
                ),
                _AboutMeContactWidget(
                  group: textGroup,
                  description: _kPhoneContact,
                  icon: FluentIcons.phone_16_regular,
                  onTap: () {
                    const Launcher().call(_kPhoneContact);
                  },
                ),
                _AboutMeContactWidget(
                  group: textGroup,
                  description: _kEmail,
                  icon: FluentIcons.mail_16_regular,
                  onTap: () {
                    const Launcher().mailTo(_kEmail);
                  },
                ),
                _AboutMeContactWidget(
                  group: textGroup,
                  description: 'label.about_me.office_place'.tr(),
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
}

class _AboutMeContactWidget extends StatelessWidget {
  const _AboutMeContactWidget({
    required this.description,
    required this.icon,
    this.translate = false,
    this.onTap,
    required this.group,
  });

  final String description;
  final IconData icon;
  final bool translate;
  final VoidCallback? onTap;
  final AutoSizeGroup group;

  @override
  Widget build(BuildContext context) => MouseRegion(
    cursor: onTap != null? SystemMouseCursors.click : MouseCursor.defer,
    child: ClContainer(
      onTap: onTap,
      backgroundColor: context.colorTokens.contactBackgroundColor,
      borderRadius: const BorderRadius.all(Radius.circular(Dimens.dimen8)),
      padding: const EdgeInsets.all(Dimens.dimen4),
      child: Row(
        spacing: Dimens.dimen4,
        children: [
          ClIcon(path: icon, color: context.colorTokens.textPrimary),
          Expanded(
            child: AutoSizeText(
              minFontSize: Dimens.dimen4,
              group: group,
              description,
              maxLines: _kMaxContactLines,
              style: context.textTheme.bodyMedium?.copyWith(color: context.colorTokens.textPrimary),
              textAlign: TextAlign.start,
            ),
          ),
        ],
      ),
    ),
  );
}
