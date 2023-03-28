import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/repository/forgot_password_dd/forgot_password_impl_dd.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/presentation/navigation/Routes.dart';
import 'package:untitled/presentation/pages/forgot_pass_dd/forgot_pass_cubit/forgot_pass_dd_cubit.dart';

class ForgotpassScreenDD extends StatefulWidget {
  const ForgotpassScreenDD({super.key});

  @override
  State<ForgotpassScreenDD> createState() => _ForgotpassScreenDDState();
}

class _ForgotpassScreenDDState extends State<ForgotpassScreenDD> {
  final _emailController = TextEditingController();

  late ForgotPassDdCubit _forgotPassCubit;

  @override
  void initState() {
    super.initState();
    _forgotPassCubit = ForgotPassDdCubit(ForgotPasswordImplDD());
  }

  @override
  void dispose() {
    _forgotPassCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: BlocListener<ForgotPassDdCubit, ForgotPassDdState>(
        listener: (context, forPasState) {
          if (forPasState is ForgotPassDdIsFailed) {
            Commons().showSnackbarError(context, forPasState.msessage);
          } else if (forPasState is ForgotPassDdIsSuccess) {
            Commons().showSnackbarInfo(
                context, "email berhasil terkirim ke ${_emailController.text}");
          }
        },
        child: Container(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Image.asset(
                  'assets/images/salt_academy_logo.png',
                  height: 240,
                  width: 240,
                ),
              ),
              // Center(
              //   child: Image.asset(
              //     'assets/images/image_text_login.png',
              //     height: 36,
              //     width: 179,
              //   ),
              // ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Selamat Datang',
                style: TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.w700,
                  letterSpacing: 0.02,
                ),
              ),
              const SizedBox(
                height: 4,
              ),
              const Text(
                'Silahkan login untuk masuk ke akun anda',
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w500,
                  letterSpacing: 0.02,
                ),
              ),
              const SizedBox(
                height: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Email',
                    style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                        color: Color.fromARGB(255, 217, 30, 167)),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  TextFormField(
                    controller: _emailController,
                    keyboardType: TextInputType.text,
                    decoration: InputDecoration(
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color(0xffFCE9EA),
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8),
                        borderSide: const BorderSide(
                          color: Color.fromARGB(255, 217, 30, 167),
                        ),
                      ),
                      hintText: 'Masukan Email',
                      suffixIcon: const Icon(
                        Icons.phone_iphone_rounded,
                        color: Color.fromARGB(255, 217, 30, 167),
                      ),
                      filled: true,
                      fillColor: const Color.fromARGB(255, 252, 233, 251),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
              const SizedBox(height: 68),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {
                    BlocProvider.of<ForgotPassDdCubit>(context)
                        .submitForgotPass(_emailController.text);
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 217, 30, 167),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      side: const BorderSide(color: Colors.white),
                      elevation: 0.0),
                  child: BlocBuilder<ForgotPassDdCubit, ForgotPassDdState>(
                    builder: (context, forPasState) {
                      if (forPasState is ForgotPassDdIsloading) {
                        return Center(child: CircularProgressIndicator());
                      }
                      return const Text(
                        'kirim verifikasi Email',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      );
                    },
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Belum Punya Akun?',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.goNamed(Routes.registerPage);
                    },
                    child: const Text(
                      'Register',
                      style: TextStyle(
                        color: Color.fromARGB(255, 217, 30, 167),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
