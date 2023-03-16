import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/data/repository/product/product_repository_impl.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/presentation/pages/product_detail/cubit/product_detail_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductDetailScreen extends StatefulWidget {
  const ProductDetailScreen({super.key});

  @override
  State<ProductDetailScreen> createState() => _ProductDetailScreenState();
}

class _ProductDetailScreenState extends State<ProductDetailScreen> {
  late ProductDetailCubit productDetailCubit;

  @override
  void initState() {
    // TODO: implement initState
    productDetailCubit = ProductDetailCubit(
      ProductRepositoryImpl(),
    );
    super.initState();
  }

  @override
  void dispose() {
    productDetailCubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        child: ElevatedButton(
            onPressed: () {
              Commons()
                  .showSnackbarInfo(context, "Berhasil masuk ke keranjang");
            },
            child: "Tambah ke Troy".text.make()),
      ),
      body: BlocConsumer<ProductDetailCubit, ProductDetailState>(
        listener: (context, productState) {
          if (productState is ProductDetailIsFailed) {
            Commons().showSnackbarError(context, productState.message!);
          }
        },
        builder: (context, productState) {
          if (productState is ProductDetailIsLoading) {
            return Center(
              child: const LinearProgressIndicator(),
            );
          } else if (productState is ProductDetailIsSuccess) {
            final dataProduct = productState.data;
            return Container(
              child: Column(
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(20),
                    child: Container(
                      child: Image(image: NetworkImage(dataProduct!.image)),
                    ),
                  ),
                  Container(
                    child: "${dataProduct.category}".text.make(),
                  ),
                  Container(
                    child: "RP. ${dataProduct.price}"
                        .text
                        .lineThrough
                        .red600
                        .make(),
                  ),
                  Container(
                    child:
                        "RP. ${dataProduct.price * 90 / 100}".text.bold.make(),
                  ),
                ],
              ),
            );
          }
          return Container();
        },
      ),
    );
  }
}
