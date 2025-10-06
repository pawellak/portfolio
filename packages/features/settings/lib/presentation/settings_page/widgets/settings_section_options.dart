import 'dart:ui';

import 'package:components_library/components_library_export.dart'
    show
        AppLocale,
        BlocBuilder,
        ClImagePathWidget,
        ClRadioListTile,
        ClSwitch,
        Label,
        ReadContext,
        ThemeExtensions,
        ThemeModeExtensions,
        WidgetExtension;
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/resources/icons/app_image.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:feature_settings/presentation/settings_page/bloc/settings_cubit.dart';
import 'package:flutter/material.dart'
    show
        Border,
        BuildContext,
        Column,
        CrossAxisAlignment,
        EdgeInsets,
        Icons,
        MainAxisAlignment,
        StatelessWidget,
        Widget;

class SettingSectionOptions extends StatelessWidget {
  const SettingSectionOptions({super.key});

  @override
  Widget build(BuildContext context) {
    final cubit = context.read<SettingsCubit>();
    return BlocBuilder<SettingsCubit, SettingsState>(
      builder:
          (context, state) => Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            spacing: Dimens.dimen32,
            children: [
              ClContainer(
                margin: const EdgeInsets.only(top: Dimens.dimen12),
                border: Border.all(color: context.colorTokens.containerBorderColor),
                child: Column(
                  spacing: Dimens.dimen8,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Label('label.settings.theme', style: context.textTheme.bodyLarge, fontWeight: FontWeight.bold),
                    ClContainer(
                      backgroundColor: context.colorTokens.secondaryBackgroundColor,
                      child: ClSwitch(
                        value: cubit.currentTheme.isDarkMode(context),
                        onChanged: cubit.onToggleThemePressed,
                        iconDataSelected: Icons.dark_mode_rounded,
                        iconDataUnselected: Icons.dark_mode_outlined,
                        labelSelected: 'label.settings.isDarkMode',
                        labelUnselected: 'label.settings.isLightMode',
                      ),
                    ),
                  ],
                ),
              ),
              ClContainer(
                height: Dimens.dimen200,
                border: Border.all(color: context.colorTokens.containerBorderColor),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  spacing: Dimens.dimen8,
                  children: [
                    Label('label.settings.language', style: context.textTheme.bodyLarge, fontWeight: FontWeight.bold),
                    ClRadioListTile<String>(
                      suffixWidget: ClImagePathWidget(
                        padding: const EdgeInsets.symmetric(horizontal: Dimens.dimen4),
                        backgroundColor: context.colorTokens.flagBackgroundColor,
                        path: AppImage.flagPl,
                        width: Dimens.dimen44,
                      ),
                      title: 'label.settings.polish',
                      value: AppLocale.pl.languageCode,
                      groupValue: cubit.currentLocale,
                      onChanged: cubit.onLanguageRadioChanged,
                    ),
                    ClRadioListTile<String>(
                      suffixWidget: ClImagePathWidget(
                        padding: const EdgeInsets.symmetric(horizontal: Dimens.dimen4),
                        backgroundColor: context.colorTokens.flagBackgroundColor,
                        path: AppImage.flagEn,
                        width: Dimens.dimen44,
                      ),
                      title: 'label.settings.english',
                      value: AppLocale.en.languageCode,
                      groupValue: cubit.currentLocale,
                      onChanged: cubit.onLanguageRadioChanged,
                    ),
                  ],
                ),
              ),
            ],
          ).addPaddingAll(Dimens.dimen8),
    );
  }
}
