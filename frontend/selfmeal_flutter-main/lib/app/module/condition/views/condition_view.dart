import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/module/mainrecipe/views/mainrecipe_view.dart';
import 'package:flutter_application_1/app/module/mypage/views/mypage_view.dart';
import 'package:flutter_application_1/app/module/record/views/record_view.dart';
import 'package:flutter_application_1/app/module/threerecipe/views/threerecipe_view.dart';

import '../../widget/Widgets.dart';

// void main() => runApp(SelfMeal2());

// SelfMeal Widget
class CheckCondition extends StatefulWidget {
  const CheckCondition({super.key});

  @override
  State<CheckCondition> createState() => _CheckConditionState();
}

class _CheckConditionState extends State<CheckCondition> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Selfmeal.', home: ConditionPage());
  }
}

class ImageData {
  final String originalImagePath;
  final String nextImagePath;
  bool isOriginal;

  ImageData(this.originalImagePath, this.nextImagePath) : isOriginal = true;
}

// RecipePage Widget
class ConditionPage extends StatefulWidget {
  const ConditionPage({super.key});

  @override
  State<ConditionPage> createState() => _ConditionPageState();
}

class _ConditionPageState extends State<ConditionPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 145,
                child: Top(),
              ),
              Container(
                height: 445,
                child: Question(),
              ),
              Container(
                height: 60,
                child: Bottombar(),
              ),
            ],
          ),
        ));
  }
}

// top Widget
@override
Widget Top() {
  return Stack(children: [
    Positioned(
        left: 0,
        top: 0,
        child: Container(
          width: 420,
          height: 143,
          decoration: BoxDecoration(
            color: Color(0xFF008A77),
            borderRadius: BorderRadius.only(
                bottomLeft: Radius.circular(20),
                bottomRight: Radius.circular(20)),
          ),
        )),
    Positioned(
        left: 15,
        top: 40,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: 'S',
              style: TextStyle(
                color: Colors.white,
                fontSize: 36,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ])),
        )),
    Positioned(
        left: 38,
        top: 50,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: 'elfmeal.',
              style: TextStyle(
                color: Colors.white,
                fontSize: 25,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ])),
        )),
    Positioned(
        left: 15,
        top: 85,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: '맞춤 조건 설정',
              style: TextStyle(
                color: Colors.white,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ])),
        )),
  ]);
}

// question Widget
class Question extends StatefulWidget {
  const Question({super.key});

  @override
  State<Question> createState() => _QuestionState();
}

class _QuestionState extends State<Question> {
  String userAnswer = '';

  void onAnswerChanged(String newText) {
    setState(() {
      userAnswer = newText;
    });
  }

  bool morningSelected = false;
  bool lunchSelected = false;
  bool dinnerSelected = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 25,
            top: 5,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '추천받고 싶은 끼니를 알려주세요.',
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
            left: 25,
            top: 40,
            child: SizedBox(
              width: 90,
              height: 90,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    morningSelected = !morningSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // 둥근 모서리의 반지름
                  ),
                  primary: morningSelected
                      ? Color.fromARGB(255, 0, 92, 78) // 선택될 때의 색상
                      : Colors.grey, // 선택되지 않을 때의 색상
                ),
                child: Text('아침'),
              ),
            )),
        Positioned(
            left: 130,
            top: 40,
            child: Container(
              width: 90,
              height: 90,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    lunchSelected = !lunchSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // 둥근 모서리의 반지름
                  ),
                  primary: lunchSelected
                      ? Color.fromARGB(255, 0, 92, 78) // 선택될 때의 색상
                      : Colors.grey, // 선택되지 않을 때의 색상
                ),
                child: Text('점심'),
              ),
            )),
        Positioned(
            left: 235,
            top: 40,
            child: Container(
              width: 90,
              height: 90,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    dinnerSelected = !dinnerSelected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // 둥근 모서리의 반지름
                  ),
                  primary: dinnerSelected
                      ? Color.fromARGB(255, 0, 92, 78) // 선택될 때의 색상
                      : Colors.grey, // 선택되지 않을 때의 색상
                ),
                child: Text('저녁'),
              ),
            )),
        Positioned(
            left: 25,
            top: 150,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '식단에 활용하고 싶은 재료를 알려주세요.',
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
            left: 25,
            top: 180,
            child: Container(
                height: 100,
                width: 340,
                child: TextField(
                  onChanged: onAnswerChanged,
                  decoration: InputDecoration(
                    labelText: '예) 두부, 닭가슴살 등',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ))),
        Positioned(
            left: 25,
            top: 260,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '식단에 제외하고 싶은 재료를 알려주세요. \n(알레르기 있는 식품)',
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
            left: 25,
            top: 315,
            child: Container(
                height: 100,
                width: 340,
                child: TextField(
                  onChanged: onAnswerChanged,
                  decoration: InputDecoration(
                    labelText: '예) 오이, 콩 등',
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ))),
        Positioned(
            left: 140,
            top: 385,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShowThreeRecipe()),
                  );
                },
                child: Container(
                  width: 130,
                  height: 40,
                  decoration: BoxDecoration(
                    color: Color(0xFF008A77),
                    borderRadius: BorderRadius.circular(30),
                  ),
                ))),
        Positioned(
            left: 190,
            top: 395,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ShowThreeRecipe()),
                  );
                },
                child: SizedBox(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: '확인',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ])),
                ))),
      ],
    );
  }
}
