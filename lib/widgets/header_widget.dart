import 'package:flutter/material.dart';

class HeaderWidget extends StatelessWidget {
  const HeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Text(
          "Solaria",
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
        ),
        const SizedBox(height: 25),
        ClipRRect(
          borderRadius: BorderRadius.circular(70.0),
          child: Image.network(
            width: 250,
            "https://api.theauradesign.com/storage/images/5YNioTko8e_1633417130.png",
          ),
        ),
      ],
    );
  }
}
