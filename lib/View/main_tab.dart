import 'dart:collection';

import 'package:dashboard_app/Utils/tabButton.dart';
import 'package:dashboard_app/View/Cart/cartView.dart';
import 'package:dashboard_app/View/DashBoard/home.dart';
import 'package:dashboard_app/View/doc/docView.dart';
import 'package:dashboard_app/View/profile/profileView.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'map/mapView.dart';

class MainTab extends StatefulWidget {
  const MainTab({super.key});

  @override
  State<MainTab> createState() => _MainTabState();
}

class _MainTabState extends State<MainTab> {
  int selectIndex = 0;
  PageStorageBucket pageStorageBucket = PageStorageBucket();
  Widget currentTab = const HomeView();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageStorage(bucket: pageStorageBucket, child: currentTab),
      bottomNavigationBar: Container(
        height: 100.h,
        decoration: const BoxDecoration(
          color: Colors.transparent,
          image: DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/img/tabbar.png'),
          ),
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                TabButton(
                    icon: 'assets/img/home.png',
                    selectIcon: 'assets/img/homeactive.png',
                    onTap: () {
                      selectIndex = 0;
                      currentTab = const HomeView();
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isActive: selectIndex == 0),
                TabButton(
                    icon: 'assets/img/map.png',
                    selectIcon: 'assets/img/mapactive.png',
                    onTap: () {
                      selectIndex = 1;
                      currentTab = const MapsView();
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isActive: selectIndex == 1),
                TabButton(
                    icon: 'assets/img/cart.png',
                    selectIcon: 'assets/img/cartactive.png',
                    onTap: () {
                      selectIndex = 2;
                      currentTab = const CartView();
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isActive: selectIndex == 2),
                TabButton(
                    icon: 'assets/img/person.png',
                    selectIcon: 'assets/img/personactive.png',
                    onTap: () {
                      selectIndex = 3;
                      currentTab = const ProfileView();
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isActive: selectIndex == 3),
                TabButton(
                    icon: 'assets/img/text.png',
                    selectIcon: 'assets/img/textactive.png',
                    onTap: () {
                      selectIndex = 4;
                      currentTab = const DocView();
                      if (mounted) {
                        setState(() {});
                      }
                    },
                    isActive: selectIndex == 4),
              ],
            )
          ],
        ),
      ),
    );
  }
}
