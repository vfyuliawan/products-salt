import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/domain/model/request/register_dd/register_request_dd.dart';
import 'package:untitled/presentation/navigation/Routes.dart';
import 'package:velocity_x/velocity_x.dart';

class RegisterPage1 extends StatefulWidget {
  const RegisterPage1({super.key});

  @override
  State<RegisterPage1> createState() => _RegisterPage1State();
}

class _RegisterPage1State extends State<RegisterPage1> {
  TextEditingController _namController = TextEditingController();
  TextEditingController _placeOfBirth = TextEditingController();
  TextEditingController _dateOfBirth = TextEditingController();
  TextEditingController _gender = TextEditingController();
  TextEditingController _jobId = TextEditingController();
  TextEditingController _unitId = TextEditingController();
  TextEditingController _phone = TextEditingController();
  TextEditingController _email = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Register Page 1".text.make(),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              child: "Informasi Pribadi".text.make(),
            ),
            10.heightBox,
            TextFormField(
              controller: _namController,
              decoration: InputDecoration(hintText: "Nama Lengkap"),
            ),
            8.heightBox,
            TextFormField(
              controller: _placeOfBirth,
              decoration: InputDecoration(hintText: "Tempat Lahir"),
            ),
            8.heightBox,
            TextFormField(
              controller: _dateOfBirth,
              decoration: InputDecoration(hintText: "Tanggal Lahir"),
            ),
            8.heightBox,
            TextFormField(
              controller: _gender,
              decoration: InputDecoration(hintText: "Gender"),
            ),
            8.heightBox,
            TextFormField(
              controller: _jobId,
              decoration: InputDecoration(hintText: "Pekerjaan"),
            ),
            8.heightBox,
            TextFormField(
              controller: _unitId,
              decoration: InputDecoration(hintText: "informasi PMI"),
            ),
            8.heightBox,
            TextFormField(
              controller: _phone,
              decoration: InputDecoration(hintText: "Telphone"),
            ),
            8.heightBox,
            TextFormField(
              controller: _email,
              decoration: InputDecoration(hintText: "Email"),
            ),
            8.heightBox,
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            RegisterRequestDD page1 = RegisterRequestDD(
              name: _namController.text,
              placeOfBirth: _placeOfBirth.text,
              dateOfBirth: _dateOfBirth.text,
              gender: _gender.text,
              jobId: int.parse(_jobId.text),
              unitId: int.parse(_unitId.text),
              phone: _phone.text,
              email: _email.text,
            );
            context.goNamed(Routes.registerPageDD2, extra: page1);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.red,
            child: "Lanjut".text.makeCentered(),
          )),
    );
  }
}
