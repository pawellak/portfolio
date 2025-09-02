import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:feature_project_list/presentation/project_page/bloc/project_cubit.dart';
import 'package:feature_project_list/presentation/project_page/widgets/project_compact_widget.dart';
import 'package:feature_project_list/presentation/project_page/widgets/project_expanded_widget.dart';
import 'package:flutter/material.dart';

const _kPageName = 'project-page';

class ProjectPage extends BasePage<ProjectCubit> {
  const ProjectPage({super.key, super.initialParams, super.isBackArrow = true});

  static const String name = _kPageName;
  static const String path = '/$_kPageName';

  @override
  VoidCallback onBackPressed(BuildContext context) => () {
    context.pop();
  };

  @override
  Widget buildPage(BuildContext context) => BlocBuilder<ProjectCubit, ProjectState>(
    buildWhen: (previous, current) => current is ProjectUpdateView,
    builder: (context, state) {
      if (state is ProjectUpdateView) {
        return SingleChildScrollView(
          child: ClAdapter(
            expanded: ProjectExpandedWidget(project: state.project),
            compact: ProjectCompactWidget(project: state.project),
          ).addPaddingAll(Dimens.dimen12),
        );
      } else {
        return const ClShimmer(height: Dimens.dimen120);
      }
    },
  );
}
