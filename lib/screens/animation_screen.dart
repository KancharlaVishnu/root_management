import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../manager/route_management.dart';

class AnimationScreen extends StatelessWidget {
  const AnimationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.cyan,
      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 20),
              child: Text(
                'Animations',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: 30,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              width: double.infinity,
              height: 12,
            ),
            costumButton('DownToUp ', () {
              Get.toNamed(RouteManager.downToUpAnimationScreen,
                  arguments: "DownToUp ");
            }),
            costumButton('Circular reveal', () {
              Get.toNamed(RouteManager.circularAnimation,
                  arguments: "Circular reveal ");
            }),
            costumButton('fade', () {
              Get.toNamed(RouteManager.fadeAnimation,
                  arguments: "fade Animation ",);
            }),
            costumButton('fadeIn', () {
              Get.toNamed(RouteManager.fadeInAnimation,
                arguments: "fadeInAnimation ",);

            }),
            costumButton('leftToright', () {
              Get.toNamed(RouteManager.leftTorightAnimation,
                arguments: "leftTorightAnimation ",);

            }),
            costumButton('leftTorightWithFade', () {
              Get.toNamed(RouteManager.leftTorightWithFadeAnimation,
                arguments: "leftTorightWithFade ",);

            }),
            costumButton('rightToLeft', () {
              Get.toNamed(RouteManager.rightToLeftAnimation,
                arguments: "rightToLeft ",);

            }),
            costumButton('rightToLeftWithFade', () {
              Get.toNamed(RouteManager.rightToLeftWithFadeAnimation,
                arguments: "rightToLeftWithFade ",);

            }),
            costumButton('size', () {
              Get.toNamed(RouteManager.sizeAnimation,
                arguments: "size ",);

            }),
            costumButton('topLevel', () {
              Get.toNamed(RouteManager.topLevelAnimation,
                arguments: "topLevel ",);

            }),
            costumButton('upToDown', () {
              Get.toNamed(RouteManager.upToDownAnimation,
                arguments: "upToDown ",);

            }),
            costumButton('zoom', () {
              Get.toNamed(RouteManager.zoomAnimation,
                arguments: "zoom ",);

            }),


          ],
        ),
      ),
    );
  }

  costumButton(String buttonText, VoidCallback onPressed) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.only(left: 50, right: 50),
      child: ElevatedButton(
        onPressed: () {
          onPressed.call();

          // Add your button press logic here
        },
        child: Text(
          '$buttonText',
        ),
      ),
    );
  }
}
