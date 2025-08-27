import 'package:components_library/components_library_export.dart' show BlocBuilder, ClShimmer, Label, ThemeExtensions;
import 'package:components_library/resources/resources_exports.dart' show Dimens;
import 'package:feature_project_list/presentation/project_list_page/bloc/project_list_cubit.dart';
import 'package:feature_project_list/presentation/project_list_page/widgets/project_list_section_grid.dart';
import 'package:flutter/material.dart';

class ProjectListExpandedWidget extends StatelessWidget {
  const ProjectListExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) => BlocBuilder<ProjectListCubit, ProjectListState>(
    buildWhen: (previous, current) => current is ProjectListUpdateView,
    builder: (context, state) {
      if (state is ProjectListUpdateView) {
        return Column(
          spacing: Dimens.dimen16,
          children: [
            const SizedBox(height: Dimens.dimen4),
            Label(
              'label.projects.page.title',
              style: context.textTheme.titleMedium,
              color: context.colorTokens.textPrimary,
              textAlign: TextAlign.center,
            ),
            ProjectListSectionGrid(items: state.items),
          ],
        );
      } else {
        return const ClShimmer(height: Dimens.dimen120);
      }
    },
  );
}
