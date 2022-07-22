import 'package:flutter/material.dart';

/*Padding,  */
class PaddingLearn extends StatelessWidget {
  const PaddingLearn({Key? key}) : super(key: key);
  final String text = "Ali Dayı";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: ProjectPadding.pagePaddingVertical,
        child: Column(
          children: [
            Padding(
              padding: ProjectPadding.pagePaddingHorizontal_10,
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingVertical +
                  ProjectPadding.pagePaddingHorizontal_20,
              child: Container(
                color: Colors.white,
                height: 100,
              ),
            ),
            Padding(
              padding: ProjectPadding.pagePaddingRightOnly +
                  ProjectPadding.pagePaddingVertical,
              child: Text(text),
            ),
          ],
        ),
      ),
    );
  }
}

class ProjectPadding {
  static const pagePaddingVertical = EdgeInsets.symmetric(vertical: 10);
  static const pagePaddingRightOnly = EdgeInsets.only(right: 20);
  static const pagePaddingHorizontal_20 = EdgeInsets.symmetric(horizontal: 20);
  static const pagePaddingHorizontal_10 = EdgeInsets.symmetric(horizontal: 10);
}
