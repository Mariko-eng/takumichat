import 'package:flutter/material.dart';
import '../utils/textStyles.dart';

class WalkThroughSlide1View extends StatelessWidget {
  const WalkThroughSlide1View({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xffffffff),
      padding: EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(height: 20,),
          Container(
            height: 100,
            child: Image.asset("lib/images/chat_light.png"),
          ),
          SizedBox(height: 20,),
          Container(
            height: 200,
            child: Image.asset("lib/images/slide1.png"),
          ),
          SizedBox(height: 20,),
          Text(
            "Let's Start",
            textAlign: TextAlign.center,
            style: textStyle(context: context, fontWeight: FontWeight.bold, size: 22),
          ),
          Text(
            "Communicating Faster",
            textAlign: TextAlign.center,
            style: textStyle(context: context, fontWeight: FontWeight.bold, size: 22),
          ),
          SizedBox(height: 10,),
          Text(
            "To create a container in Flutter with a gradient that has a faint color on the sides and a stronger color in the middle, you can use the",
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 10,),
          Text(
            "To create a container in Flutter with a gradient that has a faint color on the sides and a stronger color in the middle, you can use the",
            textAlign: TextAlign.start,
          )
        ],
      ),
    );
  }
}
