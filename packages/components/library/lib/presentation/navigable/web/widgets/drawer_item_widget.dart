part of 'drawer_widget.dart';

const _kButtonAlpha = 50;

class _DrawerItemWidget extends StatefulWidget {
  const _DrawerItemWidget({required this.navigationShell, required this.menuIndex, required this.item});

  final StatefulNavigationShell navigationShell;
  final int menuIndex;
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
      backgroundColor:
          isFocused
              ? context.colorTokens.topNavigationPrimaryBackgroundColor
              : context.colorTokens.topNavigationSecondaryBackgroundColor,
      onTap: () {
        _onItemTap(context);
      },
      width: Dimens.dimen120,
      padding: const EdgeInsets.all(Dimens.dimen8),
      margin: const EdgeInsets.all(Dimens.dimen4),
      border: Border.all(color: context.colorTokens.topNavigationPrimaryBackgroundColor.withAlpha(_kButtonAlpha)),
      child: Label(
        widget.item.label.tr().toUpperCase(),
        translate: false,
        textAlign: TextAlign.center,
        color:
            isFocused
                ? context.colorTokens.topNavigationSecondaryBackgroundColor
                : context.colorTokens.topNavigationPrimaryBackgroundColor,
      ),
    ),
  );

  void _onItemTap(BuildContext context) {
    widget.navigationShell.goBranch(
      widget.menuIndex,
      initialLocation: widget.menuIndex == widget.navigationShell.currentIndex,
    );
    Scaffold.of(context).closeDrawer();
  }
}
