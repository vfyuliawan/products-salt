import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/presentation/navigation/Routes.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final _emailController = TextEditingController();
  final _userNameController = TextEditingController();
  final _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: Container(
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
                'Silahkan Register untuk masuk ke akun anda',
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
                    keyboardType: TextInputType.emailAddress,
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
              const SizedBox(
                height: 16,
              ),
              const Text(
                'Password',
                style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.w500,
                    color: Color.fromARGB(255, 217, 30, 167)),
              ),
              const SizedBox(
                height: 8,
              ),
              TextFormField(
                controller: _passwordController,
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
                  hintText: 'Masukan Password',
                  suffixIcon: const Icon(
                    Icons.phone_iphone_rounded,
                    color: Color.fromARGB(255, 217, 30, 167),
                  ),
                  filled: true,
                  fillColor: const Color.fromARGB(255, 252, 233, 251),
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width,
                height: 52,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 217, 30, 167),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(6),
                      ),
                      side: const BorderSide(color: Colors.white),
                      elevation: 0.0),
                  child: Text(
                    'Register',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Text(
                    'Sudah Punya Akun? Silakan',
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  TextButton(
                    onPressed: () {
                      context.goNamed(Routes.loginPage);
                    },
                    child: const Text(
                      'Login',
                      style: TextStyle(
                        color: Color.fromARGB(255, 217, 30, 167),
                      ),
                    ),
                  )
                ],
              ),
            ],
          )),
    );
  }
}
