// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/presentation/pages/product/product_bloc/product_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductPage extends StatelessWidget {
  const ProductPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Product List"),
      ),
      body: Center(
        child: BlocConsumer<ProductBloc, ProductState>(
          listener: (context, stateProduct) {
            if (stateProduct is ProductIsError) {
              Commons().showSnackbarError(context, stateProduct.message!);
            }
          },
          builder: (context, stateProduct) {
            if (stateProduct is ProductIsLoading) {
              return const Center(child: CircularProgressIndicator());
            } else if (stateProduct is ProductIsSuccess) {
              final data = stateProduct.data;
              return GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 3.5 / 5,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                ),
                itemCount: data!.length,
                itemBuilder: (context, index) {
                  return ClipRRect(
                    borderRadius: BorderRadius.circular(10),
                    child: VStack(
                      [
                        AspectRatio(
                          aspectRatio: 16 / 9,
                          child: Image.network(
                            data[index].image,
                            fit: BoxFit.contain,
                          ),
                        ),
                        VStack([
                          "${data[index].title}".text.size(16).bold.make(),
                          4.heightBox,
                          Row(
                            children: [
                              "IDR ${data[index].price}"
                                  .text
                                  .lineThrough
                                  .red500
                                  .size(12)
                                  .bold
                                  .make(),
                              4.widthBox,
                            ],
                          ),
                          // Container(
                          //   height: 40,
                          //   child: ListView.builder(
                          //     shrinkWrap: true,
                          //     scrollDirection: Axis.horizontal,
                          //     itemCount:
                          //         (data[index].rating!.round() > 4.5) ? 5 : 3,
                          //     itemBuilder: (context, index) {
                          //       return Icon(
                          //         Icons.star,
                          //         color: Colors.blueAccent,
                          //         size: 20,
                          //       );
                          //     },
                          //   ),
                          // ),
                        ]).p8()
                      ],
                    ).box.white.make(),
                  );
                },
              );
            }
            return Container();
          },
        ),
      ),
    );
  }
}
