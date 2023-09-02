import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/module/mainrecipe/views/mainrecipe_view.dart';
import 'package:flutter_application_1/app/module/mypage/views/mypage_view.dart';
import 'package:flutter_application_1/app/module/record/views/record_view.dart';
import 'package:flutter_application_1/app/module/recipedetail/views/recipedetail_view.dart';

import '../../widget/Widgets.dart';

class ShowThreeRecipe extends StatefulWidget {
  const ShowThreeRecipe({super.key});

  @override
  State<ShowThreeRecipe> createState() => _ShowThreeRecipeState();
}

class _ShowThreeRecipeState extends State<ShowThreeRecipe> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Selfmeal.', home: ChooseRecipe());
  }
}

class ChooseRecipe extends StatefulWidget {
  const ChooseRecipe({super.key});

  @override
  State<ChooseRecipe> createState() => _ChooseRecipeState();
}

class _ChooseRecipeState extends State<ChooseRecipe> {
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
                child: RecipeList(),
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
              text: '추천 식단',
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

class RecipeList extends StatefulWidget {
  const RecipeList({super.key});

  @override
  State<RecipeList> createState() => _RecipeListState();
}

class _RecipeListState extends State<RecipeList> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 15,
            top: 20,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '식단1. ',
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
            top: 45,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipeDetail()),
                  );
                },
                child: SizedBox(
                  width: 380,
                  height: 100,
                ))),
        Positioned(
            left: 15,
            top: 165,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '식단2. ',
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
            top: 190,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => RecipeDetail()),
                  );
                },
                child: SizedBox(
                  width: 380,
                  height: 100,
                ))),
        Positioned(
            left: 15,
            top: 310,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '식단3. ',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 15,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ])),
            )),
        /*
        Positioned(
            left: 15,
            top: 45,
            child: Container(
              width: 380,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            )),
        Positioned(
            left: 15,
            top: 190,
            child: Container(
              width: 380,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            )),
        Positioned(
            left: 15,
            top: 335,
            child: Container(
              width: 380,
              height: 100,
              decoration: BoxDecoration(
                  color: Colors.grey, borderRadius: BorderRadius.circular(20)),
            )),
            */
      ],
    );
  }
}
