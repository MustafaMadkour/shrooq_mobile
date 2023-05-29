import 'package:flutter/material.dart';

class AuthTextForm extends StatelessWidget {
  final String hinttext;
  final String labeltext;
  final IconData fieldicon;
  final TextEditingController? myController;
  final String? Function(String?) validate;
  const AuthTextForm(
      {super.key,
      required this.hinttext,
      required this.labeltext,
      required this.fieldicon,
      this.myController,
      required this.validate});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      validator: validate,
      controller: myController,
      decoration: InputDecoration(
        floatingLabelBehavior: FloatingLabelBehavior.always,
        contentPadding: const EdgeInsets.symmetric(vertical: 5, horizontal: 30),
        label: Container(
          margin: const EdgeInsets.symmetric(horizontal: 10),
          child: Text(labeltext),
        ),
        hintText: hinttext,
        hintStyle: const TextStyle(fontSize: 12),
        suffixIcon: Icon(fieldicon),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
