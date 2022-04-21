import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constant/color_setup.dart';

class MoreUpdate extends StatelessWidget {
  const MoreUpdate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: textBlue,
      margin: const EdgeInsets.only(top: 20),
      padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
      child: Row(
        children: [
          SizedBox(
            width: 50.w,
            child: const Text(
              'Ingin mendapat update dari kami ?',
              style: TextStyle(
                fontSize: 16,
                color: Colors.white,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          const Spacer(),
          SizedBox(
            width: 29.w,
            child: Row(
              children: const [
                Expanded(
                  child: Text(
                    'Dapatkan notifikasi',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.white,
                      fontFamily: 'Proxima Nova',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward,
                  color: Colors.white,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
