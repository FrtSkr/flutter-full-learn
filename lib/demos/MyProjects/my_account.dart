import 'package:flutter/material.dart';
import 'package:flutter_full_learn/core/random_image.dart';

class MyAccount extends StatefulWidget {
  const MyAccount({Key? key}) : super(key: key);

  @override
  State<MyAccount> createState() => _MyAccountState();
}

class _MyAccountState extends State<MyAccount>
    with CustomEdgeInsentAccount, CustomColorsMyAccount {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomCardMyAccount(),
          CustomListTileMyAccount(
            imgPath: getFullImgPath("notifcation_img.webp"),
            titleName: "Notification",
          ),
          CustomListTileMyAccount(
            imgPath: getFullImgPath("school_graduate.png"),
            titleName: "School preferences",
          ),
          CustomListTileMyAccount(
            imgPath: getFullImgPath("contact_img.webp"),
            titleName: "Contact us",
          ),
          CustomListTileMyAccount(
            imgPath: getFullImgPath("question_mark_img.webp"),
            titleName: "About us",
          ),
          CustomListTileMyAccount(
            imgPath: getFullImgPath("logout_img.png"),
            titleName: "Log out",
          ),
        ],
      ),
    );
  }
}

class CustomListTileMyAccount extends StatelessWidget
    with CustomEdgeInsentAccount {
  CustomListTileMyAccount({
    Key? key,
    required this.titleName,
    required this.imgPath,
  }) : super(key: key);

  final String imgPath;
  final String titleName;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: CustomEdgeInsentAccount().marginTop,
      child: Container(
        padding: CustomEdgeInsentAccount().paddingHorizontal10,
        child: ListTile(
          leading: Image.asset(
            imgPath,
            width: 25,
            height: 25,
          ),
          title: Text(
            titleName,
            style: Theme.of(context).textTheme.subtitle1,
          ),
          onTap: () {},
        ),
      ),
    );
  }
}

class CustomCardMyAccount extends StatelessWidget
    with CustomEdgeInsentAccount, CustomColorsMyAccount {
  CustomCardMyAccount({
    Key? key,
  }) : super(key: key);

  final String networkImgUrl =
      "https://dl.memuplay.com/new_market/img/com.vicman.newprofilepic.icon.2022-06-07-21-33-07.png";
  final String myAccountTitle = "Katerina Podramov";
  final String myAccountEmail = "username@gmail.com";
  final String myAccountEdit = "Edit";
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 15,
      margin: CustomEdgeInsentAccount().marginAll10,
      child: Container(
        padding: EdgeInsets.zero,
        decoration: const BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(10)),
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            colors: [
              Color.fromARGB(255, 250, 104, 0),
              Color.fromARGB(255, 237, 206, 81),
            ],
          ),
        ),
        height: MediaQuery.of(context).size.height * 0.20,
        width: MediaQuery.of(context).size.width,
        child: Row(
          children: [
            Container(
              padding: CustomEdgeInsentAccount().paddingHorizontal10,
              alignment: Alignment.centerLeft,
              child: CircleAvatar(
                backgroundImage: NetworkImage(
                  networkImgUrl,
                ),
                radius: 45,
              ),
            ),
            Container(
              padding: CustomEdgeInsentAccount().paddingLeft,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    myAccountTitle,
                    style: Theme.of(context).textTheme.headline6?.copyWith(
                          color: CustomColorsMyAccount().colorWhite,
                          fontSize: 22,
                        ),
                  ),
                  Text(
                    myAccountEmail,
                    style: Theme.of(context).textTheme.subtitle1?.copyWith(
                          color: CustomColorsMyAccount().colorGreyShade300,
                          fontSize: 14,
                        ),
                  )
                ],
              ),
            ),
            Expanded(
              child: Container(
                padding: CustomEdgeInsentAccount().paddingRight,
                child: Text(
                  myAccountEdit,
                  textAlign: TextAlign.end,
                  style: Theme.of(context).textTheme.subtitle2?.copyWith(
                        color: CustomColorsMyAccount().colorWhite,
                        fontSize: 16,
                      ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class CustomEdgeInsentAccount {
  EdgeInsets marginAll10 = const EdgeInsets.all(10.0);
  EdgeInsets marginTop = const EdgeInsets.only(top: 5);
  EdgeInsets paddingHorizontal10 = const EdgeInsets.symmetric(horizontal: 10);
  EdgeInsets paddingHorizontal5 = const EdgeInsets.symmetric(horizontal: 5);
  EdgeInsets paddingRight = const EdgeInsets.only(right: 10);
  EdgeInsets paddingLeft = const EdgeInsets.only(left: 10);
}

class CustomColorsMyAccount {
  final Color colorWhite = Colors.white;
  final Color colorGreyShade300 = Colors.grey.shade300;
  final Color colorBlack45 = Colors.black45;
}

String getFullImgPath(String imgName) {
  return 'assets/myAccountImg/$imgName';
}
