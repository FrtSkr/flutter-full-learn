import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import '../../demos/MyProjects/login_screen.dart';
import '../package_learn_view.dart';

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
        onPressed: () {
          setState(() {
            isLoading = true;
          });
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: const SpinKitFadingCube(
        color: Colors.red,
        size: 50.0,
        //  controller: AnimationController(
        //     vsync: this, duration: const Duration(milliseconds: 1200)),
      ),
    );
  }
}
