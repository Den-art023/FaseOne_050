import 'package:flutter/material.dart';

class SubmitWidget extends StatelessWidget {
  SubmitWidget({super.key, required this.onPressedSubmit});

  final VoidCallback onPressedSubmit;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: onPressedSubmit,
          child: Text("submit"),
        ),
      ],
    );
  }
}
