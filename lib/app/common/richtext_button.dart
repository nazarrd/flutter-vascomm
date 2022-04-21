import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

import '../constant/color_setup.dart';

class RichTextButton extends StatelessWidget {
  final String text1, text2;
  final Function()? onTap;
  const RichTextButton(
      {Key? key, required this.text1, required this.text2, this.onTap})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.fromLTRB(20, 20, 20, 30),
        child: Text.rich(
          TextSpan(
            text: text1,
            children: [
              TextSpan(
                text: text2,
                recognizer: TapGestureRecognizer()..onTap = onTap,
                style: TextStyle(
                  color: textBlue,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
          style: TextStyle(
            fontSize: 14,
            color: textGrey2,
            fontFamily: 'Proxima Nova',
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }
}
