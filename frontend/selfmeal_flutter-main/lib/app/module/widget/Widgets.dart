import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/module/mainrecipe/views/mainrecipe_view.dart';
import 'package:flutter_application_1/app/module/mypage/views/mypage_view.dart';
import 'package:flutter_application_1/app/module/record/views/record_view.dart';

class Bottombar extends StatefulWidget {
  const Bottombar({super.key});

  @override
  State<Bottombar> createState() => _BottombarState();
}

// list를 위한 class 선언
class ImageTextData {
  final String originalImagePath;
  final String nextImagePath;
  bool isOriginal;
  final String text;
  Color textColor;

  ImageTextData(this.originalImagePath, this.nextImagePath, this.text)
      : isOriginal = true,
        textColor = Color(0xFFD7D7D7);

  void changeButton() {
    isOriginal = !isOriginal;
    textColor = isOriginal ? Color(0xFFD7D7D7) : Color(0xFF008A77);
  }
}

class _BottombarState extends State<Bottombar> {
  List<ImageTextData> _imageTextDataList = [
    ImageTextData('personicon.png', 'personicon_next.png', 'MY'),
    ImageTextData('recipeicon.png', 'recipeicon_next.png', '식단'),
    ImageTextData('recordicon.png', 'recordicon_next.png', '기록'),
  ];

  void _changeImageText(int index) {
    setState(() {
      _imageTextDataList[index].changeButton();
    });
  }

  Widget build(BuildContext context) {
    return Stack(children: [
      Positioned(
          top: 0,
          child: Container(
            height: 1.0,
            width: 500.0,
            color: Color(0xFFD8D8D8),
          )),
      Positioned(
          left: 45,
          top: 10,
          child: Container(
              width: 27,
              height: 27,
              child: GestureDetector(
                  child: Image.asset(
                      'assets/${_imageTextDataList[0].isOriginal ? _imageTextDataList[0].originalImagePath : _imageTextDataList[0].nextImagePath}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MyPage()),
                    );
                    _changeImageText(0);
                  }))),
      Positioned(
        left: 50,
        top: 35,
        child: SizedBox(
          child: Text(
            _imageTextDataList[0].text,
            style: TextStyle(
              color: _imageTextDataList[0].textColor,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Positioned(
          left: 192,
          top: 10,
          child: Container(
              width: 27,
              height: 27,
              child: GestureDetector(
                  child: Image.asset(
                      'assets/${_imageTextDataList[1].isOriginal ? _imageTextDataList[1].originalImagePath : _imageTextDataList[1].nextImagePath}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => MainRecipe()),
                    );
                    _changeImageText(1);
                  }))),
      Positioned(
        left: 195,
        top: 35,
        child: SizedBox(
          child: Text(
            _imageTextDataList[1].text,
            style: TextStyle(
              color: _imageTextDataList[1].textColor,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
      Positioned(
          left: 340,
          top: 10,
          child: Container(
              width: 27,
              height: 27,
              child: GestureDetector(
                  child: Image.asset(
                      'assets/${_imageTextDataList[2].isOriginal ? _imageTextDataList[2].originalImagePath : _imageTextDataList[2].nextImagePath}'),
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Record()),
                    );
                    _changeImageText(2);
                  }))),
      Positioned(
        left: 340,
        top: 35,
        child: SizedBox(
          child: Text(
            _imageTextDataList[2].text,
            style: TextStyle(
              color: _imageTextDataList[2].textColor,
              fontSize: 12,
              fontFamily: 'Inter',
              fontWeight: FontWeight.w700,
            ),
          ),
        ),
      ),
    ]);
  }
}
