import 'package:flutter/material.dart';
import 'package:flutter_full_learn/202/theme/light_theme.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../demos/MyProjects/login_screen.dart';
import '../package_learn_view.dart';
import '../password_text_field.dart';

class LoadingBar extends StatefulWidget {
  const LoadingBar({Key? key}) : super(key: key);

  @override
  State<LoadingBar> createState() => _LoadingBarState();
}

class _LoadingBarState extends State<LoadingBar> with TickerProviderStateMixin {
  bool isLoading = false;

  @override
  Widget build(BuildContext context) {
    if (isLoading) {
      return const LoginScreen();
    }
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Theme.of(context).buttonTheme.colorScheme?.onPrimary,
        onPressed: () {
          // setState(() {
          //   isLoading = true;
          // });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: const [
          SpinKitChasingDots(
            color: Colors.red,
            size: 50.0,
            //  controller: AnimationController(
            //     vsync: this, duration: const Duration(milliseconds: 1200)),
          ),
          PasswordTextField(),
        ],
      ),
    );
  }
}
