// ignore_for_file: public_member_api_docs, sort_constructors_first
// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class Item {
  String? nama;
  int? point;
  int? count;
  Item({this.nama, this.point, this.count = 0});
}

class Order {
  int? id;
  List<Item>? item;
  Order({
    this.id,
    this.item,
  });
}

var item1 = Item(nama: "botol", point: 100, count: 0);
var item2 = Item(nama: "kaca", point: 200, count: 0);
var item3 = Item(nama: "plastik", point: 300, count: 0);
var item4 = Item(nama: "daun", point: 400, count: 0);

List<Item> items = [item1, item2, item3, item4];

var order = Order(id: 1, item: items);

class CartCount extends StatefulWidget {
  const CartCount({super.key});

  @override
  State<CartCount> createState() => _CartCountState();
}

class _CartCountState extends State<CartCount> {
  Map<String, dynamic> data = HashMap();

  void add(String name, point) {
    setState(() {
      if (data.containsKey(name)) {
        data[name] = point;
      } else {
        data[name] = point;
      }
    });
    // print(data[name]);
    print(name);
    print(point);
    print(data);
  }

  void Increase() {
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    // print(data);
    List<String> name = ['botol', 'kaca', 'pelastik', 'daun'];
    List<int> point = [100, 200, 300, 400];
    List<IconData> icon = [
      Icons.bolt,
      Icons.abc_outlined,
      Icons.access_alarm_outlined,
      Icons.access_alarm
    ];
    return Scaffold(
      body: Container(
        child: ListView.builder(
          itemCount: icon.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.only(top: 20),
              color: Colors.amber.shade300,
              child: Row(
                  // mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Icon(
                            icon[index],
                          ),
                          Text(
                            name[index],
                          ),
                        ],
                      ),
                    ).expand(flex: 2),
                    Container(
                      color: Colors.red,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            IconButton(
                              color: Colors.blue,
                              onPressed: () {
                                add(name[index], point[index]);
                              },
                              icon: Icon(Icons.add),
                            ),
                            Text("0"),
                            IconButton(
                              onPressed: null,
                              icon: Icon(
                                Icons.remove,
                              ),
                            )
                          ]),
                    ).expand(flex: 1)
                  ]),
            );
          },
        ),
      ),
    );
  }
}
