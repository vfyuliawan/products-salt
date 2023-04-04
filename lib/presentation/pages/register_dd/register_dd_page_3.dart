// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/presentation/pages/register/register_bloc/register_bloc.dart';
import 'package:untitled/presentation/pages/register_dd/register_dd_cubit/register_dd_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:untitled/domain/model/request/register_dd/register_request_dd.dart';

class RegisterPage3 extends StatelessWidget {
  RegisterRequestDD? page2;
  RegisterPage3({
    Key? key,
    this.page2,
  }) : super(key: key);

  TextEditingController _password = TextEditingController();

  TextEditingController _confPass = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Register Page 1".text.make(),
      ),
      body: BlocListener<RegisterDdCubit, RegisterDdState>(
        listener: (context, state) {
          if (state is RegisterDdIsSuccess) {
            Commons().showSnackbarInfo(context, state.message);
          } else if (state is RegisterDdIsFailed) {
            Commons().showSnackbarError(context, state.message);
          }
        },
        child: Column(
          children: [
            Container(
              child: "Informasi Pribadi".text.make(),
            ),
            10.heightBox,
            TextFormField(
              controller: _password,
              decoration: InputDecoration(hintText: "Password"),
            ),
            8.heightBox,
            TextFormField(
              controller: _confPass,
              decoration: InputDecoration(hintText: "Conf Pass"),
            ),
            8.heightBox,
          ],
        ),
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            RegisterRequestDD submitRequest = RegisterRequestDD(
              name: page2?.name,
              address: page2?.address,
              dateOfBirth: page2?.dateOfBirth,
              email: page2?.email,
              gender: page2?.gender,
              jobId: page2?.jobId,
              phone: page2?.phone,
              placeOfBirth: page2?.placeOfBirth,
              postalCode: page2?.postalCode,
              subDistrictId: page2?.subDistrictId,
              unitId: page2?.unitId,
              villageId: page2?.villageId,
              //-------------------------
              password: _password.text,
              passwordConfirmation: _confPass.text,
            );
            BlocProvider.of<RegisterDdCubit>(context)
                .submitRegister(submitRequest);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.red,
            child: "Submit".text.makeCentered(),
          )),
    );
  }
}
