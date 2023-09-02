import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/module/mainrecipe/views/mainrecipe_view.dart';
import 'package:flutter_application_1/app/module/signin/views/signin_view.dart';
import 'package:flutter_application_1/app/module/signup/views/signupA_view.dart';
import 'package:flutter_application_1/app/module/signup/views/signupB_view.dart';
import 'package:flutter_application_1/app/module/signup/views/signupC_view.dart';

class SignUp extends StatefulWidget {
  const SignUp({super.key});

  @override
  State<SignUp> createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Selfmeal.',
      home: UserInfo(),
      routes: {
        '/signupA_view': (context) => AWidget(),
        '/signupB_view': (context) => BWidget(),
        '/signupC_view': (context) => CWidget(),
      },
    );
  }
}

class UserInfo extends StatefulWidget {
  const UserInfo({super.key});

  @override
  State<UserInfo> createState() => _UserInfoState();
}

class _UserInfoState extends State<UserInfo> {
  String userAnswer = '';

  void onAnswerChanged(String newText) {
    setState(() {
      userAnswer = newText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Column(
          children: [
            Container(
              height: 650,
              child: Info(),
            ),
          ],
        ),
      ),
    );
  }
}

class Info extends StatefulWidget {
  const Info({super.key});

  @override
  State<Info> createState() => _InfoState();
}

class _InfoState extends State<Info> {
  String userAnswer = '';

  // textTermField 함수
  void onAnswerChanged(String newText) {
    setState(() {
      userAnswer = newText;
    });
  }

  bool? _isMaleSelected;
  bool? _isFemaleSelected;
  String _selectedGenderText = '선택 안됨';

  // GenderSelecting 함수
  void _showGenderSelectionDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('성별 선택'),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              CheckboxListTile(
                title: Text('남성'),
                value: _isMaleSelected ?? false,
                onChanged: (value) {
                  setState(() {
                    _isMaleSelected = value;
                    _isFemaleSelected = false;
                    _selectedGenderText = (value == true ? '남성' : '선택 안됨');
                  });
                  Navigator.pop(context);
                },
              ),
              CheckboxListTile(
                title: Text('여성'),
                value: _isFemaleSelected ?? false,
                onChanged: (value) {
                  setState(() {
                    _isFemaleSelected = value;
                    _isMaleSelected = false;
                    _selectedGenderText = (value == true ? '여성' : '선택 안됨');
                  });
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        );
      },
    );
  }

  bool container1Selected = false;
  bool container2Selected = false;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 135,
            top: 100,
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
            top: 110,
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
            left: 134,
            top: 185,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: 'ID',
                  style: TextStyle(
                    color: Color(0xFF008A77),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ])),
            )),
        Positioned(
            left: 160,
            top: 180,
            child: Container(
                height: 30,
                width: 140,
                child: TextFormField(
                  onChanged: onAnswerChanged,
                  decoration: InputDecoration(
                    hintText: 'ID',
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 30, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ))),
        Positioned(
            left: 70,
            top: 225,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: 'Password',
                  style: TextStyle(
                    color: Color(0xFF008A77),
                    fontSize: 18,
                    fontFamily: 'Inter',
                    fontWeight: FontWeight.w700,
                  ),
                ),
              ])),
            )),
        Positioned(
            left: 160,
            top: 220,
            child: Container(
                height: 30,
                width: 140,
                child: TextFormField(
                  onChanged: onAnswerChanged,
                  decoration: InputDecoration(
                    hintText: 'Password',
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 30, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ))),
        Positioned(
            left: 150,
            top: 230,
            child: Container(
                height: 68,
                width: 160,
                child: Column(
                  children: <Widget>[
                    SizedBox(height: 20),
                    TextButton(
                      onPressed: () {
                        _showGenderSelectionDialog(context);
                      },
                      child: Text(
                        '성별: ${_isMaleSelected == true ? '남성' : (_isFemaleSelected == true ? '여성' : '선택 안됨')}',
                        style: TextStyle(
                          color: Colors.black,
                        ),
                      ),
                    ),
                  ],
                ))),
        Positioned(
            left: 120,
            top: 264,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '성별',
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
            left: 120,
            top: 304,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '나이',
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
            left: 160,
            top: 300,
            child: Container(
                height: 30,
                width: 140,
                child: TextFormField(
                  onChanged: onAnswerChanged,
                  decoration: InputDecoration(
                    hintText: '나이',
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 30, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ))),
        Positioned(
            left: 120,
            top: 344,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '키',
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
            left: 160,
            top: 340,
            child: Container(
                height: 30,
                width: 140,
                child: TextFormField(
                  onChanged: onAnswerChanged,
                  decoration: InputDecoration(
                    hintText: '키',
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 30, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ))),
        Positioned(
            left: 120,
            top: 384,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '체중',
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
            left: 160,
            top: 380,
            child: Container(
                height: 30,
                width: 140,
                child: TextFormField(
                  onChanged: onAnswerChanged,
                  decoration: InputDecoration(
                    hintText: '체중',
                    contentPadding: EdgeInsets.fromLTRB(10, 10, 30, 0),
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(10),
                    ),
                  ),
                ))),
        Positioned(
            left: 140,
            top: 425,
            child: Container(
              height: 40,
              width: 90,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    container1Selected = !container1Selected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // 둥근 모서리의 반지름
                  ),
                  primary: container1Selected
                      ? Color.fromARGB(255, 0, 77, 66) // 선택될 때의 색상
                      : Color(0xFF008A77), // 선택되지 않을 때의 색상
                ),
                child: Text('체중감량'),
              ),
            )),
        Positioned(
            left: 240,
            top: 425,
            child: Container(
              height: 40,
              width: 90,
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    container2Selected = !container2Selected;
                  });
                },
                style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // 둥근 모서리의 반지름
                  ),
                  primary: container2Selected
                      ? Color.fromARGB(255, 0, 77, 66) // 선택될 때의 색상
                      : Color(0xFF008A77), // 선택되지 않을 때의 색상
                ),
                child: Text('질병개선'),
              ),
            )),
        Positioned(
            left: 70,
            top: 434,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '사용목적',
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
          left: 200,
          top: 470,
          child: Container(
            child: ElevatedButton(
              onPressed: () {
                if (container1Selected && container2Selected) {
                  Navigator.pushNamed(context, '/signupC_view');
                } else if (container1Selected) {
                  Navigator.pushNamed(context, '/signupA_view');
                } else if (container2Selected) {
                  Navigator.pushNamed(context, '/signupB_view');
                }
              },
              style: ElevatedButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15), // 둥근 모서리의 반지름
                  ),
                  primary: Color(0xFF008A77)),
              child: Text('확인'),
            ),
          ),
        )
      ],
    );
  }
}
