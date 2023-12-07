import 'package:flutter/material.dart';
import 'package:takumichat/views/auth/login.dart';

import '../../utils/textStyles.dart';

class RegisterView extends StatefulWidget {
  const RegisterView({super.key});

  @override
  State<RegisterView> createState() => _RegisterViewState();
}

class _RegisterViewState extends State<RegisterView> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "register your self",
                    textAlign: TextAlign.center,
                    style: textStyle(
                        context: context,
                        fontWeight: FontWeight.bold,
                        size: 18,
                        color: Colors.blue),
                  ),
                ],
              ),
              SizedBox(
                height: 50,
              ),
              Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        Column(
                          children: [
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Email Address",
                                  style: textStyle(
                                      context: context,
                                      fontWeight: FontWeight.bold,
                                      size: 18,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.grey.withOpacity(0.3),
                                          // Strong color in the middle
                                          Colors.grey.withOpacity(0.1),
                                          // Faint color on the sides
                                        ],
                                      ),
                                    ),
                                    child: TextField(),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Password",
                                  style: textStyle(
                                      context: context,
                                      fontWeight: FontWeight.bold,
                                      size: 18,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.grey.withOpacity(0.3),
                                          // Strong color in the middle
                                          Colors.grey.withOpacity(0.1),
                                          // Faint color on the sides
                                        ],
                                      ),
                                    ),
                                    child: TextField(
                                      obscureText: isObscure,
                                      decoration: InputDecoration(
                                          suffixIcon: isObscure
                                              ? GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  isObscure = false;
                                                });
                                              },
                                              child: Icon(
                                                  Icons.visibility_off_rounded))
                                              : GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  isObscure = true;
                                                });
                                              },
                                              child: Icon(Icons.visibility))),
                                    ),
                                  ),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 20,
                            ),
                            Row(
                              children: [
                                Text(
                                  "Repeat Password",
                                  style: textStyle(
                                      context: context,
                                      fontWeight: FontWeight.bold,
                                      size: 18,
                                      color: Colors.black),
                                )
                              ],
                            ),
                            SizedBox(
                              height: 5,
                            ),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    decoration: BoxDecoration(
                                      gradient: LinearGradient(
                                        begin: Alignment.centerLeft,
                                        end: Alignment.centerRight,
                                        colors: [
                                          Colors.grey.withOpacity(0.3),
                                          // Strong color in the middle
                                          Colors.grey.withOpacity(0.1),
                                          // Faint color on the sides
                                        ],
                                      ),
                                    ),
                                    child: TextField(
                                      obscureText: isObscure,
                                      decoration: InputDecoration(
                                          suffixIcon: isObscure
                                              ? GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  isObscure = false;
                                                });
                                              },
                                              child: Icon(
                                                  Icons.visibility_off_rounded))
                                              : GestureDetector(
                                              onTap: () {
                                                setState(() {
                                                  isObscure = true;
                                                });
                                              },
                                              child: Icon(Icons.visibility))),
                                    ),
                                  ),
                                )
                              ],
                            )
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Container(
                                height: 2,
                                decoration: BoxDecoration(color: Colors.black),
                              ),
                            ),
                            Text(
                              "Or",
                              textAlign: TextAlign.center,
                              style: textStyle(
                                  context: context,
                                  fontWeight: FontWeight.w900,
                                  size: 18),
                            ),
                            Expanded(
                              child: Container(
                                height: 2,
                                decoration: BoxDecoration(color: Colors.black),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(30)),
                              child: CircleAvatar(
                                radius: 20,
                                backgroundImage: AssetImage(
                                    "lib/images/ggle.png"), // Replace with your image asset
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(30)),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                    "lib/images/apple.png"), // Replace with your image asset
                              ),
                            ),
                            Container(
                              height: 80,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: Colors.grey.withOpacity(0.2),
                                  borderRadius: BorderRadius.circular(30)),
                              child: CircleAvatar(
                                radius: 40,
                                backgroundImage: AssetImage(
                                    "lib/images/fb.png"), // Replace with your image asset
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          children: [
                            Expanded(
                              child: Container(
                                height: 50,
                                decoration: BoxDecoration(
                                    color: Colors.blue,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Container(
                                      width: 200,
                                      alignment: Alignment.center,
                                      child: Text(
                                        "Sign up",
                                        textAlign: TextAlign.center,
                                        style: textStyle(
                                            context: context,
                                            fontWeight: FontWeight.w400,
                                            size: 18,
                                            color: Colors.white),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "Already have an account?",
                              textAlign: TextAlign.center,
                              style: textStyle(
                                  context: context,
                                  fontWeight: FontWeight.w400,
                                  size: 18,
                                  color: Colors.black),
                            ),
                            GestureDetector(
                              onTap: () {
                                Navigator.of(context).pushReplacement(
                                    MaterialPageRoute(
                                        builder: (_) => LoginView()));
                              },
                              child: Text(
                                "Sign in",
                                textAlign: TextAlign.center,
                                style: textStyle(
                                    context: context,
                                    fontWeight: FontWeight.w900,
                                    size: 20,
                                    color: Colors.blue),
                              ),
                            )
                          ],
                        ),
                        SizedBox(
                          height: 40,
                        ),
                      ],
                    ),
                  ))
            ],
          ),
        ),
      ),
    );
  }
}
