import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/resources_exports.dart' show AppColors, Dimens;
import 'package:feature_project_list/presentation/data/project_model.dart';
import 'package:feature_project_list/presentation/project_list_page/project_list_page.dart';
import 'package:feature_project_list/presentation/project_page/position_page.dart';
import 'package:flutter/material.dart';

const _selectedSpreadRadius = 4.0;
const _selectedBlurRadius = 5.0;
const _unselectedShadowRadius = 1.0;
const _selectedShadowOffset = 4.0;
const _unselectedShadowOffset = 2.0;
const _animationDurationInMs = 300;
const _widgetMaxLines = 2;

class ProjectListProjectWidget extends StatefulWidget {
  const ProjectListProjectWidget({super.key, required this.item});

  final ProjectModel item;

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
              color: (isSelect ? AppColors.cPrimary[200] : AppColors.cPrimary[100]) ?? AppColors.cBlack,
              spreadRadius: isSelect ? _selectedSpreadRadius : _unselectedShadowRadius,
              blurRadius: isSelect ? _selectedBlurRadius : _unselectedShadowRadius,
              offset:
                  isSelect
                      ? const Offset(_selectedShadowOffset, _selectedShadowOffset)
                      : const Offset(_unselectedShadowOffset, _unselectedShadowOffset),
            ),
          ],
          border: Border.all(color: AppColors.cPrimary),
          color: context.colorTokens.surfaceContainerPrimary,
          borderRadius: BorderRadius.circular(Dimens.dimen12),
        ),
        duration: const Duration(milliseconds: _animationDurationInMs),
        child: Column(
          children: [
            ClImagePathWidget(
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(Dimens.dimen12),
                topLeft: Radius.circular(Dimens.dimen12),
              ),
              path: widget.item.shortDescriptionUrl,
              fit: BoxFit.fitWidth,
            ),
            Container(color: AppColors.cPrimary, height: Dimens.dimen1),
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
          ],
        ),
      ),
    ),
  );
}
