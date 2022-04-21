import 'package:flutter/material.dart';

import '../constant/color_setup.dart';

class WelcomeText extends StatelessWidget {
  final String text;
  const WelcomeText({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(20),
      child: Text.rich(
        TextSpan(
          text: 'Hai, ',
          children: [
            const TextSpan(
              text: 'Selamat Datang',
              style: TextStyle(fontWeight: FontWeight.w800),
            ),
            TextSpan(
              text: '\nSilahkan $text untuk melanjutkan',
              style: TextStyle(
                fontSize: 12,
                color: textGrey,
                fontFamily: 'Proxima Nova',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
        style: TextStyle(
          fontSize: 28,
          color: darkBlue,
          fontFamily: 'Gilroy',
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }
}
