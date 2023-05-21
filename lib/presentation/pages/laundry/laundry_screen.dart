import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/presentation/pages/laundry/laundry_test/laundry_test_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

class LaundryScreen extends StatelessWidget {
  const LaundryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<LaundryTestCubit, LaundryTestState>(
        listener: (context, state) {
          if (state is LaundryTestIsError) {
            Commons().showSnackbarError(context, state.message!);
          } else if (state is LaundryTestIsSuccess) {
            // Commons().showSnackbarInfo(context, "${state.data!.item}");
          }
        },
        builder: (context, state) {
          if (state is LaundryTestIsLoading) {
            return const Center(
              child: CircularProgressIndicator(),
            );
          } else if (state is LaundryTestIsSuccess) {
            print('success 1 ');
            return Container(
              child: ListView.builder(
                itemCount: state.data!.variable!.length,
                itemBuilder: (context, index) {
                  print('success 2 ');
                  final variable = state.data!.variable!;
                  return ListTile(
                    title: "key:  ${variable[index].key}".text.make(),
                    subtitle: "${variable[index].value}".text.make(),
                  );
                },
              ),
            );
          }
          return Container(
            child: "Tidak ada data".text.make(),
          );
        },
      ),
    );
  }
}
