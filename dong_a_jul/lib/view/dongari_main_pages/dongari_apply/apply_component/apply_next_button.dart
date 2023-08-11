import 'package:flutter/material.dart';

class NextButton extends StatefulWidget {
  final String buttonText; // 매개변수로 text전달
  final VoidCallback onPressed; // onPressed 콜백 추가
  const NextButton(
      {super.key, required this.buttonText, required this.onPressed});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
      child: ElevatedButton(
        onPressed: widget.onPressed, // 전달된 콜백사용
        child: Text(widget.buttonText),
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8.0),
            fixedSize: const Size(600, 45),
            backgroundColor: const Color.fromRGBO(255, 121, 34, 1)),
      ),
    );
  }
}
