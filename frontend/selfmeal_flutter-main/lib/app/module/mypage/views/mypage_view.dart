import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/module/condition/views/condition_view.dart';
import 'package:flutter_application_1/app/module/mainrecipe/views/mainrecipe_view.dart';
import 'package:flutter_application_1/app/module/record/views/record_view.dart';

import '../../widget/Widgets.dart';

class MyPage extends StatefulWidget {
  const MyPage({super.key});

  @override
  State<MyPage> createState() => _MyPageState();
}

class _MyPageState extends State<MyPage> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Selfmeal.', home: MyInfo());
  }
}

class ImageData {
  final String originalImagePath;
  final String nextImagePath;
  bool isOriginal;

  ImageData(this.originalImagePath, this.nextImagePath) : isOriginal = true;
}

// RecipePage Widget
class MyInfo extends StatefulWidget {
  const MyInfo({super.key});

  @override
  State<MyInfo> createState() => _MyInfoState();
}

class _MyInfoState extends State<MyInfo> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 590,
                child: Top(),
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

Widget Top() {
  return Stack(children: [
    Positioned(
        left: 0,
        top: 0,
        child: Container(
          width: 412,
          height: 173,
          decoration: BoxDecoration(
            color: Color(0xFF008A77),
          ),
        )),
    Positioned(
        left: 15,
        top: 45,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: 'M',
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
        left: 47,
        top: 55,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: 'ymeal.',
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
        top: 110,
        child: Container(
          width: 412,
          height: 530,
          decoration: BoxDecoration(
            color: Color(0xFFF7F7F7),
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(25),
              topRight: Radius.circular(25),
            ),
          ),
        )),
    Positioned(
        left: 31,
        top: 140,
        child: Container(
          width: 350,
          height: 150,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5.0,
                spreadRadius: 0.0,
                offset: const Offset(0, 7),
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
        )),
    Positioned(
        left: 50,
        top: 160,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: '사용자 정보',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ])),
        )),
    Positioned(
        left: 55,
        top: 190,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: '홍길동',
              style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ])),
        )),
    Positioned(
        left: 55,
        top: 230,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: '성별: 남                                  나이: 35\n키: 173cm',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ])),
        )),
    Positioned(
        left: 31,
        top: 310,
        child: Container(
          width: 160,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5.0,
                spreadRadius: 0.0,
                offset: const Offset(0, 7),
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
        )),
    Positioned(
        left: 45,
        top: 320,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: '하루 권장 칼로리',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ])),
        )),
    Positioned(
        left: 45,
        top: 355,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: '1800kcal',
              style: TextStyle(
                color: Color(0xFF008A77),
                fontSize: 30,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ])),
        )),
    Positioned(
        left: 221,
        top: 310,
        child: Container(
          width: 160,
          height: 100,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5.0,
                spreadRadius: 0.0,
                offset: const Offset(0, 7),
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
        )),
    Positioned(
        left: 236,
        top: 320,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: '목표 체중',
              style: TextStyle(
                color: Colors.black,
                fontSize: 15,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w400,
              ),
            ),
          ])),
        )),
    Positioned(
        left: 265,
        top: 355,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: '70kg',
              style: TextStyle(
                color: Color(0xFF008A77),
                fontSize: 30,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ])),
        )),
    Positioned(
        left: 31,
        top: 430,
        child: Container(
          width: 350,
          height: 120,
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 5.0,
                spreadRadius: 0.0,
                offset: const Offset(0, 7),
              )
            ],
            borderRadius: BorderRadius.circular(20),
          ),
        )),
    Positioned(
        left: 80,
        top: 467,
        child: SizedBox(
          child: Text.rich(TextSpan(children: [
            TextSpan(
              text: '    SelfMeal과 함께하는 식사!! \n 건강한 변화 응원해요! 화이팅 💪',
              style: TextStyle(
                color: Colors.black,
                fontSize: 18,
                fontFamily: 'Inter',
                fontWeight: FontWeight.w700,
              ),
            ),
          ])),
        )),
  ]);
}

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  @override
  Widget build(BuildContext context) {
    return Stack();
  }
}
