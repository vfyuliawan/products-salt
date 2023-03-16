import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/presentation/navigation/Routes.dart';
import 'package:untitled/presentation/pages/products/products_bloc/products_bloc.dart';
import 'package:velocity_x/velocity_x.dart';

class ProductsScreen extends StatelessWidget {
  const ProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Products"),
      ),
      body: BlocConsumer<ProductsBloc, ProductsState>(
        listener: (context, productState) {
          if (productState is ProductsIsError) {
            Commons().showSnackbarError(context, productState.message!);
          }
        },
        builder: (context, productState) {
          if (productState is ProductsIsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (productState is ProductsIsSuccess) {
            final products = productState.products;
            return GridView.builder(
              itemCount: products!.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  childAspectRatio: 3.5 / 5,
                  crossAxisSpacing: 16,
                  mainAxisSpacing: 16,
                  crossAxisCount: 2),
              itemBuilder: (context, index) {
                return ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Card(
                    child: VStack([
                      AspectRatio(
                        aspectRatio: 16 / 9,
                        child: Image.network(products[index].image),
                      ),
                      VStack(
                        [
                          "${products[index].title}".text.bold.make(),
                          "USD ${products[index].price}"
                              .text
                              .lineThrough
                              .make(),
                          "Discount ${products[index].price * 50 / 100}"
                              .text
                              .make(),
                          "Description ${products[index].description}"
                              .text
                              .maxLines(2)
                              .size(10)
                              .italic
                              .make()
                              .onTap(() {}),
                          "Category: ${products[index].category}".text.make(),
                          "Discount ${products[index].rating}".text.make(),
                        ],
                      ),
                    ]),
                  ),
                ).onTap(() {
                  context.goNamed(Routes.productDetailScreen,
                      extra: products[index].id);
                });
              },
            );
          }
          return Container();
        },
      ),
    );
  }
}
