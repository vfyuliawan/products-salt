part of 'riwayat_bs_cubit.dart';

abstract class RiwayatBsState extends Equatable {
  const RiwayatBsState();

  @override
  List<Object> get props => [];
}

class RiwayatBsInitial extends RiwayatBsState {}

class RiwayatBsIsSuccess extends RiwayatBsState {
  final List<RiwayatDataBS> data;

  RiwayatBsIsSuccess(this.data);
}

class RiwayatBsIsFailed extends RiwayatBsState {
  final String message;

  RiwayatBsIsFailed(this.message);
}

class RiwayatBsIsLoading extends RiwayatBsState {}
