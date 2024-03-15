import 'package:flutter/material.dart';
import 'package:ucp_pertama/widgets/finish_widget.dart';

class DetailScreen extends StatelessWidget {
  DetailScreen(
      {super.key,
      required this.nama,
      required this.noTelp,
      required this.makan,
      required this.minum,
      required this.dessert});

  final String nama;
  final String noTelp;
  final String makan;
  final String minum;
  final String dessert;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Detail"),
        ),
        body: Center(
          child: Column(
            children: [
              Text("Nama: $nama"),
              Text("Nama: $noTelp"),
              SizedBox(
                height: 15,
              ),
              Text("Nama: $makan"),
              Text("Nama: $minum"),
              Text("Nama: $dessert"),
              FinishWidget(onPressedFinish: () {})
            ],
          ),
        ));
  }
}
