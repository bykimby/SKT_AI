import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/module/condition/views/condition_view.dart';
import 'package:flutter_application_1/app/module/mypage/views/mypage_view.dart';
import 'package:flutter_application_1/app/module/record/views/record_view.dart';
import 'package:flutter_application_1/app/module/signin/views/signin_view.dart';
import 'package:flutter_application_1/app/module/recipedetail/views/recipedetail_view.dart';

import '../../widget/Widgets.dart';

// void main() => runApp(SelfMeal());

// SelfMeal Widget
class MainRecipe extends StatefulWidget {
  const MainRecipe({super.key});

  @override
  State<MainRecipe> createState() => _MainRecipeState();
}

class _MainRecipeState extends State<MainRecipe> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Selfmeal.', home: RecipePage());
  }
}

class ImageData {
  final String originalImagePath;
  final String nextImagePath;
  bool isOriginal;

  ImageData(this.originalImagePath, this.nextImagePath) : isOriginal = true;
}

// RecipePage Widget
class RecipePage extends StatefulWidget {
  const RecipePage({super.key});

  @override
  State<RecipePage> createState() => _RecipePageState();
}

class _RecipePageState extends State<RecipePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 330,
                child: recipe_top(),
              ),
              Container(
                height: 260,
                child: Ranking(),
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

class recipe_top extends StatefulWidget {
  const recipe_top({super.key});

  @override
  State<recipe_top> createState() => _recipe_topState();
}

class _recipe_topState extends State<recipe_top> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          left: 0,
          top: 0,
          child: Container(
            width: 412,
            height: 323,
            decoration: BoxDecoration(
              color: Color(0xFF008A77),
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(37),
                  bottomRight: Radius.circular(37)),
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
                text: 'self routine을 위한 시작',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ])),
          )),
      Positioned(
          left: 15,
          top: 130,
          child: SizedBox(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: 'OOO',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 30,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w300,
                ),
              ),
            ])),
          )),
      Positioned(
          left: 80,
          top: 140,
          child: SizedBox(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: '님,',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
          )),
      Positioned(
          left: 15,
          top: 170,
          child: SizedBox(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: '매일 건강한 식단을 위해 고민중이라면\nSelfmeal.에게 추천받아보세요!',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ])),
          )),
      Positioned(
          left: 15,
          top: 240,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckCondition()),
                );
              },
              child: Container(
                width: 130,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        offset: const Offset(0, 7),
                      )
                    ]),
              ))),
      Positioned(
          left: 36,
          top: 255,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => CheckCondition()),
                );
              },
              child: SizedBox(
                child: Text.rich(TextSpan(children: [
                  TextSpan(
                    text: '식단 추천받기',
                    style: TextStyle(
                      color: Color(0xFF008A77),
                      fontSize: 15,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ])),
              ))),
      Positioned(
          left: 165,
          top: 240,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipeDetail()),
                );
              },
              child: Container(
                width: 130,
                height: 50,
                decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.circular(30),
                    boxShadow: [
                      BoxShadow(
                        color: Colors.black.withOpacity(0.2),
                        blurRadius: 5.0,
                        spreadRadius: 0.0,
                        offset: const Offset(0, 7),
                      )
                    ]),
              ))),
    ]);
  }
}
// top Widget

class Ranking extends StatefulWidget {
  const Ranking({super.key});

  @override
  State<Ranking> createState() => _RankingState();
}

class _RankingState extends State<Ranking> {
  @override
  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          left: 20,
          top: 5,
          child: SizedBox(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: '오늘의 인기메뉴',
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
          left: 10,
          top: 35,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipeDetail()),
                );
              },
              child: SizedBox(
                width: 125,
                height: 210,
              ))),
      Positioned(
          left: 144,
          top: 35,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipeDetail()),
                );
              },
              child: SizedBox(
                width: 125,
                height: 210,
              ))),
      Positioned(
          left: 278,
          top: 35,
          child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => RecipeDetail()),
                );
              },
              child: SizedBox(
                width: 125,
                height: 210,
              ))),
      /*
           Positioned(
          left: 10,
          top: 35,
          child: Container(
            width: 125,
            height: 210,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          )),
      Positioned(
          left: 144,
          top: 35,
          child: Container(
            width: 125,
            height: 210,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          )),
      Positioned(
          left: 278,
          top: 35,
          child: Container(
            width: 125,
            height: 210,
            decoration: BoxDecoration(
                color: Colors.grey, borderRadius: BorderRadius.circular(20)),
          )),
          */
    ]);
  }
}
