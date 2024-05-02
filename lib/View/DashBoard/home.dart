// ignore_for_file: unnecessary_import

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatefulWidget {
   const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  List gridImage = [
    'assets/img/g1.png',
    'assets/img/g2.png',
    'assets/img/g3.png',
    'assets/img/g2.png',
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/img/bg2.png'),
        ),
      ),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: SafeArea(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      Center(
                        child: SvgPicture.asset('assets/img/logo.svg'),
                      ),
                      SizedBox(
                        height: 15.h,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            'Choir de la prestation',
                            style: TextStyle(
                              fontSize: 20.sp,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          GestureDetector(
                            child: SvgPicture.asset('assets/img/searchbtn.svg'),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 20.h,
                      ),
                      Container(
                        height: 240.h,
                        width: media.width,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage('assets/img/topCard.png'),
                          ),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 15),
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Text(
                                'Maquillage coiffure mariée',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.sp,
                                  color: Colors.white,
                                ),
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.arrow_back_ios,
                                    color: Colors.white,
                                    size: 30.sp,
                                  ),
                                  Image.asset(
                                    'assets/img/Image.png',
                                    width: 180.w,
                                    height: 160.h,
                                  ),
                                  Icon(
                                    Icons.arrow_forward_ios,
                                    color: Colors.white,
                                    size: 30.sp,
                                  ),
                                ],
                              ),
                              Row(
                                children: [
                                  Image.asset(
                                    'assets/img/time.png',
                                    color: Colors.white,
                                    height: 20,
                                  ),
                                  const SizedBox(
                                    width: 5,
                                  ),
                                  const Text('60 min',
                                      style: TextStyle(
                                          fontSize: 13,
                                          fontWeight: FontWeight.w600,
                                          color: Colors.white))
                                ],
                              ),
                            ],
                          ),
                        ),
                      ),
                      SizedBox(
                        width: 330.w,
                        height: 110.h,
                        child: Stack(
                          alignment: Alignment.topLeft,
                          children: [
                            Positioned(
                              left: 0,
                              bottom: -1,
                              child: Image.asset(
                                'assets/img/Bicycle.png',
                                width: 50.w,
                                height: 50.h,
                              ),
                            ),
                            Positioned(
                              left: 68,
                              bottom: 15,
                              child: Image.asset(
                                'assets/img/road.png',
                                width: 50.w,
                                height: 50.h,
                              ),
                            ),
                            Positioned(
                              left: 60,
                              right: 60,
                              bottom: 25,
                              child: Image.asset(
                                'assets/img/road.png',
                                width: 50.w,
                                height: 50.h,
                              ),
                            ),
                            Positioned(
                              top: 15,
                              right: 65,
                              child: Image.asset(
                                'assets/img/Mountain.png',
                                width: 50.w,
                                height: 50.h,
                              ),
                            ),
                            Positioned(
                              right: 0,
                              top: 0,
                              child: Image.asset(
                                'assets/img/Accessory.png',
                                width: 50.w,
                                height: 50.h,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(height: 10.h,),

                GridView.builder(gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                  mainAxisSpacing: 10.0,
                                    // Spacing between rows
                              crossAxisSpacing: 0.0,
                ),
                            padding: const EdgeInsets.all(0),
                physics: const NeverScrollableScrollPhysics(),
                  itemCount: gridImage.length,
                  shrinkWrap: true,

                  itemBuilder: (context, index) {
                    return Container(
                  width: 200.w,
                  height: 240.h,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/img/bottomCard.png', ),

                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 40),
                    child:
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            SizedBox(
                              height: 90.h, width: 110.w,
                              child: Stack(
                                children: [
                                  Positioned(
                                    top: 10,
                                    left: 5,
                                    child: Image.asset(
                                      'assets/img/g1.png',
                                      width: 90,
                                      height: 90,
                                    ),
                                  ),
                                  Positioned(
                                    right: -2,
                                    top: 3,
                                    child: SvgPicture.asset(
                                      'assets/img/redheart.svg',
                                    ),
                                  ),

                                ],
                              ),
                            ),
                         Column(
                           crossAxisAlignment: CrossAxisAlignment.start,
                           children: [
                             Text(
                               'Senior & Junior',
                               style: TextStyle(
                                 fontSize: 13.sp,
                                 fontWeight: FontWeight.normal,
                                 color: Colors.white,
                               ),
                             ),
                             Text(
                               'Maquillage + coiffure',
                               style: TextStyle(
                                 fontSize: 10.sp,
                                 fontWeight: FontWeight.bold,
                                 color: Colors.white,
                               ),
                             ),
                             Text(
                               '250,00 €',
                               style: TextStyle(
                                 fontSize: 13.sp,
                                 fontWeight: FontWeight.w200,
                                 color: Colors.white,
                               ),
                             ),

                           ],
                         ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Image.asset(
                                  'assets/img/time.png',
                                  color: Colors.white,
                                  height: 20.h,
                                ),
                                SizedBox(
                                  width: 5.w,
                                ),
                                Text('60 min',
                                    style: TextStyle(
                                        fontSize: 13.sp,
                                        fontWeight: FontWeight.w600,
                                        color: Colors.white)),
                              ],
                            ),

                          ],
                        ),

                    ),
                  );
                  },
                ),


                ]
                    ),
),



    )
      )



    );
  }
}
