import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with EdgeInsetsCustom {
  final String login_title = "Login";
  final String loginImgPath = "assets/loginImg/login_open_door.webp";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          login_title,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: const Icon(
          Icons.arrow_back_ios_outlined,
          color: Colors.orange,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsetsCustom().marginVertical,
              height: 175,
              width: 175,
              child: Image.asset(
                loginImgPath,
              ),
            ),
          )
        ],
      ),
    );
  }
}

class EdgeInsetsCustom {
  final EdgeInsets marginVertical = const EdgeInsets.symmetric(vertical: 25);
}
