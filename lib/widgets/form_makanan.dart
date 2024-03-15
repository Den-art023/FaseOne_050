import 'package:flutter/material.dart';

class FormMakan extends StatefulWidget {
  final GlobalKey<FormState> makankey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  final TextEditingController etDessert;

  FormMakan({
    super.key,
    required this.makankey,
    required this.etMakanan,
    required this.etMinuman,
    required this.etDessert,
  });

  @override
  State<FormMakan> createState() => _FormMakanState();
}

class _FormMakanState extends State<FormMakan> {
  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.makankey,
      child: Column(
        children: [
          SizedBox(
            height: 20,
          ),
          TextFormField(
            controller: widget.etMakanan,
            decoration: InputDecoration(
              labelText: "Makanan",
              hintText: "Masukkan Makanan",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: widget.etMinuman,
            decoration: InputDecoration(
              labelText: "Minuman",
              hintText: "Masukkan Minuman",
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: widget.etDessert,
            decoration: InputDecoration(
              labelText: "Dessert",
              hintText: "Masukkan Dessert",
            ),
          ),
        ],
      ),
    );
  }
}
