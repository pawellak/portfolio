part of 'no_internet_cubit.dart';

abstract class NoInternetState extends BaseState {
  const NoInternetState();
}

class InitialNoInternet extends NoInternetState {}

class ShowLoading extends NoInternetState {
  const ShowLoading(this.isLoading);

  final bool isLoading;
}
