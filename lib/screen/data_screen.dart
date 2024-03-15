import 'package:flutter/material.dart';
import 'package:ucp_pertama/widgets/footer_widget.dart';
import 'package:ucp_pertama/widgets/form_widget.dart';
import 'package:ucp_pertama/widgets/header_widget.dart';

class DataScreen extends StatelessWidget {
  const DataScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var nama = TextEditingController();
    var notelp = TextEditingController();
    var alamat = TextEditingController();
    var formkey = GlobalKey<FormState>();

    return Scaffold(
      body: SafeArea(
          child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Column(
            children: [
              HeaderWidget(),
              FormWidget(
                  formkey: formkey,
                  etNama: nama,
                  etTelp: notelp,
                  etAlamat: alamat),
              FooterWidget(onPressedNext: () {})
            ],
          ),
        ),
      )),
    );
  }
}
