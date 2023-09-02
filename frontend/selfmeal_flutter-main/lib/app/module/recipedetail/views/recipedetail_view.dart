//import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/module/mypage/views/mypage_view.dart';
import 'package:flutter_application_1/app/module/record/views/record_view.dart';
import 'package:flutter_application_1/app/module/mainrecipe/views/mainrecipe_view.dart';

import '../../widget/Widgets.dart';

class RecipeDetail extends StatefulWidget {
  const RecipeDetail({super.key});

  @override
  State<RecipeDetail> createState() => _RecipeDetailState();
}

class _RecipeDetailState extends State<RecipeDetail> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Selfmeal.', home: ShowDetail());
  }
}

class ImageData {
  final String originalImagePath;
  final String nextImagePath;
  bool isOriginal;

  ImageData(this.originalImagePath, this.nextImagePath) : isOriginal = true;
}

// RecipePage Widget
class ShowDetail extends StatefulWidget {
  const ShowDetail({super.key});

  @override
  State<ShowDetail> createState() => _ShowDetailState();
}

class _ShowDetailState extends State<ShowDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: /*SingleChildScrollView(
            child:*/
            SafeArea(
                /*child: ListView(*/
                child: Column(
          children: [
            Container(
              height: 145,
              child: Top(),
            ),
            Container(
              height: 445,
              child: Detail(),
            ),
            Container(
              height: 60,
              child: Bottombar(),
            ),
          ],
        )
                //),
                //)
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
          width: 412,
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
              text: '식단 레시피',
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

class Detail extends StatefulWidget {
  const Detail({super.key});

  @override
  State<Detail> createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      // 레시피 사진
      Positioned(
          left: 205,
          top: 10,
          child: SizedBox(
            width: 190,
            height: 150,
          )),
      // 레시피 이름
      Positioned(left: 20, top: 35, child: SizedBox()),
      // 레시피 칼로리
      Positioned(left: 20, top: 75, child: SizedBox()),
      // 재료
      Positioned(left: 20, top: 170, child: SizedBox()),
      // 레시피 재료 칸
      Positioned(
          left: 15,
          top: 195,
          child: SizedBox(
            width: 380,
            height: 100,
          )),
      // 만드는 방법
      Positioned(left: 20, top: 300, child: SizedBox()),
      // 만드는 방법 칸
      Positioned(
          left: 15,
          top: 325,
          child: SizedBox(
            width: 380,
            height: 110,
          )),
      Positioned(
          left: 205,
          top: 10,
          child: Container(
            width: 190,
            height: 150,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          )),
      Positioned(
          left: 20,
          top: 35,
          child: SizedBox(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: '레시피 이름',
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
          left: 20,
          top: 75,
          child: SizedBox(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: '1000kcal',
                style: TextStyle(
                  color: Color(0xFF008A77),
                  fontSize: 20,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ])),
          )),
      Positioned(
          left: 20,
          top: 170,
          child: SizedBox(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: '재료:',
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
          left: 15,
          top: 195,
          child: Container(
            width: 380,
            height: 100,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          )),
      Positioned(
          left: 20,
          top: 300,
          child: SizedBox(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: '만드는 방법: ',
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
          left: 15,
          top: 325,
          child: Container(
            width: 380,
            height: 110,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          )),
    ]);
  }
}
