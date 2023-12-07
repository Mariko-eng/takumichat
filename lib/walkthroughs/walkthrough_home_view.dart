import 'package:flutter/material.dart';
import 'package:takumichat/views/auth/auth.dart';
import 'package:takumichat/walkthroughs/walkthrough_slide1_view.dart';
import 'package:takumichat/walkthroughs/walkthrough_slide2_view.dart';
import 'package:takumichat/walkthroughs/walkthrough_slide3_view.dart';
import '../utils/textStyles.dart';

class WalkThroughHomeView extends StatefulWidget {
  const WalkThroughHomeView({super.key});

  @override
  State<WalkThroughHomeView> createState() => _WalkThroughHomeViewState();
}

class _WalkThroughHomeViewState extends State<WalkThroughHomeView> {
  final PageController _pageController = PageController(initialPage: 0);
  final Duration duration = Duration(milliseconds: 300);
  final Curve curve = Curves.easeInOut;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: PageView(
              controller: _pageController,
              children: [
                WalkThroughSlide1View(),
                WalkThroughSlide2View(),
                WalkThroughSlide3View(),
              ],
            ),
          ),
          Container(
            color: Color(0xffffffff),
            padding: EdgeInsets.symmetric(horizontal: 40),
            height: 150,
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      height: 5,
                      width: 30,
                      color: Colors.blue
                    ),
                    SizedBox(width: 10,),
                    Container(
                        height: 5,
                        width: 30,
                        color: Colors.blue
                    ),
                    SizedBox(width: 10,),
                    Container(
                        height: 5,
                        width: 30,
                        color: Colors.blue
                    ),
                  ],
                ),
                SizedBox(height: 50,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    GestureDetector(
                      onTap: (){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => AuthView()));
                      },
                      child: Text(
                        "Skip",
                        textAlign: TextAlign.center,
                        style: textStyle(context: context, fontWeight: FontWeight.bold, size: 18),
                      ),
                    ),
                    GestureDetector(
                    onTap: (){
                      if (_pageController.page?.toInt()  == 2){
                        Navigator.of(context).pushReplacement(
                            MaterialPageRoute(builder: (_) => AuthView()));
                      }else{
                        int page = _pageController.page!.toInt() + 1;
                        _pageController.animateToPage(page, duration: duration, curve: curve);
                      }
                    },
                      child: Text(
                        "Next",
                        textAlign: TextAlign.center,
                        style: textStyle(context: context, fontWeight: FontWeight.bold, size: 18),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
