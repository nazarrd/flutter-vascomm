import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:responsive_sizer/responsive_sizer.dart';
import '../../../common/custom_button.dart';

import '../../../common/custom_appbar.dart';
import '../../../common/end_drawer.dart';
import '../../../common/mode_update.dart';
import '../../../constant/color_setup.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: CustomAppBar(appBar: AppBar()),
        floatingActionButton: const _BuildFab(),
        endDrawer: const EndDrawer(),
        body: ScrollConfiguration(
          behavior: const ScrollBehavior().copyWith(overscroll: false),
          child: ListView(
            shrinkWrap: true,
            padding: const EdgeInsets.all(20),
            children: [
              const _CalendarCard(),
              const Padding(
                padding: EdgeInsets.symmetric(vertical: 25),
                child: _MedicineCard(),
              ),
              const _TrackCard(),
              const _ListViewFilter(),
              const _ListViewCard(),
              const _TipeLayanan(),
              const MoreUpdate(),
              SizedBox(height: 10.h),
            ],
          ),
        ),
      ),
    );
  }
}

class _TipeLayanan extends StatelessWidget {
  const _TipeLayanan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 3.h),
        Text(
          'Pilih Tipe Layanan Kesehatan Anda',
          style: TextStyle(
            fontSize: 16,
            color: textBlue,
            fontFamily: 'Gilroy',
            fontWeight: FontWeight.w600,
          ),
        ),
        Container(
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
                  'Satuan',
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
                  'Paket Pemeriksaan',
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
        ),
        ListView.builder(
          itemCount: 2,
          shrinkWrap: true,
          padding: const EdgeInsets.only(top: 20),
          physics: const NeverScrollableScrollPhysics(),
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: Card(
                margin: EdgeInsets.zero,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'PCR Swab Test (Drive Thru) Hasil 1 Hari Kerja',
                              style: TextStyle(
                                fontSize: 16,
                                color: textBlue,
                                fontFamily: 'Gilroy',
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 16),
                              child: Text(
                                'Rp. 1.400.000',
                                style: TextStyle(
                                  fontSize: 14,
                                  color: orangeColor,
                                  fontFamily: 'Proxima Nova',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/hospital.png',
                                  width: 3.w,
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  'Lenmarc Surabaya',
                                  style: TextStyle(
                                    fontSize: 14,
                                    color: textGrey3,
                                    fontFamily: 'Proxima Nova',
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 0.25.h),
                            Row(
                              children: [
                                Image.asset(
                                  'assets/icons/location.png',
                                  width: 3.w,
                                ),
                                SizedBox(width: 2.w),
                                Text(
                                  'Dukuh Pakis, Surabaya',
                                  style: TextStyle(
                                    fontSize: 12,
                                    color: textGrey2,
                                    fontFamily: 'Proxima Nova',
                                    fontWeight: FontWeight.w400,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(20),
                      child: Image.asset(
                        'assets/images/hospital${index + 1}.png',
                        width: 28.8.w,
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/icons/loading.png',
              width: 4.w,
            ),
            SizedBox(width: 2.w),
            Text(
              'Tampilkan Lebih Banyak',
              style: TextStyle(
                fontSize: 14,
                color: textGrey2,
                fontFamily: 'Proxima Nova',
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ],
    );
  }
}

class _ListViewCard extends StatelessWidget {
  const _ListViewCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 20.h,
      child: ListView.builder(
        itemCount: 2,
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: EdgeInsets.only(right: index == 0 ? 10 : 0),
            child: Card(
              elevation: 5,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
              child: SizedBox(
                width: 41.w,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(16, 10, 16, 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        alignment: Alignment.topRight,
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(top: 10),
                            child: Center(
                              child: Image.asset(
                                'assets/images/microscope.png',
                                height: 9.5.h,
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: [
                              const Icon(
                                Icons.star,
                                color: Colors.yellow,
                                size: 18,
                              ),
                              SizedBox(width: 1.w),
                              Text(
                                '5',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: textGrey2,
                                  fontFamily: 'Proxima Nova',
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        'Suntik Steril',
                        style: TextStyle(
                          fontSize: 14,
                          color: textBlue,
                          fontFamily: 'Proxima Nova',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Rp. 10.000',
                            style: TextStyle(
                              fontSize: 12,
                              color: orangeColor,
                              fontFamily: 'Proxima Nova',
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.fromLTRB(5, 2.5, 5, 2.5),
                            decoration: BoxDecoration(
                              color: limeColor,
                              borderRadius: BorderRadius.circular(3),
                            ),
                            child: Text(
                              'Ready Stok',
                              style: TextStyle(
                                fontSize: 10,
                                color: greenColor,
                                fontFamily: 'Proxima Nova',
                                fontWeight: FontWeight.w400,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}

class _ListViewFilter extends StatelessWidget {
  const _ListViewFilter({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final listData = [
      'Semua Produk',
      'Layanan Kesehatan',
      'Alat Kesehatan',
      'Petugas Medis',
    ];
    return SizedBox(
      height: 9.h,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: listData.length,
        padding: const EdgeInsets.only(top: 25),
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          final item = listData[index];
          return Container(
            margin: EdgeInsets.only(
              right: index + 1 == listData.length ? 0 : 20,
              bottom: 15,
            ),
            padding: const EdgeInsets.fromLTRB(16, 8, 16, 10),
            decoration: BoxDecoration(
              color: index == 0 ? textBlue : Colors.white,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  spreadRadius: 1,
                  blurRadius: 5,
                  offset: const Offset(0, 5),
                ),
              ],
            ),
            child: Text(
              item,
              style: TextStyle(
                fontSize: 12,
                color: index == 0 ? Colors.white : textBlue,
                fontFamily: 'Proxima Nova',
                fontWeight: FontWeight.w700,
              ),
            ),
          );
        },
      ),
    );
  }
}

class _BuildFab extends StatelessWidget {
  const _BuildFab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 35),
      child: Row(
        children: [
          Material(
            elevation: 15,
            shadowColor: Colors.black,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(25),
            ),
            color: Colors.white,
            child: InkWell(
              onTap: () {},
              highlightColor: Colors.transparent,
              splashColor: Colors.transparent,
              child: Padding(
                padding: const EdgeInsets.all(15),
                child: Image.asset('assets/icons/filter.png', height: 20),
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 45,
              margin: const EdgeInsets.only(left: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.5),
                    spreadRadius: 1,
                    blurRadius: 20,
                    offset: const Offset(0, 10),
                  ),
                ],
              ),
              child: TextFormField(
                decoration: InputDecoration(
                  border: InputBorder.none,
                  contentPadding: const EdgeInsets.fromLTRB(20, 11, 20, 10),
                  hintText: 'Search',
                  hintStyle: TextStyle(
                    fontSize: 16,
                    color: textGrey2,
                    fontFamily: 'Proxima Nova',
                    fontWeight: FontWeight.w400,
                  ),
                  suffixIcon: Icon(
                    Icons.search,
                    color: textGrey2,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _CalendarCard extends StatelessWidget {
  const _CalendarCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 15,
          shadowColor: Colors.blue[800]!.withOpacity(0.7),
          margin: const EdgeInsets.only(top: 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/shadow.png',
                    height: 17.5.h,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text.rich(
                      TextSpan(
                        text: 'Solusi, ',
                        children: [
                          TextSpan(
                            text: 'Kesehatan Anda',
                            style: TextStyle(
                              fontSize: 18,
                              color: textBlue,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ],
                      ),
                      style: TextStyle(
                        fontSize: 18,
                        color: textBlue,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      'Update informasi seputar kesehatan\nsemua bisa disini !',
                      style: TextStyle(
                        fontSize: 12,
                        color: textGrey,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    Container(
                      width: 30.w,
                      padding: const EdgeInsets.only(top: 10),
                      child: CustomButton(
                        hideArrow: true,
                        onPressed: () {},
                        text: 'Selengkapnya',
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.only(right: 10),
                child: Image.asset(
                  'assets/images/calendar.png',
                  height: 17.h,
                ),
              ),
              SizedBox(height: 2.h),
              Image.asset('assets/images/indicator.png', height: 1.h),
            ],
          ),
        ),
      ],
    );
  }
}

class _MedicineCard extends StatelessWidget {
  const _MedicineCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 15,
          shadowColor: Colors.grey.withOpacity(0.2),
          margin: const EdgeInsets.only(top: 40),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Stack(
            children: [
              Align(
                alignment: Alignment.topRight,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(20),
                  child: Image.asset(
                    'assets/images/shadow.png',
                    height: 14.5.h,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 10,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Layanan Khusus',
                      style: TextStyle(
                        fontSize: 18,
                        color: textBlue,
                        fontFamily: 'Gilroy',
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(height: 1.h),
                    Text(
                      'Tes Covid 19, Cegah Corona\nSedini Mungkin',
                      style: TextStyle(
                        fontSize: 12,
                        color: textGrey,
                        fontFamily: 'Proxima Nova',
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    SizedBox(height: 2.h),
                    Row(
                      children: [
                        Text(
                          'Daftar Tes',
                          style: TextStyle(
                            fontSize: 14,
                            color: textBlue,
                            fontFamily: 'Gilroy',
                            fontWeight: FontWeight.w700,
                          ),
                        ),
                        Icon(Icons.arrow_forward, color: textBlue, size: 18),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Align(
          alignment: Alignment.topRight,
          child: Padding(
            padding: const EdgeInsets.only(right: 13),
            child: Image.asset(
              'assets/images/medicine.png',
              height: 15.h,
            ),
          ),
        ),
      ],
    );
  }
}

class _TrackCard extends StatelessWidget {
  const _TrackCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Card(
          elevation: 15,
          shadowColor: Colors.grey.withOpacity(0.2),
          margin: const EdgeInsets.only(top: 30),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
              vertical: 10,
            ),
            child: Row(
              children: [
                SizedBox(width: 35.w),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Track Pemeriksaan',
                        style: TextStyle(
                          fontSize: 18,
                          color: textBlue,
                          fontFamily: 'Gilroy',
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      SizedBox(height: 1.h),
                      Text(
                        'Kamu dapat mengecek progress pemeriksaanmu disini',
                        style: TextStyle(
                          fontSize: 12,
                          color: textGrey,
                          fontFamily: 'Proxima Nova',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                      SizedBox(height: 1.5.h),
                      Row(
                        children: [
                          Text(
                            'Track',
                            style: TextStyle(
                              fontSize: 14,
                              color: textBlue,
                              fontFamily: 'Gilroy',
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                          Icon(Icons.arrow_forward, color: textBlue, size: 18),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Align(
          alignment: Alignment.topLeft,
          child: Padding(
            padding: const EdgeInsets.only(left: 16),
            child: Image.asset(
              'assets/images/search.png',
              height: 12.h,
            ),
          ),
        ),
      ],
    );
  }
}
