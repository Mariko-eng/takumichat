import 'package:flutter/material.dart';
import 'package:takumichat/utils/textStyles.dart';
import 'package:takumichat/views/home/message_view.dart';
import 'package:takumichat/views/home/notice_view.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
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
              height: 10,
            ),
            Container(
              height: 80,
              padding: EdgeInsets.symmetric(horizontal: 10),
              decoration: BoxDecoration(
                  color: Color(0xffffffff),
                  borderRadius: BorderRadius.circular(10),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey, spreadRadius: 0.5, blurRadius: 0.5)
                  ]),
              child: Row(
                children: [
                  Container(
                      height: 50,
                      child: Icon(
                        Icons.menu,
                        size: 40,
                      )),
                  Expanded(
                      child: Container(
                          height: 50,
                          decoration: BoxDecoration(
                              color: Colors.grey[200],
                              borderRadius: BorderRadius.circular(5)),
                          child: TextField(
                            readOnly: true,
                            decoration:
                                InputDecoration(
                                  border: InputBorder.none,
                                    suffixIcon: Icon(Icons.search)),
                          ))),
                  Container(
                      height: 50,
                      width: 50,
                      child: Image.asset('lib/images/chat_light.png'))
                ],
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Text(
                  "Clients",
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
            Expanded(
                child: SingleChildScrollView(
              child: Column(
                children: [
                  GestureDetector(
                    onTap:(){
                      Navigator.of(context).push(
                        MaterialPageRoute(builder: (_) => MessageView())
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 5),
                      child: Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  CircleAvatar(
                                    radius: 30,
                                    backgroundImage: AssetImage(
                                        "lib/images/pp1.jpeg"), // Replace with your image asset
                                  ),
                                  SizedBox(
                                    width: 20,
                                  ),
                                  Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "Title",
                                        style: textStyle(
                                            context: context,
                                            fontWeight: FontWeight.bold,
                                            size: 17,
                                            color: Colors.black),
                                      ),
                                      Text(
                                        "7 minutes age",
                                        style: textStyle(
                                            context: context,
                                            fontWeight: FontWeight.w400,
                                            size: 17,
                                            color: Colors.black),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Container(
                                height: 50,
                                width: 50,
                                alignment: Alignment.center,
                                padding: EdgeInsets.all(10),
                                decoration: BoxDecoration(
                                    color: Colors.grey.withOpacity(0.1),
                                    borderRadius: BorderRadius.circular(25)),
                                child: Image.asset("lib/images/insta.png"),
                              ),
                            ],
                          ),
                          Divider(
                            color: Colors.black45,
                          )
                        ],
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "lib/images/pp2.jpeg"), // Replace with your image asset
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Chris Mwaka",
                                      style: textStyle(
                                          context: context,
                                          fontWeight: FontWeight.bold,
                                          size: 17,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "Online",
                                      style: textStyle(
                                          context: context,
                                          fontWeight: FontWeight.w400,
                                          size: 17,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Image.asset("lib/images/fb.png"),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black45,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "lib/images/pp3.jpeg"), // Replace with your image asset
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Peter Muk",
                                      style: textStyle(
                                          context: context,
                                          fontWeight: FontWeight.bold,
                                          size: 17,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "Message",
                                      style: textStyle(
                                          context: context,
                                          fontWeight: FontWeight.w400,
                                          size: 17,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Image.asset("lib/images/twr.png"),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black45,
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Row(
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "lib/images/pp1.jpeg"), // Replace with your image asset
                                ),
                                SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "Mzei Mariko",
                                      style: textStyle(
                                          context: context,
                                          fontWeight: FontWeight.bold,
                                          size: 17,
                                          color: Colors.black),
                                    ),
                                    Text(
                                      "Online",
                                      style: textStyle(
                                          context: context,
                                          fontWeight: FontWeight.w400,
                                          size: 17,
                                          color: Colors.black),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Container(
                              height: 50,
                              width: 50,
                              alignment: Alignment.center,
                              padding: EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(25)),
                              child: Image.asset("lib/images/ggle.png"),
                            ),
                          ],
                        ),
                        Divider(
                          color: Colors.black45,
                        )
                      ],
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
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(
                  //         builder: (_) => HomeView()));
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
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(builder: (_) => NoticeView()));
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
