import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:components_library/resources/icons/app_icons.dart';
import 'package:components_library/widgets/container/cl_container.dart';
import 'package:feature_settings/presentation/settings_page/bloc/settings_cubit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart' show BuildContext, Colors, Column, Icons, StatelessWidget, Widget;

class SettingListWidget extends StatelessWidget {
  const SettingListWidget({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<SettingsCubit, SettingsState>(
        buildWhen: (previous, current) => current is SettingsChanged,
        builder: (context, state) => Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          spacing: Dimens.dimen32,
          children: [
            ClContainer(
              backgroundColor: Colors.transparent,
              border: Border.all(color: context.colorTokens.containerBorderColor),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Label('label.settings.theme'),
                  ClSwitch(
                    value: state is SettingsChanged && state.isDarkMode,
                    onChanged: context.read<SettingsCubit>().onToggleThemePressed,
                    iconDataSelected: Icons.dark_mode_rounded,
                    iconDataUnselected: Icons.dark_mode_outlined,
                    label: 'label.settings.isDarkMode',
                  ),
                ],
              ),
            ),
            ClContainer(
              backgroundColor: Colors.transparent,
              border: Border.all(color: context.colorTokens.containerBorderColor),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                spacing: Dimens.dimen16,
                children: [
                  const Label('label.settings.language'),
                  ClRadioListTile(
                    suffixWidget: const ClImagePathWidget(
                      path: AppIcons.flagPl,
                      width: Dimens.dimen56,
                    ),
                    title: 'label.settings.polish',
                    value: state is SettingsChanged && state.isEnglish,
                    groupValue: true,
                    onChanged: context.read<SettingsCubit>().onLanguageRadioChanged,
                  ),
                  ClRadioListTile(
                    suffixWidget: const ClImagePathWidget(path: AppIcons.flagEn, width: Dimens.dimen56),
                    title: 'label.settings.english',
                    value: state is SettingsChanged && state.isEnglish,
                    groupValue: false,
                    onChanged: context.read<SettingsCubit>().onLanguageRadioChanged,
                  ),
                ],
              ),
            ),
          ],
        ).addPaddingAll(Dimens.dimen8),
      );
}
