import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:untitled/data/utilities/commons.dart';
import 'package:untitled/presentation/pages/RiwayatBS/riwayat_bs_cubit/riwayat_bs_cubit.dart';
import 'package:velocity_x/velocity_x.dart';

class RiwayatScreen extends StatelessWidget {
  const RiwayatScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocConsumer<RiwayatBsCubit, RiwayatBsState>(
        listener: (context, riwayatState) {
          if (riwayatState is RiwayatBsIsFailed) {
            Commons().showSnackbarError(context, riwayatState.message);
          }
        },
        builder: (context, riwayatState) {
          if (riwayatState is RiwayatBsIsSuccess) {
            return ListView.builder(
              itemCount: riwayatState.data.length,
              itemBuilder: (context, index) {
                final dataRiwayat = riwayatState.data[index];
                return Column(
                  children: [
                    Container(
                      child: "${dataRiwayat.date}".text.make(),
                    ),
                    Container(
                      child: "${dataRiwayat.point}".text.make(),
                    ),
                    Container(
                      child: "${dataRiwayat.price}".text.make(),
                    ),
                    Container(
                      child: "${dataRiwayat.weight}".text.make(),
                    ),
                  ],
                );
              },
            );
          } else if (riwayatState is RiwayatBsIsLoading) {
            return CircularProgressIndicator().centered();
          }
          return Container(
            child: "Bloc tidak kepanggil".text.makeCentered(),
          );
        },
      ),
    );
  }
}
