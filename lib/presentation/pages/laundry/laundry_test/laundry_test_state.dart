// ignore_for_file: public_member_api_docs, sort_constructors_first
part of 'laundry_test_cubit.dart';

abstract class LaundryTestState extends Equatable {
  const LaundryTestState();

  @override
  List<Object> get props => [];
}

class LaundryTestInitial extends LaundryTestState {}

class LaundryTestIsLoading extends LaundryTestState {}

class LaundryTestIsSuccess extends LaundryTestState {
  CollectionData? data;
  LaundryTestIsSuccess(
    this.data,
  );
}

class LaundryTestIsError extends LaundryTestState {
  String? message;
  LaundryTestIsError({
    this.message,
  });
}
