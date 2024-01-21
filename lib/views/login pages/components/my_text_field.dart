import 'package:flutter/material.dart';

class MyTextField extends StatelessWidget {
 final String label ;
 final TextEditingController controller ;
  const MyTextField({super.key, required this.label, required this.controller});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        fillColor: Colors.white,
        filled: true,
        border: OutlineInputBorder(borderSide: BorderSide.none),
        labelText: label,
        labelStyle: TextStyle(fontSize: 18,color: Colors.blueGrey[200],fontWeight: FontWeight.w600)
      ),
    );
  }
}