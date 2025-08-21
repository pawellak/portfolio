part of 'appbar_expanded_menu_widget.dart';

const _kButtonAlpha = 50;

class _AppBarExpandedItemWidget extends StatefulWidget {
  const _AppBarExpandedItemWidget({required AppMenuData item, required void Function() onTap})
    : _onTap = onTap,
      _item = item;

  final AppMenuData _item;
  final VoidCallback _onTap;

  @override
  State<_AppBarExpandedItemWidget> createState() => _AppBarExpandedItemWidgetState();
}

class _AppBarExpandedItemWidgetState extends State<_AppBarExpandedItemWidget> {
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
      child: ClContainer(
        border: Border.all(color: context.colorTokens.topNavigationPrimaryBackgroundColor.withAlpha(_kButtonAlpha)),
        height: Dimens.dimen64,
        width: Dimens.dimen150,
        padding: const EdgeInsets.symmetric(horizontal: Dimens.dimen12),
        backgroundColor: isFocused ? context.colorTokens.topNavigationPrimaryBackgroundColor : Colors.transparent,
        child: Center(
          child: Label(
            widget._item.label.tr().toUpperCase(),
            style: context.textTheme.titleSmall,
            fontWeight: isFocused ? FontWeight.w600 : FontWeight.w500,
            color:
                isFocused
                    ? context.colorTokens.topNavigationSecondaryBackgroundColor
                    : context.colorTokens.topNavigationPrimaryBackgroundColor,
            translate: false,
          ),
        ),
      ),
    ),
  );
}
