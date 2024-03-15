import 'package:flutter/material.dart';

class FormWidget extends StatefulWidget {
  FormWidget({
    super.key,
    required this.formkey,
    required this.etNama,
    required this.etTelp,
    required this.etAlamat,
  });

  final GlobalKey<FormState> formkey;
  final TextEditingController etNama;
  final TextEditingController etTelp;
  final TextEditingController etAlamat;

  @override
  State<FormWidget> createState() => _FormWidgetState();
}

class _FormWidgetState extends State<FormWidget> {
  String _selectedGender = "";

  final List<String> genders = ["Laki-laki", "Perempuan"];

  @override
  Widget build(BuildContext context) {
    return Form(
      key: widget.formkey,
      child: Column(
        children: [
          SizedBox(
            height: 25,
          ),
          TextFormField(
            controller: widget.etNama,
            decoration: InputDecoration(
              labelText: "Nama",
              hintText: "Masukkan Nama",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            autovalidateMode: AutovalidateMode.onUserInteraction,
            keyboardType: TextInputType.phone,
            controller: widget.etTelp,
            decoration: InputDecoration(
              labelText: "Telepon",
              hintText: "Masukkan Nomor Telepon",
              border: OutlineInputBorder(),
            ),
            validator: (value) {
              if (value!.isEmpty) {
                return "Masukkan nomor telepon terlebih dahulu";
              } else {
                if (value.length < 10) {
                  return "Nomor telepon terlalu pendek (minimal 10 angka)";
                } else if (value.length > 15) {
                  return "Nomor telepon terlalu panjang (maksimal 15 angka)";
                }
                return null;
              }
            },
          ),
          SizedBox(
            height: 15,
          ),
          TextFormField(
            controller: widget.etAlamat,
            decoration: InputDecoration(
              labelText: "Alamat",
              hintText: "Masukkan Alamat",
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(
            height: 15,
          ),
          Text("Jenis Kelamin: "),
          ListView.builder(
            shrinkWrap: true,
            itemCount: genders.length,
            itemBuilder: (context, index) {
              return Row(
                children: [
                  Radio<String>(
                    groupValue: _selectedGender,
                    value: genders[index],
                    onChanged: (value) {
                      setState(() {
                        _selectedGender = value!;
                      });
                    },
                  ),
                  Text(genders[index]),
                ],
              );
            },
          ),
        ],
      ),
    );
  }
}
