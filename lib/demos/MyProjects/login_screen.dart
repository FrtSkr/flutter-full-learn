import 'dart:ffi';

import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> with EdgeInsetsCustom {
  final String login_title = "Login";
  final String forgotPass = "Forgot Password?";
  final String questionRegister = "Not registered?";
  final String createAcco = "Create Account";
  final String loginImgPath = getImgAssetsFullPath("login_open_door.webp");
  final String googleImgPath =
      getImgAssetsFullPath("enter_google_account.webp");
  final String facebookImgPath =
      getImgAssetsFullPath("enter_facebook_account.webp");
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          login_title,
          style: TextStyle(
            color: Colors.grey.shade600,
            fontSize: 28,
            fontWeight: FontWeight.bold,
          ),
        ),
        leading: IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_back_ios_outlined),
          color: Colors.orange,
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Center(
            child: Container(
              margin: EdgeInsetsCustom().marginVertical,
              height: 100,
              width: 100,
              decoration: BoxDecoration(
                color: Colors.amber[100],
                borderRadius: BorderRadius.circular(75),
              ),
              child: Image.asset(
                loginImgPath,
              ),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomAccountButton(
                imgPath: googleImgPath,
                backGroundColor: Colors.red.shade400,
              ),
              CustomAccountButton(
                imgPath: facebookImgPath,
                backGroundColor: Colors.blue.shade400,
              ),
            ],
          ),
          Padding(
            padding: EdgeInsetsCustom().paddingTopAndBottom,
            child: Text(
              "OR",
              style: TextStyle(color: Colors.grey.shade600),
            ),
          ),
          const CustomLoginTextField(
            icon: Icons.email_outlined,
            labelText: "Email",
            isHide: false,
            autofillHints: AutofillHints.email,
            textInputType: TextInputType.emailAddress,
          ),
          const SizedBox(height: 25),
          const CustomLoginTextField(
            icon: Icons.lock,
            labelText: "Password",
            isHide: true,
            autofillHints: AutofillHints.password,
            textInputType: TextInputType.visiblePassword,
          ),
          Container(
            alignment: Alignment.bottomRight,
            child: TextButton(
              onPressed: () {},
              child: Text(
                forgotPass,
                style: TextStyle(
                  color: Colors.grey.shade600,
                  textBaseline: TextBaseline.alphabetic,
                ),
              ),
            ),
          ),
          Container(
            width: 250,
            child: ElevatedButton(
              onPressed: () {},
              style: ButtonStyle(
                backgroundColor:
                    MaterialStateColor.resolveWith((states) => Colors.orange),
              ),
              child: Text(login_title),
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                questionRegister,
                style: TextStyle(color: Colors.grey.shade600),
              ),
              TextButton(
                  onPressed: () {},
                  child: Text(createAcco,
                      style: const TextStyle(color: Colors.orange)))
            ],
          )
        ],
      ),
    );
  }
}

class CustomLoginTextField extends StatelessWidget {
  const CustomLoginTextField(
      {Key? key,
      required this.icon,
      required this.labelText,
      required this.isHide,
      required this.autofillHints,
      required this.textInputType})
      : super(key: key);
  final IconData icon;
  final String labelText;
  final bool isHide;
  final String autofillHints;
  final TextInputType textInputType;
  @override
  Widget build(BuildContext context) {
    return TextField(
      autocorrect: true,
      autofillHints: [autofillHints],
      autofocus: true,
      enabled: true,
      obscureText: isHide,
      decoration: InputDecoration(
        labelText: labelText,
        prefixIcon: Icon(
          icon,
          color: Colors.orange,
        ),
        border: const OutlineInputBorder(),
      ),
      keyboardType: textInputType,
    );
  }
}

class CustomAccountButton extends StatelessWidget {
  const CustomAccountButton({
    Key? key,
    required this.imgPath,
    required this.backGroundColor,
  }) : super(key: key);

  final String imgPath;
  final Color backGroundColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsCustom().marginHorizontal,
      child: Container(
        width: 75,
        height: 35,
        child: ElevatedButton(
          onPressed: () {},
          style: ButtonStyle(
            backgroundColor:
                MaterialStateColor.resolveWith((states) => backGroundColor),
          ),
          child: Image.asset(
            imgPath,
            color: Colors.white,
            width: 25,
            height: 25,
          ),
        ),
      ),
    );
  }
}

class EdgeInsetsCustom {
  final EdgeInsets marginVertical = const EdgeInsets.symmetric(vertical: 25);
  final EdgeInsets marginHorizontal =
      const EdgeInsets.symmetric(horizontal: 25);
  final EdgeInsets paddingTop = const EdgeInsets.only(top: 25);
  final EdgeInsets paddingTopAndBottom =
      const EdgeInsets.only(top: 25, bottom: 25);
}

String getImgAssetsFullPath(String imgName) {
  const String basePath = "assets/loginImg/";
  return basePath + imgName;
}
