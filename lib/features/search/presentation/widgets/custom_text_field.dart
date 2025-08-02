import 'package:bookly/constants.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        enabledBorder: outlineInputBorder(),
        focusedBorder: outlineInputBorder(),
        hintText: 'Search...',
        hintStyle: TextStyle(color: kSecondaryColor),
        suffixIcon: Icon(Icons.search_outlined, color: kSecondaryColor),
      ),
    );
  }
}

OutlineInputBorder outlineInputBorder() {
  return OutlineInputBorder(
    borderSide: BorderSide(color: kSecondaryColor),
    borderRadius: BorderRadius.circular(16),
  );
}
