import 'package:fluentui_system_icons/fluentui_system_icons.dart';
import 'package:flutter/material.dart';

enum AppMenuData {
  contact('label.menu_item.about_me', FluentIcons.person_28_regular, FluentIcons.person_28_filled),
  projectList('label.menu_item.projects', FluentIcons.code_text_16_regular, FluentIcons.code_text_16_filled),
  cv('label.menu_item.cv', FluentIcons.document_briefcase_16_regular, FluentIcons.document_briefcase_16_filled),
  settings('label.menu_item.settings', FluentIcons.settings_16_regular, FluentIcons.settings_16_filled);

  const AppMenuData(this.label, this.unselectedIcon, this.selectedIcon);

  final String label;
  final IconData unselectedIcon;
  final IconData selectedIcon;
}
