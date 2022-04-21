import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constant/color_setup.dart';

class Copyright extends StatelessWidget {
  const Copyright({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Image.asset(
            'assets/icons/copyright.png',
            width: 13,
            height: 13,
          ),
          SizedBox(width: 1.w),
          Text(
            'SILK. all right reserved.',
            style: TextStyle(
              fontSize: 12,
              color: textGrey2,
              fontFamily: 'Proxima Nova',
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
