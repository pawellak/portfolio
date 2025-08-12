import 'package:components_core/presentation/base_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

abstract class BaseCubit<T extends BaseState> extends Cubit<T> {
  BaseCubit(super.initialState);

  Future<void> initialMethod() async {}

  Future<void> initialParams(dynamic args) async {}

  Future<void> dispose() async {}

  @override
  Future<void> close() async {
    await dispose();
    await super.close();
  }
}
