// ignore_for_file: public_member_api_docs, sort_constructors_first
// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:untitled/base/result_entity.dart';
import 'package:untitled/data/repository/article_repository_impl.dart';
import 'package:untitled/domain/model/article/article_data.dart';
import 'package:untitled/domain/repository/login/login_repository.dart';

import 'package:untitled/main.dart';

// class Hewan {
//   //properti atau parameter params
//   String? jenis;
//   String? nama;
//   double? berat;
//   double? energy;

//   //constructor atau tempati inisialisasi properti
//   //named Argument default order
//   // Hewan(this.nama, this.berat, this.energy, this.jenis);

//   //positional argument
//   Hewan({this.nama, this.berat, this.energy, this.jenis});

//   //methode atau behaveior
//   void makan(double banyak) {
//     berat = berat! + banyak;
//   }

//   void tidur(double lama) {
//     energy = energy! + lama;
//   }

//   void berburu(double jam) {
//     energy = energy! - jam;
//   }
// }

abstract class Hewan {
  //properti atau params
  String? nama;
  int? berat;
  int? umur;

  Hewan({
    this.nama,
    this.berat,
    this.umur,
  });

  void makan(int banyak) {
    berat = berat! + banyak;
  }

  void pup(int banyak) {
    berat = berat! - banyak;
  }

  void tidur() {}
}

class Kucing extends Hewan {
  int? jumlahKaki;

  Kucing({
    this.jumlahKaki,
    String? namanya,
    int? beratnya,
    int? umurnya,
  }) : super(nama: namanya, berat: beratnya, umur: umurnya);

  void berjalan() {}
}

class Burung extends Hewan {
  int? warnaBulu;
}

void main() {
  //abstarc class atau implements
  // var hewan = Hewan(nama: "fsadafd", berat: 12, umur: 12);

  // cascade notation
  // var kucing1 = Kucing(jumlahKaki: 4)..nama=""..berat =12..umur=5;

  // var test = LoginRepository().fetchUserLogin();
  // print(test.fetchArticles("us"));

  var kucing1 =
      Kucing(namanya: "garfil", beratnya: 12, jumlahKaki: 4, umurnya: 12);
  print("----before-----");
  print(
      "nama = ${kucing1.nama}, berat : ${kucing1.berat}, energy = ${kucing1.umur}, jumlah kaki : ${kucing1.jumlahKaki}");
  kucing1.makan(12);
  print("----after makan-----");
  print(
      "nama = ${kucing1.nama}, berat : ${kucing1.berat}, energy = ${kucing1.umur}, jumlah kaki : ${kucing1.jumlahKaki}");

  // var ular1 = Hewan("reptil", 12, 100, "ular");
  // print(ular1.nama);

  // var ular1 = Hewan(nama: "Ular", berat: 12, energy: 100, jenis: "reptil");
  // // var buaya = Hewan(berat: 50, energy: 100, jenis: "reptil", nama: "buaya");
  // print("----before----");
  // print(
  //     "nama = ${ular1.nama}, berat : ${ular1.berat}, energy = ${ular1.energy}, jenis : ${ular1.jenis}");
  // print("----makan----");
  // ular1.makan(12);
  // print(
  //     "nama = ${ular1.nama}, berat : ${ular1.berat}, energy = ${ular1.energy}, jenis : ${ular1.jenis}");
  // print("----berburu----");
  // ular1.berburu(50);
  // print(
  //     "nama = ${ular1.nama}, berat : ${ular1.berat}, energy = ${ular1.energy}, jenis : ${ular1.jenis}");
}



// testWidgets('Counter increments smoke test', (WidgetTester tester) async {
  //   // Build our app and trigger a frame.
  //   await tester.pumpWidget(const MyApp());

  //   // Verify that our counter starts at 0.
  //   expect(find.text('0'), findsOneWidget);
  //   expect(find.text('1'), findsNothing);

  //   // Tap the '+' icon and trigger a frame.
  //   await tester.tap(find.byIcon(Icons.add));
  //   await tester.pump();

  //   // Verify that our counter has incremented.
  //   expect(find.text('0'), findsNothing);
  //   expect(find.text('1'), findsOneWidget);
  // });