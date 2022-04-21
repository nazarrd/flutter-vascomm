import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../constant/color_setup.dart';
import 'custom_button.dart';

class EndDrawer extends StatelessWidget {
  const EndDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 90.w,
      child: Drawer(
        child: Center(
          child: Padding(
            padding: const EdgeInsets.all(30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Spacer(),
                Row(
                  children: [
                    const CircleAvatar(
                      radius: 25,
                      child: Icon(Icons.person),
                    ),
                    SizedBox(width: 5.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text.rich(
                          const TextSpan(
                            text: 'Angga ',
                            children: [
                              TextSpan(
                                text: 'Praja',
                                style: TextStyle(
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ],
                          ),
                          style: TextStyle(
                            fontSize: 14,
                            color: textBlue,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Text(
                          'Membership BBLK',
                          style: TextStyle(
                            fontSize: 11,
                            color: textBlue.withOpacity(0.5),
                            fontFamily: 'Proxima Nova',
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                SizedBox(height: 3.h),
                SizedBox(
                  width: 50.w,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                      Get.toNamed('profile');
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Row(
                      children: [
                        Text(
                          'Profile Saya',
                          style: TextStyle(
                            fontSize: 12,
                            color: textGrey3,
                            fontFamily: 'Proxima Nova',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: textGrey3,
                          size: 13,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 1.5.h),
                SizedBox(
                  width: 50.w,
                  child: InkWell(
                    onTap: () {
                      Get.back();
                      Get.toNamed('profile');
                    },
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    child: Row(
                      children: [
                        Text(
                          'Pengaturan',
                          style: TextStyle(
                            fontSize: 12,
                            color: textGrey3,
                            fontFamily: 'Proxima Nova',
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                        const Spacer(),
                        Icon(
                          Icons.arrow_forward_ios,
                          color: textGrey3,
                          size: 13,
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 3.h),
                SizedBox(
                  width: 30.w,
                  child: CustomButton(
                    onPressed: () =>
                        Get.offNamedUntil('login', (route) => false),
                    hideArrow: true,
                    borderRadius: 20,
                    color: Colors.red[800],
                    text: 'Logout',
                  ),
                ),
                SizedBox(height: 5.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Ikuti kami di',
                      style: TextStyle(
                        fontSize: 16,
                        color: textBlue,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(width: 4.w),
                    Image.asset('assets/icons/facebook.png', height: 17),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15),
                      child: Image.asset(
                        'assets/icons/instagram.png',
                        height: 20,
                      ),
                    ),
                    Image.asset('assets/icons/twitter.png', height: 20),
                  ],
                ),
                const Spacer(),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text(
                      'FAQ',
                      style: TextStyle(
                        fontSize: 14,
                        color: textGrey2,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    Text(
                      'Terms and Conditions',
                      style: TextStyle(
                        fontSize: 14,
                        color: textGrey2,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 5.h),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
