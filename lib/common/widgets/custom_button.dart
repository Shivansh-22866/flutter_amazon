import 'package:flutter/material.dart';
import 'package:flutter_amazon/constants/global_var.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final VoidCallback onTap;
  const CustomButton({super.key, required this.text, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: const RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(8))),
          backgroundColor: GlobalVariables.secondaryColor,
          foregroundColor: GlobalVariables.backgroundColor,
            minimumSize: const Size(double.infinity, 50)),
        child: Text(text),);
  }
}
