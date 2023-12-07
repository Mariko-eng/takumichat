import 'package:flutter/material.dart';
import 'package:takumichat/walkthroughs/walkthrough_home_view.dart';

class IntroView extends StatefulWidget {
  const IntroView({super.key});

  @override
  State<IntroView> createState() => _IntroViewState();
}

class _IntroViewState extends State<IntroView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: Center(
        child: GestureDetector(
          onTap: () {
            Navigator.of(context).pushReplacement(
                MaterialPageRoute(builder: (_) => WalkThroughHomeView()));
          },
          child: Container(
            height: 200,
            padding: EdgeInsets.symmetric(horizontal: 20),
            child: Image.asset("lib/images/logo.png"),
          ),
        ),
      ),
    );
  }
}
