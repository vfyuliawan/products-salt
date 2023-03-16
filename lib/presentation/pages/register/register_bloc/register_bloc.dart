import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/domain/model/data/register/register_user_data.dart';
import 'package:untitled/domain/repository/register/register_repository.dart';

part 'register_event.dart';
part 'register_state.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  final RegisterRepository registerRepository;
  RegisterBloc(this.registerRepository) : super(RegisterInitial()) {
    on<UserRegisterEvent>((event, emit) async {
      emit(RegisterIsLoading());
      final response = await registerRepository.registerUser(
          event.email, event.userName, event.password);
      if (response is ResultSuccess) {
        emit(RegisterIsSuccess(data: (response as ResultSuccess).data));
      } else if (response is ResultError) {
        // emit(RegisterIsError((response as ResultError).message));
        emit(RegisterIsError(message: "Register Gagal"));
      }
    });
  }
}
