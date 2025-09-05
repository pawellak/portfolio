import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/resources_exports.dart' show Dimens;
import 'package:feature_project_list/presentation/data/project_model.dart';
import 'package:feature_project_list/presentation/project_list_page/project_list_page.dart';
import 'package:feature_project_list/presentation/project_page/project_page.dart';
import 'package:flutter/material.dart'
    show AnimatedContainer, Border, BorderRadius, BoxConstraints, BoxDecoration, BoxFit, BoxShadow, BuildContext, Column, Container, CrossAxisAlignment, EdgeInsets, FontWeight, GestureDetector, Icons, MouseRegion, Offset, Radius, SizedBox, Spacer, State, StatefulWidget, SystemMouseCursors, Widget;

const _selectedSpreadRadius = 2.0;
const _selectedBlurRadius = 1.0;
const _unselectedShadowRadius = 1.0;
const _selectedShadowOffset = 2.5;
const _unselectedShadowOffset = 2.0;
const _animationDurationInMs = 300;
const _widgetMaxLines = 2;
const _kImageRadius = 11.0;

class ProjectListProjectWidget extends StatefulWidget {
  const ProjectListProjectWidget({super.key, required this.item, this.isSpacer = false});

  final ProjectModel item;
  final bool isSpacer;

  @override
  State<ProjectListProjectWidget> createState() => _CategoryWidgetState();
}

class _CategoryWidgetState extends State<ProjectListProjectWidget> {
  bool isSelect = false;

  @override
  Widget build(BuildContext context) => MouseRegion(
    cursor: SystemMouseCursors.click,
    onEnter: (_) {
      setState(() {
        isSelect = true;
      });
    },
    onExit: (_) {
      setState(() {
        isSelect = false;
      });
    },
    child: GestureDetector(
      onTap: () {
        context.go('${ProjectListPage.path}${ProjectPage.path}/${widget.item.id}');
      },
      child: AnimatedContainer(
        margin: const EdgeInsets.all(Dimens.dimen12),
        padding: EdgeInsets.zero,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: context.colorTokens.iconPrimaryColor,
              spreadRadius: isSelect ? _selectedSpreadRadius : _unselectedShadowRadius,
              blurRadius: isSelect ? _selectedBlurRadius : _unselectedShadowRadius,
              offset:
                  isSelect
                      ? const Offset(_selectedShadowOffset, _selectedShadowOffset)
                      : const Offset(_unselectedShadowOffset, _unselectedShadowOffset),
            ),
          ],
          border: Border.all(color: context.colorTokens.iconPrimaryColor),
          color: context.colorTokens.projectListBackgroundColor,
          borderRadius: BorderRadius.circular(Dimens.dimen12),
        ),
        duration: const Duration(milliseconds: _animationDurationInMs),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ClImagePathWidget(
              constraints: const BoxConstraints(maxHeight: Dimens.dimen180),
              width: double.infinity,
              padding: EdgeInsets.zero,
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(_kImageRadius),
                topRight: Radius.circular(_kImageRadius),
              ),
              path: widget.item.shortDescriptionUrl,
              fit: BoxFit.cover,
            ),
            Container(color: context.colorTokens.iconPrimaryColor, height: Dimens.dimen1),
            const SizedBox(height: Dimens.dimen12),
            ClKeyValueLabel(
              keyLabel: 'label.projects.category.title',
              keyStyle: context.textTheme.bodyLarge?.copyWith(color: context.colorTokens.textSecondary),
              maxLines: _widgetMaxLines,
              maxValueLines: _widgetMaxLines,
              flexSide: FlexSide.left,
              valueLabel: widget.item.title,
              valueTranslate: false,
              valueStyle: context.textTheme.bodyLarge?.copyWith(
                color: context.colorTokens.textPrimary,
                fontWeight: FontWeight.bold,
              ),
            ).addSymmetricPadding(horizontal: Dimens.dimen8),
            ClKeyValueLabel(
              keyLabel: 'label.projects.category.period',
              keyStyle: context.textTheme.bodySmall?.copyWith(color: context.colorTokens.textSecondary),
              maxLines: _widgetMaxLines,
              maxValueLines: _widgetMaxLines,
              flexSide: FlexSide.left,
              valueLabel: DateFormatter.formatDateRange(
                dateTimeStart: widget.item.dateStart,
                dateTimeEnd: widget.item.dateEnd,
                format: dateFormatDDMMYYYY,
              ),
              valueTranslate: false,
              valueStyle: context.textTheme.bodySmall?.copyWith(
                color: context.colorTokens.textSecondary,
                fontWeight: FontWeight.bold,
              ),
            ).addSymmetricPadding(horizontal: Dimens.dimen8),
            ClHtmlLabel(
              data: widget.item.shortDescription,
            ).addSymmetricPadding(horizontal: Dimens.dimen12, vertical: Dimens.dimen8),
            if (widget.isSpacer) const Spacer(),
            const ClIconButton(
              margin: EdgeInsets.zero,
              size: Dimens.dimen30,
              path: Icons.next_plan_outlined,
              isShadow: true,
            ).addPadding(bottom: Dimens.dimen16, right: Dimens.dimen16),
          ],
        ),
      ),
    ),
  );
}
