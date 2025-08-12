import 'package:components_library/resources/dimens.dart' show Dimens;
import 'package:components_library/utils/enums/axis_type.dart' show AxisType;
import 'package:flutter/material.dart';

enum FlexSide { all, left, right }

class ClKeyValueWidget extends StatelessWidget {
  const ClKeyValueWidget({
    super.key,
    required this.keyWidget,
    required this.valueWidget,
    this.axisType,
    this.crossAxisAlignment,
    this.flexSide = FlexSide.all,
  });

  final Widget keyWidget;
  final Widget valueWidget;
  final AxisType? axisType;
  final FlexSide flexSide;
  final CrossAxisAlignment? crossAxisAlignment;

  @override
  Widget build(BuildContext context) => switch (axisType ?? AxisType.horizontal) {
    AxisType.vertical => _buildVertical(),
    AxisType.horizontal => _buildHorizontal(),
  };

  Widget _buildHorizontal() => Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start,
    children: switch (flexSide) {
      FlexSide.all => _buildHorizontalFlexibleAll(),
      FlexSide.left => _buildHorizontalFlexibleLeft(),
      FlexSide.right => _buildHorizontalFlexibleRight(),
    },
  );

  List<Widget> _buildHorizontalFlexibleAll() => [
    Expanded(child: keyWidget),
    const SizedBox(width: Dimens.dimen16),
    Expanded(child: Align(alignment: Alignment.centerRight, child: valueWidget)),
  ];

  List<Widget> _buildHorizontalFlexibleLeft() => [
    Flexible(child: keyWidget),
    const SizedBox(width: Dimens.dimen16),
    valueWidget,
  ];

  List<Widget> _buildHorizontalFlexibleRight() => [
    keyWidget,
    const SizedBox(width: Dimens.dimen16),
    Flexible(child: valueWidget),
  ];

  Widget _buildVertical() =>
      Column(crossAxisAlignment: crossAxisAlignment ?? CrossAxisAlignment.start, children: [keyWidget, valueWidget]);
}
