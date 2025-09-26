import 'package:components_library/components_library_export.dart';
import 'package:components_library/presentation/no_internet/bloc/no_internet_cubit.dart';
import 'package:components_library/resources/dimens.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class NoInternetPage extends BasePage<NoInternetCubit> {
  const NoInternetPage({super.key});

  static const name = 'no-internet-page';
  static const path = '/$name';

  @override
  Widget buildPage(BuildContext context) => BlocListener<NoInternetCubit, NoInternetState>(
    listener: (context, state) {
      switch (state) {
        case ShowLoading():
          context.loaderManager(isLoading: state.isLoading);
        default:
          break;
      }
    },
    child: Column(
      children: [
        const Spacer(),
        const Center(child: ClIcon(path: FontAwesomeIcons.globe, size: Dimens.dimen64)),
        const Spacer(),
        Label(
          textAlign: TextAlign.center,
          'label.no_internet.title',
          style: context.textTheme.displayMedium,
          color: context.colorTokens.textPrimary,
          fontWeight: FontWeight.bold,
        ).addPaddingAll(Dimens.dimen16),
        Label(
          'label.no_internet.description',
          textAlign: TextAlign.center,
          style: context.textTheme.bodyMedium,
          color: context.colorTokens.textSecondary,
        ),
        const Spacer(),
        ClFilledButton(onPressed: context.read<NoInternetCubit>().isConnected, label: 'label.no_internet.refresh'),
      ],
    ).addPaddingAll(Dimens.dimen16),
  );
}
