import 'package:flutter/material.dart';
import 'package:takumichat/utils/textStyles.dart';
import 'package:takumichat/views/home/home_view.dart';
import 'package:takumichat/views/home/notice_view.dart';

class SettingsView extends StatefulWidget {
  const SettingsView({super.key});

  @override
  State<SettingsView> createState() => _SettingsViewState();
}

class _SettingsViewState extends State<SettingsView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Color(0xffffffff),
        leadingWidth: 10,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              "Takumi",
              style: textStyle(
                  context: context,
                  fontWeight: FontWeight.bold,
                  size: 17,
                  color: Colors.blue[900]!),
            ),
            Text(
              "chat",
              style: textStyle(
                  context: context,
                  fontWeight: FontWeight.bold,
                  size: 17,
                  color: Colors.blue[500]!),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.keyboard_arrow_down),
                Text(
                  "settings",
                  style: textStyle(
                      context: context,
                      fontWeight: FontWeight.bold,
                      size: 17,
                      color: Colors.black),
                )
              ],
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10, vertical: 20),
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        spreadRadius: 0.5, blurRadius: 0.5, color: Colors.grey)
                  ]),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                          height: 50,
                          width: 50,
                          child: Image.asset('lib/images/chat_light.png')),
                      Text("(Mimi)")
                    ],
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: Icon(Icons.circle),
                    title: Text(
                      "Language",
                      style: textStyle(
                          context: context,
                          fontWeight: FontWeight.w400,
                          size: 17),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                  Divider(
                    color: Colors.black,
                  ),
                  ListTile(
                    leading: Icon(Icons.build_circle),
                    title: Text(
                      "Theme Play",
                      style: textStyle(
                          context: context,
                          fontWeight: FontWeight.w400,
                          size: 17),
                    ),
                    trailing: Icon(Icons.arrow_forward_ios_rounded),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.privacy_tip),
                      title: Text(
                        "Privacy Policy",
                        style: textStyle(
                            context: context,
                            fontWeight: FontWeight.w400,
                            size: 17),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.edit),
                      title: Text(
                        "Terms Of Service",
                        style: textStyle(
                            context: context,
                            fontWeight: FontWeight.w400,
                            size: 17),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.message),
                      title: Text(
                        "Feedback",
                        style: textStyle(
                            context: context,
                            fontWeight: FontWeight.w400,
                            size: 17),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.arrow_circle_right_rounded),
                      title: Text(
                        "Share",
                        style: textStyle(
                            context: context,
                            fontWeight: FontWeight.w400,
                            size: 17),
                      ),
                    ),
                  ),
                ],
              ),
            ))
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 70,
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => HomeView()),
                      (route) => false);
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.blue.withOpacity(0.3),
                        // Faint color on the sides
                        Colors.blue,
                        // Strong color in the middle
                        Colors.blue.withOpacity(0.3),
                        // Faint color on the sides
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.home,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Home',
                        style: textStyle(
                            context: context,
                            fontWeight: FontWeight.bold,
                            size: 22,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(
              width: 5,
            ),
            Container(
              width: 4,
              height: 70,
              color: Colors.grey[300],
            ),
            SizedBox(
              width: 5,
            ),
            Expanded(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (_) => NoticeView()),
                      (route) => false);
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.grey.withOpacity(0.3),
                        // Faint color on the sides
                        Colors.grey,
                        // Strong color in the middle
                        Colors.grey.withOpacity(0.3),
                        // Faint color on the sides
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.notification_important,
                        color: Colors.white,
                        size: 30,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Notice',
                        style: textStyle(
                            context: context,
                            fontWeight: FontWeight.bold,
                            size: 22,
                            color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
