import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_full_learn/101/image_learn.dart';

class NoteDemos extends StatelessWidget {
  NoteDemos({Key? key}) : super(key: key);
  final projectPadding = ProjectPadding();
  final imageNames = ImageNames();
  final buttonTextData = ButtonTextData();
  final textItemsData = TextItemsData();
  final buttonHeights = ButtonHeights();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.dark,
      ),
      backgroundColor: Colors.blueGrey[50],
      body: Padding(
        padding: projectPadding.horizontalPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            SizedBox(
              height: 215,
              width: 215,
              child: PngImage(
                name: imageNames.twoBooksApple,
              ),
            ),
            Padding(
              padding: projectPadding.verticalPadding,
              child: TitleText(title: textItemsData.title),
            ),
            SubTitleText(subTitle: textItemsData.subTitle),
            const Spacer(),
            ElevatedButtonWidget(
                buttonHeight: buttonHeights.buttonNormalHeight,
                buttonTextData: buttonTextData.elevatedButtonData),
            TextButtonWidget(buttonTextData: buttonTextData.textButtonData),
            const SizedBox(height: 25),
          ],
        ),
      ),
    );
  }
}

class TextButtonWidget extends StatelessWidget {
  const TextButtonWidget({
    Key? key,
    required this.buttonTextData,
  }) : super(key: key);

  final String buttonTextData;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      child: Text(
        buttonTextData,
        style: TextStyle(color: Colors.blueGrey.shade400),
      ),
    );
  }
}

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget({
    Key? key,
    required this.buttonHeight,
    required this.buttonTextData,
  }) : super(key: key);

  final double buttonHeight;
  final String buttonTextData;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blueGrey),
      ),
      child: SizedBox(
        height: buttonHeight,
        child: Center(
          child: Text(buttonTextData,
              style: Theme.of(context).textTheme.headline5?.copyWith(
                    color: Colors.white,
                  )),
        ),
      ),
    );
  }
}

class SubTitleText extends StatelessWidget {
  const SubTitleText(
      {Key? key, required this.subTitle, this.textAlign = TextAlign.center})
      : super(key: key);

  final String subTitle;
  final TextAlign? textAlign;
  @override
  Widget build(BuildContext context) {
    return Text(
      subTitle,
      style: Theme.of(context).textTheme.subtitle1?.copyWith(
            color: Colors.blueGrey.shade300,
            fontSize: 18,
            fontWeight: FontWeight.w400,
          ),
      textAlign: textAlign,
    );
  }
}

class TitleText extends StatelessWidget {
  const TitleText({
    Key? key,
    required this.title,
  }) : super(key: key);

  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: Theme.of(context).textTheme.headline1?.copyWith(
            color: Colors.blueGrey,
            fontSize: 25,
            fontWeight: FontWeight.w500,
          ),
    );
  }
}

class ProjectPadding {
  final EdgeInsets horizontalPadding =
      const EdgeInsets.symmetric(horizontal: 20);
  final EdgeInsets verticalPadding = const EdgeInsets.symmetric(vertical: 15);
}

class ImageNames {
  final String appleBook = "apple-book";
  final String booksAndApple = "books-and-apple";
  final String twoBooksApple = "two-books-apple";
}

// class  extends StatelessWidget {
//   const PngImage({Key? key, required this.imgName}) : super(key: key);
//   final String imgName;

//   @override
//   Widget build(BuildContext context) {
//     return Image.asset(
//       fullImgPath,
//       fit: BoxFit.cover,
//     );
//   }

//   String get fullImgPath => "assest/png/$imgName.png";
// }

class TextItemsData {
  final String title = "Create Your First Note";
  final String subTitle =
      "Add a note about anything your thoughts on climate change, or your history essay and share it witht the world.";
}

class ButtonTextData {
  final String elevatedButtonData = "Create a Note";
  final String textButtonData = "Import Notes";
}

class ButtonHeights {
  final double buttonNormalHeight = 50;
}
