import 'package:flutter/material.dart';

import '../../main_pages/today/button_current.dart';

class DongariBoardPage extends StatelessWidget {
  const DongariBoardPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          child: TextButton(
            onPressed: () {  }, child: Row(
            children: [
              Text('  전체게시판',style: TextStyle(color: Colors.black),),
              Icon(Icons.arrow_drop_down,color: Colors.black,),
            ],
          ),
          ),
        ),

        Container(
          child: Column(
            children: [
              Container(
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonCurrent(),
                    ButtonCurrent(),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    ButtonCurrent(),
                    ButtonCurrent(),
                  ],
                ),
              ),
              Container(
                color: Colors.grey[200],
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
