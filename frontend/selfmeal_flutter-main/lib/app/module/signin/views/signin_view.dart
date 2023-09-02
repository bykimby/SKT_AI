import 'package:flutter/material.dart';
import 'package:flutter_application_1/app/module/signup/views/signup_view.dart';
import 'package:flutter_application_1/app/module/mainrecipe/views/mainrecipe_view.dart';

class SignIn extends StatefulWidget {
  const SignIn({super.key});

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(title: 'Selfmeal.', home: LogIn());
  }
}

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: SafeArea(
          child: Column(
            children: [
              Container(
                height: 340,
                child: Name(),
              ),
              Container(
                height: 140,
                child: Input(),
              ),
              Container(
                height: 150,
                child: NoAccount(),
              ),
            ],
          ),
        ));
  }
}

@override
Widget Name() {
  return Stack(
    children: [
      Positioned(
          left: 135,
          top: 240,
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
          top: 250,
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
          left: 150,
          top: 280,
          child: Container(
            height: 2.4,
            width: 132.3,
            color: Color(0xFF008A77),
          )),
      Positioned(
          left: 160,
          top: 275,
          child: SizedBox(
            child: Text.rich(TextSpan(children: [
              TextSpan(
                text: 'LOGIN',
                style: TextStyle(
                  color: Color(0xFF008A77),
                  fontSize: 35,
                  fontFamily: 'Inter',
                  fontWeight: FontWeight.w700,
                ),
              ),
            ])),
          )),
    ],
  );
}

class Input extends StatefulWidget {
  const Input({super.key});

  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  String userAnswer = '';

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
            left: 140,
            top: 0,
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
            left: 140,
            top: 40,
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
            left: 160,
            top: 80,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainRecipe()),
                  );
                },
                child: Container(
                  width: 100,
                  height: 40,
                  decoration: BoxDecoration(
                      color: Color.fromARGB(255, 39, 152, 137),
                      borderRadius: BorderRadius.circular(10),
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
            left: 185,
            top: 90,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => MainRecipe()),
                  );
                },
                child: SizedBox(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: 'LOGIN',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ])),
                ))),
      ],
    );
  }
}

class NoAccount extends StatefulWidget {
  const NoAccount({super.key});

  @override
  State<NoAccount> createState() => _NoAccountState();
}

class _NoAccountState extends State<NoAccount> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
            left: 150,
            top: 0,
            child: SizedBox(
              child: Text.rich(TextSpan(children: [
                TextSpan(
                  text: '계정이 없으신가요?',
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
            left: 180,
            top: 20,
            child: GestureDetector(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => SignUp()),
                  );
                },
                child: SizedBox(
                  child: Text.rich(TextSpan(children: [
                    TextSpan(
                      text: '회원가입',
                      style: TextStyle(
                        color: Color(0xFF008A77),
                        decoration: TextDecoration.underline,
                        fontSize: 15,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ])),
                ))),
      ],
    );
  }
}
