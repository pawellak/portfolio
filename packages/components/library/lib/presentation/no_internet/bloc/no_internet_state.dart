part of 'no_internet_cubit.dart';

abstract class NoInternetState extends BaseState {
  const NoInternetState();
}

class InitialNoInternet extends NoInternetState {
  const InitialNoInternet();
}

class ShowLoading extends NoInternetState {
  const ShowLoading(this.isLoading);

  final bool isLoading;
}
