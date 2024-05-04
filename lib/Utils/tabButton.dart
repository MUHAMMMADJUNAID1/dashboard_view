import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabButton extends StatelessWidget {
  const TabButton(
      {super.key,
      required this.icon,
      required this.selectIcon,
      required this.onTap,
      required this.isActive});

  final String icon;
  final String selectIcon;
  final VoidCallback onTap;
  final bool isActive;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: onTap,
        child: isActive
            ? Image.asset(selectIcon)
            // ? Container(
            //     width: 100.w,
            //     height: 100.h,
            //     alignment: Alignment.topCenter,
            //     decoration: const BoxDecoration(
            //       image: DecorationImage(
            //         fit: BoxFit.fill,
            //         image: AssetImage('assets/img/selectpage.png'),
            //       ),
            //     ),
            //     child: Stack(
            //       alignment: Alignment.center,
            //       children: [
            //         Positioned(
            //           top: 20,
            //           right: 42,
            //           child: Image.asset(selectIcon),
            //         ),
            //       ],
            //     ),
            //   )
            : Image.asset(
                icon,
                width: 25,
                height: 25,
              ));
  }
}
