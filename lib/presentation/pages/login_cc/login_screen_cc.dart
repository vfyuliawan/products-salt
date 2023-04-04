// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/repository/login_cc/login_repository_impl.dart';
import 'package:untitled/data/repository/login_repository_impl.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/domain/model/request/register_dd/register_request_dd.dart';
import 'package:untitled/presentation/navigation/Routes.dart';
import 'package:untitled/presentation/pages/login/login_bloc/login_bloc.dart';
import 'package:untitled/presentation/pages/login_cc/login_cc/login_cc_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

class LoginScreenCC extends StatefulWidget {
  const LoginScreenCC({super.key});

  @override
  State<LoginScreenCC> createState() => _LoginScreenCCState();
}

class _LoginScreenCCState extends State<LoginScreenCC> {
  final _userNameController = TextEditingController();
  bool isPassword = true;
  final _passController = TextEditingController();

  bool _stillWork = false;

  late LoginCcCubit _loginCubit;

  @override
  void initState() {
    super.initState();
    _loginCubit = LoginCcCubit(LoginRepositoryImplCC());
  }

  @override
  void dispose() {
    _loginCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: BlocListener<LoginCcCubit, LoginCcState>(
          listener: (context, loginState) {
            var angka = 2;

            if (angka % 2 == 0) {
              print("genap");
            } else {
              print("ganjil");
            }
            // ? = nilai true
            // : = nilai false
            ((angka % 2 == 0 ? print("genap") : print("ganjil")));

            if (loginState is LoginCcIsError) {
              // Commons().showSnackbarError(context, loginState.message!);
              ((loginState.message == ""
                  ? Commons()
                      .showSnackbarError(context, "Username dan Password Salah")
                  : Commons().showSnackbarError(context, loginState.message!)));
            } else if (loginState is LoginCcIsSuccess) {
              Commons().setUid("${loginState.data!.token}");
              print("token: ${loginState.data!.token}");
              Commons().showSnackbarInfo(context, "Login Berhasil");
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
                      'Username',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 217, 30, 167)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextFormField(
                      controller: _userNameController,
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
                        hintText: 'Masukan Username',
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
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      'Kata Sandi',
                      style: TextStyle(
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          color: Color.fromARGB(255, 217, 30, 167)),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    TextField(
                      controller: _passController,
                      obscureText: isPassword,
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
                        hintText: 'Masukan Kata Sandi',
                        suffixIcon: IconButton(
                            onPressed: () {
                              //visible handle
                              if (_stillWork) {
                                setState(() {
                                  _stillWork = false;
                                });
                              } else {
                                setState(() {
                                  _stillWork = true;
                                });
                              }
                              //visible handle

                              if (isPassword) {
                                setState(() {
                                  isPassword = false;
                                });
                              } else {
                                setState(() {
                                  isPassword = true;
                                });
                              }
                            },
                            icon: (isPassword == true
                                ? Icon(
                                    Icons.remove_red_eye,
                                    color: Color.fromARGB(255, 217, 30, 167),
                                  )
                                : Icon(
                                    Icons.visibility_off,
                                    color: Color.fromARGB(255, 217, 30, 167),
                                  ))),
                        filled: true,
                        fillColor: Color.fromARGB(255, 252, 233, 251),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),

                    "hide or show".text.make().onTap(() {
                      if (_stillWork) {
                        setState(() {
                          _stillWork = false;
                        });
                      } else {
                        setState(() {
                          _stillWork = true;
                        });
                      }
                    }),
                    //_stillwork
                    Visibility(
                      visible: (_stillWork ? true : false),
                      child: TextField(
                        controller: _passController,
                        obscureText: isPassword,
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
                          hintText: 'Masukan Kata Sandi',
                          suffixIcon: IconButton(
                              onPressed: () {
                                if (isPassword) {
                                  setState(() {
                                    _stillWork = false;
                                  });
                                } else {
                                  setState(() {
                                    _stillWork = true;
                                  });
                                }
                              },
                              icon: (isPassword == true
                                  ? Icon(
                                      Icons.remove_red_eye,
                                      color: Color.fromARGB(255, 217, 30, 167),
                                    )
                                  : Icon(
                                      Icons.visibility_off,
                                      color: Color.fromARGB(255, 217, 30, 167),
                                    ))),
                          filled: true,
                          fillColor: Color.fromARGB(255, 252, 233, 251),
                        ),
                      ),
                    ),
                    const SizedBox(height: 12),
                    Align(
                      alignment: Alignment.centerRight,
                      child: TextButton(
                        onPressed: () => context.goNamed('lupa-password'),
                        child: const Text(
                          'Lupa Kata Sandi',
                          style: TextStyle(
                            color: Color.fromARGB(255, 217, 30, 167),
                            fontSize: 12,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 68),
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      height: 52,
                      child: ElevatedButton(
                        onPressed: () {
                          BlocProvider.of<LoginCcCubit>(context).onSubmitLogin(
                              _userNameController.text, _passController.text);
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 217, 30, 167),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(6),
                            ),
                            side: const BorderSide(color: Colors.white),
                            elevation: 0.0),
                        child: BlocBuilder<LoginCcCubit, LoginCcState>(
                          builder: (context, stateLogin) {
                            if (stateLogin is LoginCcIsLoading) {
                              return Center(child: CircularProgressIndicator());
                            }
                            return const Text(
                              'Masuk',
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
