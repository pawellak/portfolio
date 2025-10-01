part of 'drawer_widget.dart';

const _kButtonAlpha = 50;

class _DrawerItemWidget extends StatefulWidget {
  const _DrawerItemWidget({required this.navigationShell, required this.index, required this.item});

  final StatefulNavigationShell navigationShell;
  final int index;
  final AppMenuData item;

  @override
  State<_DrawerItemWidget> createState() => _DrawerItemState();
}

class _DrawerItemState extends State<_DrawerItemWidget> {
  bool isFocused = false;

  @override
  Widget build(BuildContext context) => MouseRegion(
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
    cursor: SystemMouseCursors.click,
    child: ClContainer(
      backgroundColor: _getBackgroundColor(context),
      onTap: () {
        _onItemTap(context);
      },
      width: Dimens.dimen150,
      padding: const EdgeInsets.all(Dimens.dimen8),
      margin: const EdgeInsets.all(Dimens.dimen4),
      border: Border.all(color: context.colorTokens.topNavigationPrimaryBackgroundColor.withAlpha(_kButtonAlpha)),
      child: Row(
        children: [
          ClIcon(
            path: isFocused ? widget.item.selectedIcon : widget.item.unselectedIcon,
            color: _getIconColor(context),
          ),
          Expanded(
            child: Label(
              widget.item.label.tr().toUpperCase(),
              translate: false,
              textAlign: TextAlign.center,
              color: _getIconColor(context),
            ),
          ),
        ],
      ),
    ),
  );

  Color _getBackgroundColor(BuildContext context) =>
      isFocused
          ? context.colorTokens.topNavigationPrimaryBackgroundColor
          : context.colorTokens.topNavigationSecondaryBackgroundColor;

  Color _getIconColor(BuildContext context) =>
      isFocused
          ? context.colorTokens.topNavigationSecondaryBackgroundColor
          : context.colorTokens.topNavigationPrimaryBackgroundColor;

  void _onItemTap(BuildContext context) {
    NavigableController.onTap(context: context, navigationShell: widget.navigationShell, index: widget.index);
    Scaffold.of(context).closeDrawer();
  }
}
