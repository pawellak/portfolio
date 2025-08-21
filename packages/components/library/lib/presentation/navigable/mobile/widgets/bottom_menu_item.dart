part of '../navigable_mobile_body.dart';

class _BottomMenuItem extends StatelessWidget {
  const _BottomMenuItem({
    required this.label,
    required this.icon,
    required this.itemIndex,
    required this.activeIndex,
    required this.onTap,
  });

  final String label;
  final IconData icon;
  final int itemIndex;
  final int activeIndex;
  final void Function(int) onTap;

  @override
  Widget build(BuildContext context) => ClContainer(
    onTap: () {
      onTap(itemIndex);
    },
    backgroundColor: _backgroundColor(context),
    padding: const EdgeInsets.all(Dimens.dimen6),
    margin: const EdgeInsets.all(Dimens.dimen6),
    child: Column(
      spacing: Dimens.dimen4,
      children: [
        ClIcon(size: Dimens.dimen20, path: icon, color: _iconColor(context)),
        Label(label, color: _iconColor(context)),
      ],
    ),
  );

  Color _backgroundColor(BuildContext context) =>
      _isActive ? context.colorTokens.bottomNavigationSecondaryColor : context.colorTokens.bottomNavigationPrimaryColor;

  Color _iconColor(BuildContext context) =>
      _isActive ? context.colorTokens.bottomNavigationPrimaryColor : context.colorTokens.bottomNavigationSecondaryColor;

  bool get _isActive => activeIndex == itemIndex;
}
