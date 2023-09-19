import 'package:flutter/material.dart';

class NextButton extends StatefulWidget {
  final String buttonText; // 매개변수로 text전달
  final VoidCallback onPressed; // onPressed 콜백 추가
  final bool isButtonEnabled; // 버튼클릭
  const NextButton(
      {super.key,
      required this.buttonText,
      required this.onPressed,
      required this.isButtonEnabled});

  @override
  State<NextButton> createState() => _NextButtonState();
}

class _NextButtonState extends State<NextButton> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 18, right: 18, top: 14, bottom: 14),
      child: ElevatedButton(
        onPressed: widget.isButtonEnabled ? widget.onPressed : null,
        // isButtonEnabled 값에 따라 onPressed 설정
        child: Text(widget.buttonText),
        style: ElevatedButton.styleFrom(
            padding: const EdgeInsets.all(8.0),
            fixedSize: const Size(334, 55),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            backgroundColor: const Color.fromRGBO(255, 121, 34, 1)),
      ),
    );
  }
}
