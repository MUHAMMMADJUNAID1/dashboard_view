// ignore: file_names
// ignore: file_names
// ignore: file_names
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class BottomContainer extends StatelessWidget {
  const BottomContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      height: 225.h,
      padding: const EdgeInsets.all(0),
      margin: const EdgeInsets.all(0),
      decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              'assets/img/bottomCard.png',
            ),
          ),
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(45),
            topRight: Radius.circular(24),
            bottomLeft: Radius.circular(28),
            bottomRight: Radius.circular(45),
          )),
      child: Padding(
        padding: const EdgeInsets.only(left: 10, right: 0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              height: 100.h,
              width: 165.w,
              child: Stack(
                children: [
                  Positioned(
                    top: 10,
                    left: 0,
                    child: Image.asset(
                      'assets/img/g1.png',
                      width: 120,
                      height: 90,
                    ),
                  ),
                  Positioned(
                    right: 13,
                    top: 5,
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
                    fontSize: 13.sp,
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
                Text('60min',
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
  }
}
