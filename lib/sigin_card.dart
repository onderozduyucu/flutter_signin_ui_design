import 'package:flutter/material.dart';
import 'package:flutter_signin_ui_design/custom_widgets.dart';

class SignInCard extends StatefulWidget {
  const SignInCard(
      {this.signInCardImage = '',
      this.signInCardText = 'Sign In with Google',
      Key? key})
      : super(key: key);

  final String signInCardImage;

  final String signInCardText;

  @override
  State<SignInCard> createState() {
    return _SignInCardState();
  }
}

class _SignInCardState extends State<SignInCard> {
  @override
  Widget build(BuildContext context) {
    var sHeight = MediaQuery.of(context).size.height;
    var sWidth = MediaQuery.of(context).size.width;
    return Container(
      decoration: BoxDecoration(
        color: const Color(0xffffffff),
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: const Color(0xff666c8e), width: 0.2),
      ),
      child: CFlex(
        direction: Axis.horizontal,
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CFlexSizedBox(
            width: null,
            height: sHeight * 0.06,
            flex: 1,
            child: Padding(
              padding: EdgeInsets.only(
                left: sWidth * 0.05,
                right: sWidth * 0.05,
                top: sHeight * 0.01,
                bottom: sHeight * 0.01,
              ),
              child: CFlex(
                direction: Axis.horizontal,
                spacing: 50,
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CFlexSizedBox(
                    width: null,
                    height: null,
                    child: Image(
                      image: NetworkImage(widget.signInCardImage),
                      fit: BoxFit.cover,
                    ),
                  ),
                  CFlexSizedBox(
                    flex: 1,
                    height: sHeight * 0.03,
                    child: CFlex(
                      direction: Axis.horizontal,
                      spacing: 50,
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        CFlexSizedBox(
                          width: null,
                          height: null,
                          child: Text(
                            widget.signInCardText,
                            style: const TextStyle(
                              color: Color(0xff666c8e),
                              fontSize: 16,
                              fontWeight: FontWeight.w600,
                              backgroundColor: null,
                              letterSpacing: null,
                            ),
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
