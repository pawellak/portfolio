import 'package:components_core/components_pub_dev_export.dart';
import 'package:components_core/presentation/presentation_export.dart';
import 'package:components_library/presentation/no_internet/repositories/i_no_internet_repository.dart';

part 'no_internet_state.dart';

const _durationForLoadingInSec = 2;

@injectable
class NoInternetCubit extends BaseCubit<NoInternetState> {
  NoInternetCubit(this._noInternetRepository) : super(InitialNoInternet());

  final INoInternetRepository _noInternetRepository;

  Future<void> isConnected() async {
    emit(const ShowLoading(true));
    await Future<void>.delayed(const Duration(seconds: _durationForLoadingInSec));
    if (await _noInternetRepository.isAvailable()) {
    } else {
      await Future<void>.delayed(const Duration(seconds: _durationForLoadingInSec));
      emit(const ShowLoading(false));
    }
  }
}
