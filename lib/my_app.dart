import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_management/manager/route_management.dart';
import 'package:root_management/screens/animation_screen.dart';
import 'package:root_management/screens/index_screen.dart';
import 'package:root_management/screens/screen_four.dart';
import 'package:root_management/screens/screen_one.dart';
import 'package:root_management/screens/screen_three.dart';
import 'package:root_management/screens/screen_two.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      getPages: [
        GetPage(name: RouteManager.indexScreen, page: () => IndexScreen()),
        GetPage(name: RouteManager.screenOne, page: () => ScreenOne()),
        GetPage(name: RouteManager.screenTwo, page: () => ScreenTwo()),
        GetPage(name: RouteManager.screenThree, page: () => ScreenThree()),
        GetPage(name: RouteManager.screenFour, page: () => ScreenFour()),
        GetPage(
          name: RouteManager.animationScreen,
          page: () => AnimationScreen(),
        ),
        GetPage(
          name: RouteManager.downToUpAnimationScreen,
          page: () => ScreenThree(),
          transition: Transition.downToUp,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: RouteManager.circularAnimation,
          page: () => ScreenThree(),
          transition: Transition.circularReveal,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: RouteManager.fadeAnimation,
          page: () => ScreenThree(),
          transition: Transition.fade,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: RouteManager.fadeInAnimation,
          page: () => ScreenThree(),
          transition: Transition.fadeIn,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: RouteManager.leftTorightAnimation,
          page: () => ScreenThree(),
          transition: Transition.leftToRight,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: RouteManager.leftTorightWithFadeAnimation,
          page: () => ScreenThree(),
          transition: Transition.leftToRightWithFade,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: RouteManager.rightToLeftAnimation,
          page: () => ScreenThree(),
          transition: Transition.rightToLeft,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: RouteManager.rightToLeftWithFadeAnimation,
          page: () => ScreenThree(),
          transition: Transition.rightToLeftWithFade,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: RouteManager.sizeAnimation,
          page: () => ScreenThree(),
          transition: Transition.size,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: RouteManager.topLevelAnimation,
          page: () => ScreenThree(),
          transition: Transition.topLevel,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: RouteManager.upToDownAnimation,
          page: () => ScreenThree(),
          transition: Transition.upToDown,
          transitionDuration: Duration(milliseconds: 400),
        ),
        GetPage(
          name: RouteManager.zoomAnimation,
          page: () => ScreenThree(),
          transition: Transition.zoom,
          transitionDuration: Duration(milliseconds: 400),
        ),
      ],
      initialRoute: RouteManager.indexScreen,
      title: ' RouteManagement',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
    );
  }
}
