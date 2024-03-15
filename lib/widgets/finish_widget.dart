import 'package:flutter/material.dart';

class FinishWidget extends StatelessWidget {
  FinishWidget({super.key, required this.onPressedFinish});

  final VoidCallback onPressedFinish;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 25,
        ),
        ElevatedButton(
          onPressed: onPressedFinish,
          child: Text("Finish"),
        ),
      ],
    );
  }
}
