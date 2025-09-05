import 'package:components_library/components_library_export.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:feature_project_list/presentation/project_list_page/bloc/project_list_cubit.dart';
import 'package:feature_project_list/presentation/project_list_page/project_list_compact_widget.dart';
import 'package:feature_project_list/presentation/project_list_page/project_list_expanded_widget.dart';
import 'package:flutter/material.dart';

const _kPageName = 'project-list-page';

class ProjectListPage extends BasePage<ProjectListCubit> {
  const ProjectListPage({super.key});

  static const String name = _kPageName;
  static const String path = '/$_kPageName';

  @override
  Widget buildPage(BuildContext context) => BlocBuilder<ProjectListCubit, ProjectListState>(
    buildWhen: (previous, current) => current is ProjectListUpdateView,
    builder: (context, state) {
      if (state is ProjectListUpdateView) {
        return ClAdapter(
          expanded: ProjectListExpandedWidget(items: state.items),
          compact: ProjectListCompactWidget(items: state.items),
        ).addPadding(bottom: Dimens.dimen32);
      } else {
        return const ClLoadingIndicator();
      }
    },
  );
}
