import 'package:flutter/material.dart';
import 'package:takumichat/views/home/home_view.dart';
import 'package:takumichat/views/home/settings_view.dart';
import '../../utils/textStyles.dart';

class NoticeView extends StatefulWidget {
  const NoticeView({super.key});

  @override
  State<NoticeView> createState() => _NoticeViewState();
}

class _NoticeViewState extends State<NoticeView> {
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
            Text("Takumi",
              style: textStyle(context: context, fontWeight: FontWeight.bold, size: 17,color: Colors.blue[900]!),
            ),
            Text("chat",
              style: textStyle(context: context, fontWeight: FontWeight.bold, size: 17,color: Colors.blue[500]!),
            )
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            SizedBox(height: 10,),
            GestureDetector(
              onTap: (){
                Navigator.of(context).push(
                    MaterialPageRoute(
                        builder: (_) => SettingsView()));
              },
              child: Container(
                height: 80,
                padding: EdgeInsets.symmetric(horizontal: 10),
                decoration: BoxDecoration(
                    color: Color(0xffffffff),
                    borderRadius: BorderRadius.circular(10),
                    boxShadow: [
                      BoxShadow(
                          color: Colors.grey,
                          spreadRadius: 0.5,
                          blurRadius: 0.5
                      )
                    ]
                ),
                child: Row(
                  children: [
                    Expanded(
                      child: Container(
                        height: 50,
                        child: Row(
                          children: [
                            Container(
                                height: 50,
                                width: 50,
                                child: Image.asset('lib/images/chat_light.png')),
                            SizedBox(width: 10,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text("Takumichat",
                                  style: textStyle(context: context, fontWeight: FontWeight.w900, size: 17,color: Colors.blue),
                                ),
                                SizedBox(height: 5,),
                                Text("CONVERSATIONS WITH  CARE",
                                  style: textStyle(context: context, fontWeight: FontWeight.w400, size: 17,color: Colors.blue),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                    Container(
                        height: 50,
                        child: Icon(Icons.settings,size: 40,)),
                  ],
                ),
              ),
            ),
            SizedBox(height: 30,),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Icon(Icons.keyboard_arrow_down),
                Text("favorites",
                  style: textStyle(context: context, fontWeight: FontWeight.bold, size: 17,color: Colors.black),
                )
              ],
            ),
            SizedBox(height: 10,),
            Expanded(child: SingleChildScrollView(
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.inbox),
                      title: Text("Inbox",
                      style: textStyle(context: context, fontWeight: FontWeight.w400, size: 17),
                      ),
                      trailing: Text("13",
                        style: textStyle(context: context, fontWeight: FontWeight.w400, size: 17,color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.send),
                      title: Text("Resolved",
                        style: textStyle(context: context, fontWeight: FontWeight.w400, size: 17),
                      ),
                      trailing: Text("24",
                        style: textStyle(context: context, fontWeight: FontWeight.w400, size: 17,color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.edit_calendar_sharp),
                      title: Text("Unresolved",
                        style: textStyle(context: context, fontWeight: FontWeight.w400, size: 17),
                      ),
                      trailing: Text("2",
                        style: textStyle(context: context, fontWeight: FontWeight.w400, size: 17,color: Colors.blue),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.indeterminate_check_box_rounded),
                      title: Text("Unresolved",
                        style: textStyle(context: context, fontWeight: FontWeight.w400, size: 17),
                      ),
                    ),
                  ),

                  SizedBox(height: 20,),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios_rounded),
                      title: Text("**jack@gmail.com",
                        style: textStyle(context: context, fontWeight: FontWeight.w400, size: 17),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.arrow_forward_ios_rounded),
                      title: Text("****@gmail.com",
                        style: textStyle(context: context, fontWeight: FontWeight.w400, size: 17),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(bottom: 5),
                    child: ListTile(
                      leading: Icon(Icons.person_add_alt_rounded, color: Colors.blue,),
                      title: Text("Add Account",
                        style: textStyle(context: context, fontWeight: FontWeight.w400, size: 17, color: Colors.blue),
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
        padding: EdgeInsets.symmetric(horizontal: 10,vertical: 10),
        child: Row(
          children: [
            Expanded(
              child: GestureDetector(
                onTap: (){
                  Navigator.of(context).pushReplacement(
                      MaterialPageRoute(
                          builder: (_) => HomeView()));
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.blue.withOpacity(0.3), // Faint color on the sides
                        Colors.blue, // Strong color in the middle
                        Colors.blue.withOpacity(0.3), // Faint color on the sides
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.home,color: Colors.white,size: 30,),
                      SizedBox(width: 10,),
                      Text(
                        'Home',
                        style: textStyle(context: context, fontWeight: FontWeight.bold, size: 22,color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(width: 5,),
            Container(
              width: 4,
              height: 70,
              color: Colors.grey[300],
            ),
            SizedBox(width: 5,),
            Expanded(
              child: GestureDetector(
                onTap: (){
                  // Navigator.of(context).pushReplacement(
                  //     MaterialPageRoute(
                  //         builder: (_) => NoticeView()));
                },
                child: Container(
                  height: 70,
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.centerLeft,
                      end: Alignment.centerRight,
                      colors: [
                        Colors.grey.withOpacity(0.3), // Faint color on the sides
                        Colors.grey, // Strong color in the middle
                        Colors.grey.withOpacity(0.3), // Faint color on the sides
                      ],
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.notification_important,color: Colors.white,size: 30,),
                      SizedBox(width: 10,),
                      Text(
                        'Notice',
                        style: textStyle(context: context, fontWeight: FontWeight.bold, size: 22,color: Colors.white),
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
