import 'package:flutter/material.dart';

import '../constant/color_setup.dart';

class CustomButton extends StatelessWidget {
  final String text;
  final Function()? onPressed;
  final bool? hideArrow, suffixIcon;
  final double? borderRadius;
  final Color? color;
  const CustomButton({
    Key? key,
    required this.text,
    this.onPressed,
    this.hideArrow,
    this.borderRadius,
    this.color,
    this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: hideArrow ?? false ? 0 : 20),
      decoration: BoxDecoration(
        color: Colors.transparent,
        borderRadius: BorderRadius.circular(12),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 15,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          primary: color ?? textBlue,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius ?? 10),
          ),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: hideArrow ?? false ? 10 : 15),
          child: Row(
            children: [
              const Spacer(),
              Text(
                text,
                style: TextStyle(
                  fontSize: hideArrow ?? false ? 12 : 16,
                  fontFamily: 'Gilroy',
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(),
              hideArrow ?? false
                  ? const SizedBox()
                  : suffixIcon ?? false
                      ? const Icon(Icons.save)
                      : const Icon(Icons.arrow_forward),
            ],
          ),
        ),
      ),
    );
  }
}
