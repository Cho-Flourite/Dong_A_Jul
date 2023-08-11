import 'package:dong_a_jul/view/dongari_main_pages/dongari_apply/apply_component/apply_next_button.dart';
import 'package:flutter/material.dart';

class QuestionAnswer extends StatefulWidget {
  const QuestionAnswer({super.key});

  @override
  State<QuestionAnswer> createState() => _QuestionAnswerState();
}

class _QuestionAnswerState extends State<QuestionAnswer> {
  TextEditingController _textFieldController = TextEditingController();
  bool isButtonEnabled = false;

  @override
  void initState() {
    super.initState();
    _textFieldController.addListener(_updateButtonState);
  }

  void _updateButtonState() {
    setState(() {
      isButtonEnabled = _textFieldController.text.isNotEmpty;
    });
  }

  @override
  void dispose() {
    _textFieldController.removeListener(_updateButtonState);
    _textFieldController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back_ios),
          color: Colors.black,
        ),
        title: Text(
          '지원하기',
          style: TextStyle(color: Colors.black, fontWeight: FontWeight.bold),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 30, left: 32, right: 32),
        child: Container(
          width: 330,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Expanded(
                  child: RichText(
                overflow: TextOverflow.ellipsis,
                maxLines: 5,
                strutStyle: StrutStyle(fontSize: 16.0),
                text: TextSpan(
                  text: '1. 지원자님께서 동아리에 지원하시게 된 동기를 솔직하게 작성해 주세요.',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.black,
                  ),
                ),
              )),
              Expanded(
                flex: 3,
                child: TextFormField(
                  controller: _textFieldController, // 컨트롤러 연결
                  style: const TextStyle(fontSize: 18),
                  decoration: const InputDecoration(
                    contentPadding:
                        EdgeInsets.symmetric(vertical: 125, horizontal: 20),
                    hintText: '서술형 문항을 작성해주세요',
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                      borderSide: BorderSide(
                          width: 1, color: Color.fromRGBO(240, 240, 240, 1)),
                    ),
                    filled: true,
                    fillColor: Color.fromRGBO(240, 240, 240, 1),
                  ),
                ),
              ),
              Spacer(),
              Expanded(
                flex: 1,
                child: Padding(
                  padding: const EdgeInsets.only(top: 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      IconButton(
                          color: Color.fromRGBO(210, 210, 210, 1),
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_back_ios,
                          )),
                      IconButton(
                          color: Color.fromRGBO(210, 210, 210, 1),
                          onPressed: () {},
                          icon: Icon(
                            Icons.arrow_forward_ios,
                          ))
                    ],
                  ),
                ),
              ),
              isButtonEnabled ? NextButton(buttonText: '다음으로', onPressed: (){} ) : NextButton(buttonText: '입력', onPressed: (){}),
            ],
          ),
        ),
      ),
    );
  }
}
