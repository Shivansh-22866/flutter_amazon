import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  const CustomTextField({super.key, required this.controller, required this.hintText});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      validator: (val) {},
      decoration: InputDecoration(
        hintText: hintText,
        hintFadeDuration: const Duration(milliseconds: 500),
        border: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.black38,
          ),
        ),
        enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(
          color: Colors.black38,
        )),
      ),
    );
  }
}
