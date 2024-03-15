import 'package:flutter/material.dart';

class FormMakan extends StatefulWidget {
  final GlobalKey<FormState> makankey;
  final TextEditingController etMakanan;
  final TextEditingController etMinuman;
  final TextEditingController etDessert;

  final String nama;
  final String noTelp;

  FormMakan({
    super.key,
    required this.makankey,
    required this.etMakanan,
    required this.etMinuman,
    required this.etDessert,
    required this.nama,
    required this.noTelp,
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
          // Display received data from the first page (optional)
          Text(
            "Nama: ${widget.nama}",
            style: TextStyle(fontSize: 16),
          ),
          SizedBox(
            height: 10,
          ),
          Text(
            "Nomor Telepon: ${widget.noTelp}",
            style: TextStyle(fontSize: 16),
          ),
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
