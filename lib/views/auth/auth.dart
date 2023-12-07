import 'package:flutter/material.dart';
import 'package:takumichat/views/auth/login.dart';
import 'package:takumichat/views/auth/register.dart';

import '../../utils/textStyles.dart';

class AuthView extends StatefulWidget {
  const AuthView({super.key});

  @override
  State<AuthView> createState() => _AuthViewState();
}

class _AuthViewState extends State<AuthView> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xffffffff),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              SizedBox(height: 40,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Welcome to Takumichat",
                    textAlign: TextAlign.center,
                    style: textStyle(context: context, fontWeight: FontWeight.bold, size: 18,color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 200,
                    child: Image.asset("lib/images/chat_light.png"),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "TakumiChat",
                    textAlign: TextAlign.center,
                    style: textStyle(context: context, fontWeight: FontWeight.bold, size: 18,color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "CONVERSATIONS WITH CARE",
                    textAlign: TextAlign.center,
                    style: textStyle(context: context, fontWeight: FontWeight.w400, size: 18,color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                        color: Colors.blue
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(15)
                            ),
                            child: Image.asset("lib/images/fb.png"),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 200,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Continue with facebook",
                              textAlign: TextAlign.center,
                              style: textStyle(context: context, fontWeight: FontWeight.w400, size: 18,color: Colors.white),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[200]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset("lib/images/ggle.png"),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 200,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Continue with google",
                              textAlign: TextAlign.center,
                              style: textStyle(context: context, fontWeight: FontWeight.w400, size: 18,color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                children: [
                  Expanded(
                    child: Container(
                      height: 50,
                      decoration: BoxDecoration(
                          color: Colors.grey[200]
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            height: 40,
                            width: 50,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10)
                            ),
                            child: Image.asset("lib/images/apple.png"),
                          ),
                          SizedBox(width: 10,),
                          Container(
                            width: 200,
                            alignment: Alignment.centerLeft,
                            child: Text(
                              "Continue with apple",
                              textAlign: TextAlign.center,
                              style: textStyle(context: context, fontWeight: FontWeight.w400, size: 18,color: Colors.black),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    child: Container(
                      height: 2,
                      decoration: BoxDecoration(
                        color: Colors.black
                      ),
                    ),
                  ),
                  Text(
                    "Or",
                    textAlign: TextAlign.center,
                    style: textStyle(context: context, fontWeight: FontWeight.w900, size: 18),
                  ),
                  Expanded(
                    child: Container(
                      height: 2,
                      decoration: BoxDecoration(
                          color: Colors.black
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: GestureDetector(
                      onTap: (){
                        Navigator.of(context).push(
                            MaterialPageRoute(builder: (_) => LoginView()));
                      },
                      child: Container(
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: Colors.blue
                        ),
                        child: Text(
                          "sign  in with password",
                          textAlign: TextAlign.center,
                          style: textStyle(context: context, fontWeight: FontWeight.w400, size: 18,color: Colors.white),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20,),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Don't have an account?",
                    textAlign: TextAlign.center,
                    style: textStyle(context: context, fontWeight: FontWeight.w400, size: 18,color: Colors.black),
                  ),
                  GestureDetector(
                    onTap: (){
                      Navigator.of(context).push(
                          MaterialPageRoute(builder: (_) => RegisterView()));
                    },
                    child: Text(
                      "Signup",
                      textAlign: TextAlign.center,
                      style: textStyle(context: context, fontWeight: FontWeight.w900, size: 20,color: Colors.blue),
                    ),
                  )
                ],
              ),
              SizedBox(height: 40,),
            ],
          ),
        ),
      ),
    );
  }
}
