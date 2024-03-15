import 'package:flutter/material.dart';
import 'package:ucp_pertama/screen/detail_screen.dart';
import 'package:ucp_pertama/widgets/form_makanan.dart';
import 'package:ucp_pertama/widgets/submit_widget.dart';

class MakanScreen extends StatelessWidget {
  MakanScreen({super.key, required this.nama, required this.noTelp});

  final String nama;
  final String noTelp;
  @override
  Widget build(BuildContext context) {
    var makan = TextEditingController();
    var minum = TextEditingController();
    var dessert = TextEditingController();
    var makankey = GlobalKey<FormState>();

    return Scaffold(
      appBar: AppBar(
        title: Text("Data Makanan"),
      ),
      body: Center(
        child: Column(
          children: [
            Text("Nama: $nama"),
            Text("Nomor Telpon: $noTelp"),
            FormMakan(
              makankey: makankey,
              etMakanan: makan,
              etMinuman: minum,
              etDessert: dessert,
            ),
            SubmitWidget(onPressedSubmit: () {
              if (makankey.currentState!.validate()) {
                Navigator.pushAndRemoveUntil(
                    context,
                    MaterialPageRoute(
                      builder: (context) => DetailScreen(
                          nama: nama,
                          noTelp: noTelp,
                          makan: makan.text,
                          minum: minum.text,
                          dessert: dessert.text),
                    ),
                    (route) => false);
              }
            })
          ],
        ),
      ),
    );
  }
}
