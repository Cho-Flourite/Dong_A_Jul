import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {

  final String hint;

  InputBox(this.hint);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: TextField(
        decoration: InputDecoration(
          hintText: '$hint',
          hintStyle: TextStyle(color: Colors.grey),
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(10),
              borderSide: BorderSide.none
          ),
          fillColor: Colors.grey[200],
          filled: true,
        ),
      ),
    );
  }
}
