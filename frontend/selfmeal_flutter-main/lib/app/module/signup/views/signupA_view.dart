import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/module/condition/views/condition_view.dart';
import 'package:flutter_application_1/app/module/signup/views/signup_view.dart';
import 'package:flutter_application_1/app/module/signin/views/signin_view.dart';

class AWidget extends StatefulWidget {
  const AWidget({super.key});

  @override
  State<AWidget> createState() => _AWidgetState();
}

class _AWidgetState extends State<AWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Selfmeal.', home: CheckA());
  }
}

class CheckA extends StatefulWidget {
  const CheckA({super.key});

  @override
  State<CheckA> createState() => _CheckAState();
}

class _CheckAState extends State<CheckA> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [Container(height: 650, child: QuestionA())],
    )));
  }
}

class QuestionA extends StatefulWidget {
  const QuestionA({super.key});

  @override
  State<QuestionA> createState() => _QuestionAState();
}

class _QuestionAState extends State<QuestionA> {
  String userAnswer = '';

  // textFormField 함수
  void onAnswerChanged(String newText) {
    setState(() {
      userAnswer = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 135,
            top: 200,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: 'S',
                  style: TextStyle(
                    color: Color(0xFF008A77),
                    fontSize: 45,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ])),
            )),
        Positioned(
            left: 162,
            top: 210,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: 'elfmeal.',
                  style: TextStyle(
                    color: Color(0xFF008A77),
                    fontSize: 34,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ])),
            )),
        Positioned(
            left: 124,
            top: 285,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '기간',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ])),
            )),
        Positioned(
            left: 162,
            top: 280,
            child: Container(
                height: 30,
                width: 140,
                child: TextFormField(
                  onChanged: onAnswerChanged,
                  decoration: InputDecoration(
                    hintText: '00일',
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 30, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ))),
        Positioned(
            left: 96,
            top: 325,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '목표체중',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ])),
            )),
        Positioned(
            left: 162,
            top: 320,
            child: Container(
                height: 30,
                width: 140,
                child: TextFormField(
                  onChanged: onAnswerChanged,
                  decoration: InputDecoration(
                    hintText: '00kg',
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 30, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ))),
        Positioned(
          left: 180,
          top: 370,
          child: Container(
            child: ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SignIn()),
                );
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // 둥근 모서리의 반지름
                  ),
                  primary: Color(0xFF008A77)),
              child: Text('완료'),
            ),
          ),
        )
      ],
    );
  }
}
