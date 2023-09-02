import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/module/mainrecipe/views/mainrecipe_view.dart';
import 'package:flutter_application_1/app/module/mypage/views/mypage_view.dart';

import '../../widget/Widgets.dart';

class Record extends StatefulWidget {
  const Record({super.key});

  @override
  State<Record> createState() => _RecordState();
}

class _RecordState extends State<Record> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Selfmeal.', home: SaveRecipe());
  }
}

class ImageData {
  final String originalImagePath;
  final String nextImagePath;
  bool isOriginal;

  ImageData(this.originalImagePath, this.nextImagePath) : isOriginal = true;
}

// RecipePage Widget
class SaveRecipe extends StatefulWidget {
  const SaveRecipe({super.key});

  @override
  State<SaveRecipe> createState() => _SaveRecipeState();
}

class _SaveRecipeState extends State<SaveRecipe> {
  /*
  List<ImageData> _imageDataList = [
    ImageData('personicon.png', 'personicon_next.png'),
    ImageData('recipeicon.png', 'recipeicon_next.png'),
    ImageData('recordicon.png', 'recordicon_next.png'),
  ];

  void _changeImage(int index) {
    setState(() {
      _imageDataList[index].isOriginal = !_imageDataList[index].isOriginal;
    });
  }*/

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
                child: SaveList(),
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
              text: '저장된 레시피',
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
// top Widget

/*
@override
Widget ranking() {
  return 
}*/

class SaveList extends StatefulWidget {
  const SaveList({super.key});

  @override
  State<SaveList> createState() => _SaveListState();
}

class _SaveListState extends State<SaveList> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
