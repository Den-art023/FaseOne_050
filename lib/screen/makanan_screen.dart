import 'package:flutter/material.dart';
import 'package:ucp_pertama/widgets/submit_widget.dart';

class MakanScreen extends StatelessWidget {
  MakanScreen({super.key, required this.nama, required this.noTelp});

  final String nama;
  final String noTelp;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: Padding(
            padding: EdgeInsets.all(8.0),
            child: Column(
              children: [
                SubmitWidget(onPressedSubmit: () {}),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
