import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

import '../../../common/custom_appbar.dart';
import '../../../common/custom_button.dart';
import '../../../common/custom_textfield.dart';
import '../../../common/end_drawer.dart';
import '../../../common/mode_update.dart';
import '../../../constant/color_setup.dart';
import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(appBar: AppBar()),
      endDrawer: const EndDrawer(),
      body: Center(
        child: Column(
          children: [
            const _ToggleWidget(),
            const SizedBox(height: 10),
            Expanded(
              child: ScrollConfiguration(
                behavior: const ScrollBehavior().copyWith(overscroll: false),
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Container(
                      margin: const EdgeInsets.fromLTRB(30, 20, 30, 30),
                      padding: const EdgeInsets.only(bottom: 30),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.2),
                            spreadRadius: 1,
                            blurRadius: 20,
                            offset: const Offset(0, 10),
                          ),
                        ],
                      ),
                      child: Column(
                        children: [
                          Container(
                            margin: const EdgeInsets.only(bottom: 15),
                            decoration: BoxDecoration(
                              color: textBlue,
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: Column(
                              children: [
                                Padding(
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 50, 25, 20),
                                  child: Row(
                                    children: [
                                      const CircleAvatar(
                                        radius: 25,
                                        child: Icon(Icons.person),
                                      ),
                                      SizedBox(width: 5.w),
                                      Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          const Text.rich(
                                            TextSpan(
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
                                              color: Colors.white,
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
                                ),
                                Container(
                                  width: double.infinity,
                                  padding:
                                      const EdgeInsets.fromLTRB(25, 10, 25, 10),
                                  decoration: BoxDecoration(
                                    color: textGrey2.withOpacity(0.3),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Text(
                                    'Lengkapi profile anda untuk memaksimalkan penggunaan aplikasi',
                                    style: TextStyle(
                                      fontSize: 15,
                                      color: Colors.white,
                                      fontFamily: 'Proxima Nova',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            'Pilih data yang ingin ditampilkan',
                            style: TextStyle(
                              fontSize: 16,
                              color: textBlue,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          SizedBox(height: 2.h),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                            children: [
                              Material(
                                elevation: 15,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                color: tealColor,
                                child: InkWell(
                                  onTap: () {},
                                  highlightColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.person_pin_rounded,
                                      color: textBlue,
                                    ),
                                  ),
                                ),
                              ),
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'Data Diri',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: textGrey3,
                                      fontFamily: 'Gilroy',
                                      fontWeight: FontWeight.w600,
                                    ),
                                  ),
                                  Text(
                                    'Data diri anda sesuai KTP',
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: textGrey4,
                                      fontFamily: 'Proxima Nova',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ],
                              ),
                              Material(
                                elevation: 15,
                                shadowColor: Colors.black,
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25),
                                ),
                                color: textGrey.withOpacity(0.25),
                                child: InkWell(
                                  onTap: () {},
                                  highlightColor: Colors.transparent,
                                  splashColor: Colors.transparent,
                                  child: Padding(
                                    padding: const EdgeInsets.all(10),
                                    child: Icon(
                                      Icons.location_on_rounded,
                                      color: textGrey3,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          SizedBox(height: 3.h),
                          const CustomTextField(
                            label: 'Nama Depan',
                            value: 'John',
                          ),
                          const CustomTextField(
                            label: 'Nama Belakang',
                            value: 'Doe',
                          ),
                          const CustomTextField(
                            label: 'Nomor KTP',
                            hint: 'Masukkan nomor KTP anda',
                          ),
                          const CustomTextField(
                            label: 'Email',
                            hint: 'Masukkan email anda',
                          ),
                          const CustomTextField(
                            label: 'Nomor Telepon',
                            hint: 'Masukkan nomor telepon anda',
                          ),
                          const CustomTextField(
                            label: 'Nomor KTP',
                            hint: 'Masukkan nomor KTP anda',
                          ),
                          Padding(
                            padding: const EdgeInsets.fromLTRB(30, 5, 30, 30),
                            child: Row(
                              children: [
                                Image.asset('assets/icons/info.png', width: 20),
                                SizedBox(width: 3.w),
                                Expanded(
                                  child: Text(
                                    'Pastikan profile anda terisi dengan benar, data pribadi anda terjamin keamanannya',
                                    style: TextStyle(
                                      fontSize: 12,
                                      color: textGrey3,
                                      fontFamily: 'Proxima Nova',
                                      fontWeight: FontWeight.w400,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomButton(
                            text: 'Simpan Profile',
                            suffixIcon: true,
                            onPressed: () =>
                                Get.offNamedUntil('home', (route) => false),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(height: 5.h),
                    const MoreUpdate(),
                    SizedBox(height: 10.h),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class _ToggleWidget extends StatelessWidget {
  const _ToggleWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 1,
            blurRadius: 20,
            offset: const Offset(0, 10),
          ),
        ],
      ),
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            margin: const EdgeInsets.all(5),
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            decoration: BoxDecoration(
              color: tealColor,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Text(
              'Profile Saya',
              style: TextStyle(
                fontSize: 14,
                color: textBlue,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          Container(
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 8),
            child: Text(
              'Pengaturan',
              style: TextStyle(
                fontSize: 14,
                color: textBlue,
                fontFamily: 'Gilroy',
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
