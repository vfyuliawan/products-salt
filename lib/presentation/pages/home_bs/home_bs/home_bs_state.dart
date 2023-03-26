// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'home_bs_cubit.dart';

abstract class HomeBsState extends Equatable {
  const HomeBsState();

  @override
  List<Object> get props => [];
}

class HomeBsInitial extends HomeBsState {}

class HomeBsIsScuccess extends HomeBsState {
  HomeDataBS? data;

  HomeBsIsScuccess(this.data);
}

class HomeBsIsLoading extends HomeBsState {}

class HomeBsIsFailed extends HomeBsState {
  String? message;
  HomeBsIsFailed({
    this.message,
  });
}
