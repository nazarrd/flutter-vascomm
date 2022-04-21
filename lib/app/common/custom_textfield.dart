import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constant/color_setup.dart';

class CustomTextField extends StatelessWidget {
  final String label;
  final String? subLabel, value, hint;
  final bool? isPassword;
  const CustomTextField({
    Key? key,
    required this.label,
    this.hint,
    this.subLabel,
    this.isPassword,
    this.value,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                label,
                style: TextStyle(
                  fontSize: 16,
                  color: textBlue,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
              subLabel == null
                  ? const SizedBox()
                  : Text(
                      '$subLabel',
                      style: TextStyle(
                        fontSize: 14,
                        color: textGrey,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
            ],
          ),
          SizedBox(height: 1.h),
          Container(
            height: 45,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 20,
                  offset: const Offset(0, 10),
                ),
              ],
            ),
            child: TextFormField(
              initialValue: value,
              style: TextStyle(
                fontSize: 12,
                color: textBlue,
                fontFamily: 'Proxima Nova',
                fontWeight: FontWeight.w600,
              ),
              decoration: InputDecoration(
                border: InputBorder.none,
                contentPadding: const EdgeInsets.fromLTRB(20, 14, 20, 10),
                hintText: hint,
                hintStyle: TextStyle(
                  fontSize: 12,
                  color: hintColor,
                  fontFamily: 'Proxima Nova',
                  fontWeight: FontWeight.w400,
                ),
                suffixIcon: isPassword ?? false
                    ? Transform.scale(
                        scale: 0.5,
                        child: Image.asset('assets/icons/eye.png'),
                      )
                    : const SizedBox(),
              ),
            ),
          ),
          SizedBox(height: 3.h),
        ],
      ),
    );
  }
}
