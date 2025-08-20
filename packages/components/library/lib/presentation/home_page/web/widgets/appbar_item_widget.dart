import 'package:components_core/components_pub_dev_export.dart';
import 'package:components_core/navigation/app_menu_data.dart' show AppMenuData;
import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/utils/extensions/extensions_export.dart';
import 'package:components_library/widgets/label/label.dart' show Label;
import 'package:flutter/material.dart';

class AppBarItemWidget extends StatefulWidget {
  const AppBarItemWidget({super.key, required AppMenuData item, required void Function() onTap})
    : _onTap = onTap,
      _item = item;

  final AppMenuData _item;
  final VoidCallback _onTap;

  @override
  State<AppBarItemWidget> createState() => _AppBarItemWidgetState();
}

class _AppBarItemWidgetState extends State<AppBarItemWidget> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) => MouseRegion(
    cursor: SystemMouseCursors.click,
    onEnter: (event) {
      setState(() {
        isFocused = true;
      });
    },
    onExit: (event) {
      setState(() {
        isFocused = false;
      });
    },
    child: GestureDetector(
      onTap: widget._onTap,
      child: Container(
        height: Dimens.dimen72,
        padding: const EdgeInsets.symmetric(horizontal: Dimens.dimen12),
        color: isFocused ? Colors.white : Colors.transparent,
        child: Center(
          child: Label(
            widget._item.label.tr().toUpperCase(),
            style: context.textTheme.titleSmall,
            fontWeight: isFocused ? FontWeight.bold : FontWeight.normal,
            color: isFocused ? Colors.orange : Colors.white,
            translate: false,
          ),
        ),
      ),
    ),
  );
}
