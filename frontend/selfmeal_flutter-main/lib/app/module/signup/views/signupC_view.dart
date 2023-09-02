import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/module/condition/views/condition_view.dart';
import 'package:flutter_application_1/app/module/signup/views/signup_view.dart';
import 'package:flutter_application_1/app/module/signin/views/signin_view.dart';

class CWidget extends StatefulWidget {
  const CWidget({super.key});

  @override
  State<CWidget> createState() => _CWidgetState();
}

class _CWidgetState extends State<CWidget> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(title: 'Selfmeal.', home: CheckC());
  }
}

class CheckC extends StatefulWidget {
  const CheckC({super.key});

  @override
  State<CheckC> createState() => _CheckCState();
}

class _CheckCState extends State<CheckC> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
            child: Column(
      children: [Container(height: 650, child: QuestionC())],
    )));
  }
}

class QuestionC extends StatefulWidget {
  const QuestionC({super.key});

  @override
  State<QuestionC> createState() => _QuestionCState();
}

class _QuestionCState extends State<QuestionC> {
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
            top: 150,
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
            top: 160,
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
            top: 235,
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
            top: 230,
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
            top: 275,
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
            top: 270,
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
            left: 95,
            top: 315,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '질병이름: ',
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
            top: 310,
            child: Container(
                height: 30,
                width: 140,
                child: TextFormField(
                  onChanged: onAnswerChanged,
                  decoration: InputDecoration(
                    hintText: '예) 고혈압 등',
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
