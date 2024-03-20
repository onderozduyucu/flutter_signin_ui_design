import 'package:flutter/material.dart';
import 'package:flutter_signin_ui_design/custom_widgets.dart';
import 'package:flutter_signin_ui_design/sigin_card.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() {
    return _SignInState();
  }
}

class _SignInState extends State<SignIn> {
  TextEditingController text1 = TextEditingController();

  TextEditingController text = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.only(
            left: sWidth * 0.05,
            right: sWidth * 0.05,
            top: sHeight * 0.02,
            bottom: sHeight * 0.02,
          ),
          child: CFlex(
            direction: Axis.vertical,
            spacing: 0,
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CFlexSizedBox(
                width: double.infinity,
                flex: 1,
                child: CFlex(
                  direction: Axis.vertical,
                  spacing: 10,
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const CFlexSizedBox(
                      width: double.infinity,
                      child: CFlex(
                        direction: Axis.vertical,
                        spacing: 10,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CFlexSizedBox(
                            width: double.infinity,
                            height: null,
                            child: Text(
                              'Welcome Back👋',
                              style: TextStyle(
                                  fontSize: 24, color: Color(0xff333647)),
                            ),
                          ),
                          CFlexSizedBox(
                            width: double.infinity,
                            height: null,
                            child: Text(
                              'I am happy to see you again. You can continue where you left off by logging in',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff7c82a1)),
                            ),
                          )
                        ],
                      ),
                    ),
                    CFlexSizedBox(
                      width: double.infinity,
                      child: CFlex(
                        direction: Axis.vertical,
                        spacing: 15,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          CFlexSizedBox(
                            width: double.infinity,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: const Color(0xfff3f4f6),
                                hintText: 'Email Adress',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                filled: true,
                                hintStyle: const TextStyle(
                                  fontSize: 16,
                                  color: Color(0xff7c82a1),
                                  shadows: null,
                                ),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: sWidth * 0.04,
                                    right: sWidth * 0.04,
                                    top: 0,
                                    bottom: 0,
                                  ),
                                  child: const Icon(
                                    IconData(61464,
                                        fontFamily: 'MaterialIcons'),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              controller: text,
                            ),
                          ),
                          CFlexSizedBox(
                            width: double.infinity,
                            child: TextFormField(
                              decoration: InputDecoration(
                                fillColor: const Color(0xfff3f4f6),
                                hintText: 'Password',
                                border: OutlineInputBorder(
                                    borderRadius: BorderRadius.circular(20)),
                                filled: true,
                                hintStyle: const TextStyle(
                                    color: Color(0xff7c82a1), fontSize: 16),
                                prefixIcon: Padding(
                                  padding: EdgeInsets.only(
                                    left: sWidth * 0.04,
                                    right: sWidth * 0.04,
                                    top: 0,
                                    bottom: 0,
                                  ),
                                  child: const Icon(
                                    IconData(61847,
                                        fontFamily: 'MaterialIcons'),
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                              controller: text1,
                            ),
                          ),
                          const CFlexSizedBox(
                            width: double.infinity,
                            child: Align(
                              alignment: Alignment(0, 0),
                              child: Text(
                                'Forgot Password?',
                                style: TextStyle(
                                    fontSize: 16, color: Color(0xff7c82a1)),
                              ),
                            ),
                          ),
                          CFlexSizedBox(
                            width: double.infinity,
                            height: sHeight * 0.06,
                            child: const CButton(
                              onPressed: null,
                              color: Color(0xff475ad7),
                              onLongPress: null,
                              child: Text(
                                'Sign In',
                                style: TextStyle(
                                  color: Color(0xffffffff),
                                  fontSize: 16,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    const CFlexSizedBox(
                      width: double.infinity,
                      flex: 1,
                      child: CFlex(
                        direction: Axis.vertical,
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        spacing: 20,
                        children: [
                          CFlexSizedBox(
                            width: double.infinity,
                            flex: 1,
                            child: CFlex(
                              direction: Axis.vertical,
                              mainAxisSize: MainAxisSize.min,
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              spacing: 20,
                              children: [
                                CFlexSizedBox(
                                  width: null,
                                  height: null,
                                  child: Text(
                                    'or',
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600),
                                  ),
                                )
                              ],
                            ),
                          ),
                          CFlexSizedBox(
                            width: double.infinity,
                            child: SignInCard(
                              signInCardImage:
                                  'https://cdn1.iconfinder.com/data/icons/google-s-logo/150/Google_Icons-09-512.png',
                              signInCardText: 'Sign In with Facebook',
                            ),
                          ),
                          CFlexSizedBox(
                            width: double.infinity,
                            child: SignInCard(
                              signInCardImage:
                                  'https://cdn1.iconfinder.com/data/icons/logotypes/32/square-facebook-64.png',
                            ),
                          ),
                          CFlexSizedBox(
                            flex: 1,
                            child: Text(
                              'Don\'t have an account? Sign Up',
                              style: TextStyle(
                                  fontSize: 16, color: Color(0xff7c82a1)),
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
      ),
      appBar: AppBar(
        title: const Text(
          '',
          style: TextStyle(),
        ),
      ),
    );
  }
}
