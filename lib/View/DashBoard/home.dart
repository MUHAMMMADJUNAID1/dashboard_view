import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Container(
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.fitHeight,
          image: AssetImage('assets/img/bg2.png'),
        ),
      ),
      child: Expanded(
        child: Scaffold(
          backgroundColor: Colors.transparent,
          body: SafeArea(
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
                            'Choix de la prestation',
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
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
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
                        height: 100.h,
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
                              left: 65,
                              bottom: 5,
                              child: Image.asset(
                                'assets/img/road.png',
                                width: 50.w,
                                height: 50.h,
                              ),
                            ),
                            Positioned(
                              left: 60,
                              right: 60,
                              bottom: 17,
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
                SizedBox(
                  
                  height: 240.h,                  width: 165.w,
                  child: GridView.builder(
                    shrinkWrap: true,
                    addAutomaticKeepAlives: true,
                    physics: const AlwaysScrollableScrollPhysics(),
                    gridDelegate:
                        const SliverGridDelegateWithMaxCrossAxisExtent(
                            maxCrossAxisExtent: 2),
                    itemBuilder: (context, index) => Container(
                      width: 165.w,
                      height: 240.h,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage('assets/img/bottomCard.png'),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 15.h,
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SvgPicture.asset(
                                  'assets/img/redheart.svg',
                                ),
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Stack(
                                  children: [
                                    Image.asset(
                                      'assets/img/g1.png',
                                      width: 92.w,
                                      height: 104.h,
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Text(
                                  'Senior & Junior',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  'Maquillage + coiffure ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.white,
                                  ),
                                ),
                                Text(
                                  '250,00 € ',
                                  style: TextStyle(
                                    fontSize: 13,
                                    fontWeight: FontWeight.w200,
                                    color: Colors.white,
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 8.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
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
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
