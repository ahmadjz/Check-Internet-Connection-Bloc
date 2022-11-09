part of 'internet_cubit.dart';

@immutable
abstract class InternetState {}

class InternetInitial extends InternetState {}

class ConnectedState extends InternetState {
  ConnectedState({required this.message});
  final String message;
}

class NotConnectedState extends InternetState {
  NotConnectedState({required this.message});
  final String message;
}
