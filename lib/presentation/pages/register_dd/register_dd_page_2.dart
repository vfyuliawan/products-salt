// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/presentation/navigation/Routes.dart';
import 'package:velocity_x/velocity_x.dart';

import 'package:untitled/domain/model/request/register_dd/register_request_dd.dart';

class RegisterPage2 extends StatelessWidget {
  RegisterRequestDD? page1;
  RegisterPage2({
    Key? key,
    this.page1,
  }) : super(key: key);

  TextEditingController _address = TextEditingController();

  TextEditingController _subDistrictId = TextEditingController();

  TextEditingController _villageId = TextEditingController();

  TextEditingController _postalCode = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: "Register Page 2".text.make(),
      ),
      body: Column(
        children: [
          Container(
            child: "Informasi Pribadi".text.make(),
          ),
          10.heightBox,
          TextFormField(
            controller: _address,
            decoration: InputDecoration(hintText: "Address"),
          ),
          8.heightBox,
          TextFormField(
            controller: _subDistrictId,
            decoration: InputDecoration(hintText: "SubDistrict"),
          ),
          8.heightBox,
          TextFormField(
            controller: _villageId,
            decoration: InputDecoration(hintText: "Vilage"),
          ),
          8.heightBox,
          TextFormField(
            controller: _postalCode,
            decoration: InputDecoration(hintText: "post code"),
          ),
          20.heightBox,
          "informasi dari page 1".text.make(),
          15.heightBox,
          "nama : ${page1?.name}".text.make(),
          "tanggal lahir : ${page1?.dateOfBirth}".text.make(),
          "tempat lahir : ${page1?.placeOfBirth}".text.make(),
          "gender : ${page1?.gender}".text.make(),
          "job id : ${page1?.jobId}".text.make(),
          "unit id : ${page1?.unitId}".text.make(),
          "no tlp : ${page1?.phone}".text.make(),
          "email : ${page1?.email}".text.make()
        ],
      ),
      bottomNavigationBar: ElevatedButton(
          onPressed: () {
            RegisterRequestDD page2 = RegisterRequestDD(
              //dari constructor
              name: page1?.name,
              dateOfBirth: page1?.dateOfBirth,
              placeOfBirth: page1?.placeOfBirth,
              gender: page1?.gender,
              jobId: page1?.jobId,
              email: page1?.email,
              unitId: page1?.unitId,
              phone: page1?.phone,
              //dari controller
              address: _address.text,
              subDistrictId: int.parse(_subDistrictId.text),
              villageId: int.parse(_villageId.text),
              postalCode: _postalCode.text,
            );

            context.goNamed(Routes.registerPageDD3, extra: page2);
          },
          child: Container(
            height: MediaQuery.of(context).size.height * 0.1,
            color: Colors.red,
            child: "Lanjut".text.makeCentered(),
          )),
    );
  }
}
