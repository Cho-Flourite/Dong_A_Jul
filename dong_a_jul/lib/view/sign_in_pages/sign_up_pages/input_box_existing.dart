import 'package:flutter/material.dart';

class InputBoxExisting extends StatelessWidget {

  final String hint;

  InputBoxExisting(this.hint);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 20,
        right: 20,
      ),
      child: TextField(
        decoration: InputDecoration(
          suffixIcon: Icon(Icons.keyboard_arrow_down),
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
