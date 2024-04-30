import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class DashBoardView extends StatefulWidget {
  DashBoardView({super.key});

  @override
  State<DashBoardView> createState() => _DashBoardViewState();
}

class _DashBoardViewState extends State<DashBoardView> {
  int _currentIndex = 0;

  final List<String> _imageList = [
    'assets/img/Image.png',
    'assets/img/Image.png',
    'assets/img/Image.png',
  ];

  @override
  Widget build(BuildContext context) {
    var media = MediaQuery.sizeOf(context);
    return Scaffold(
      body: Container(
        height: media.height,
        width: media.width,
        padding: const EdgeInsets.symmetric(horizontal: 20),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/img/modded.png'),
            fit: BoxFit.fill,
          ),
        ),
        child: Stack(
          children: [
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  height: 20.h,
                ),
                Center(child: SvgPicture.asset('assets/img/logo.svg')),
                SizedBox(
                  height: 20.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SvgPicture.asset('assets/img/leadbtn.svg'),
                    SizedBox(
                      width: 35.w,
                    ),
                    Text(
                      '     MAQUILLAGE  \nCOIFFURE MARIEE',
                      style: TextStyle(
                          fontSize: 20.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                SizedBox(
                  height: 5.h,
                ),
                CarouselSlider(
                  items: _imageList
                      .map(
                        (image) => Center(
                          child: Image.asset(
                            image,
                            width: media.width,
                          ),
                        ),
                      )
                      .toList(),
                  options: CarouselOptions(
                      height: 200.h,
                      onPageChanged: (index, reason) {
                        setState(() {
                          _currentIndex = index;
                        });
                      }),
                ),
                SizedBox(
                  height: 15.h,
                ),
                Center(
                  child: DotsIndicator(
                    mainAxisSize: MainAxisSize.min,
                    dotsCount: _imageList.length,
                    position: _currentIndex,
                    decorator: DotsDecorator(
                      spacing: const EdgeInsets.all(3),
                      activeSize: const Size(4, 4),
                      size: const Size(4, 4),
                      color: Colors.grey, // Inactive dot color
                      activeColor: Colors.white, // Active dot color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(5.0),
                      ),
                    ),
                  ),
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
                SizedBox(
                  height: 60.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Description',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Spécification',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15.sp,
                          fontWeight: FontWeight.normal,
                        ),
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 30.h,
                ),
                const Text(
                  'MAQUILLAGE + COIFFURE MARIEE',
                  style: TextStyle(
                    fontSize: 17,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 20.h,
                ),
                SizedBox(
                  width: 335.w,
                  height: 223.h,
                  child: Text(
                    overflow: TextOverflow.ellipsis,
                    "Elle adaptera la coiffure et le maquillage en fonction de \nvotre morphologie du visage et en respectant ce que vous\nlui demandez.\nLe tarif comprend un maquillage complet dont les faux \ncils qui seront adaptés à votre regard. Le déplacement en\nIDF est compris dans le tarif (sauf 95 et 77). Pour la coiffure,\nvous devez impérativement faire un brushing avant \nl’arrivée de la maquilleuse.\nLes bijoux de tête et les extensions sont à la charge\nmariée car cela dépend des cheveux de la mariée \nune coiffure « mariée » selon vos envies.\nElle adaptera la coiffure et le maquillage en fonction de ",
                    style: TextStyle(
                      fontSize: 12.sp,
                      color: Colors.white,
                    ),
                  ),
                ),
                SizedBox(
                  height: 32.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Text(
                      '600,00 €',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 24.sp,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {},
                      child: Text(
                        'Ajouter au panier',
                        style: TextStyle(
                          fontSize: 15.sp,
                          color: Colors.white,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
