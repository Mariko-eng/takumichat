import 'package:flutter/material.dart';
import 'package:takumichat/views/home/home_view.dart';
import 'package:takumichat/views/home/notice_view.dart';
import '../../utils/textStyles.dart';

class MessageView extends StatefulWidget {
  const MessageView({super.key});

  @override
  State<MessageView> createState() => _MessageViewState();
}

class _MessageViewState extends State<MessageView> {
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
            SizedBox(
              height: 20,
            ),
            Divider(
              color: Colors.grey,
            ),
            SizedBox(
              height: 20,
            ),
            Expanded(
              child: Stack(
                children: [
                  Container(
                      width: double.infinity,
                      child: SingleChildScrollView(
                          child: Column(
                        children: [
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "lib/images/chat_dark.png"), // Replace with your image asset
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Virtual Assistant",
                                            style: textStyle(context: context, fontWeight: FontWeight.w800,
                                                size: 18),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("34m",
                                            style: textStyle(context: context, fontWeight: FontWeight.w600,
                                                size: 15),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Text("This is a message. This is a message. This is a message. This is a message. This is a message.",
                                        style: textStyle(context: context, fontWeight: FontWeight.w400,
                                            size: 17),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("14m",
                                            style: textStyle(context: context, fontWeight: FontWeight.w600,
                                                size: 15),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("You",
                                            style: textStyle(context: context, fontWeight: FontWeight.w800,
                                                size: 18),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.blue.shade400,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Text("This is a message. This is a message. This is a message. This is a message. This is a message.",
                                          style: textStyle(context: context, fontWeight: FontWeight.w400,
                                              size: 17,color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "lib/images/pp1.jpeg"), // Replace with your image asset
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "lib/images/chat_dark.png"), // Replace with your image asset
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Virtual Assistant",
                                            style: textStyle(context: context, fontWeight: FontWeight.w800,
                                                size: 18),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("34m",
                                            style: textStyle(context: context, fontWeight: FontWeight.w600,
                                                size: 15),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Text("This is a message. This is a message. This is a message. This is a message. This is a message.",
                                          style: textStyle(context: context, fontWeight: FontWeight.w400,
                                              size: 17),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("14m",
                                            style: textStyle(context: context, fontWeight: FontWeight.w600,
                                                size: 15),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("You",
                                            style: textStyle(context: context, fontWeight: FontWeight.w800,
                                                size: 18),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.blue.shade400,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Text("This is a message. This is a message. This is a message. This is a message. This is a message.",
                                          style: textStyle(context: context, fontWeight: FontWeight.w400,
                                              size: 17,color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "lib/images/pp1.jpeg"), // Replace with your image asset
                                ),
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "lib/images/chat_dark.png"), // Replace with your image asset
                                ),
                                SizedBox(width: 10,),
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        children: [
                                          Text("Virtual Assistant",
                                            style: textStyle(context: context, fontWeight: FontWeight.w800,
                                                size: 18),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("34m",
                                            style: textStyle(context: context, fontWeight: FontWeight.w600,
                                                size: 15),
                                          )
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.grey.shade100,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Text("This is a message. This is a message. This is a message. This is a message. This is a message.",
                                          style: textStyle(context: context, fontWeight: FontWeight.w400,
                                              size: 17),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.only(bottom: 10),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Expanded(
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.end,
                                        children: [
                                          Text("14m",
                                            style: textStyle(context: context, fontWeight: FontWeight.w600,
                                                size: 15),
                                          ),
                                          SizedBox(width: 10,),
                                          Text("You",
                                            style: textStyle(context: context, fontWeight: FontWeight.w800,
                                                size: 18),
                                          ),
                                        ],
                                      ),
                                      SizedBox(height: 10,),
                                      Container(
                                        padding: EdgeInsets.all(10),
                                        decoration: BoxDecoration(
                                            color: Colors.blue.shade400,
                                            borderRadius: BorderRadius.circular(10)
                                        ),
                                        child: Text("This is a message. This is a message. This is a message. This is a message. This is a message.",
                                          style: textStyle(context: context, fontWeight: FontWeight.w400,
                                              size: 17,color: Colors.white),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(width: 10,),
                                CircleAvatar(
                                  radius: 30,
                                  backgroundImage: AssetImage(
                                      "lib/images/pp1.jpeg"), // Replace with your image asset
                                ),
                              ],
                            ),
                          ),
                        ],
                      ))),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Row(
                      children: [
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                                color: Colors.grey.shade100,
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: TextField(
                              decoration: InputDecoration(
                                  border: InputBorder.none,
                                hintText: "Ask Your Question Here",
                                  prefixIcon: Icon(Icons.speaker),
                                  suffixIcon: Icon(Icons.send,color: Colors.blue,)),
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            )
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
