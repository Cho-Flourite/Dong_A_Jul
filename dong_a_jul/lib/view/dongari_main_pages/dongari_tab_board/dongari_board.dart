import 'package:flutter/material.dart';

import '../../main_pages/today/button_current.dart';

class DongariBoardPage extends StatelessWidget {
  const DongariBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Colors.white,
          child: Column(
            children: [
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonCurrent(),
                    ButtonCurrent(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonCurrent(),
                    ButtonCurrent(),
                  ],
                ),
              ),
              Container(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonCurrent(),
                    ButtonCurrent(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
