import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:root_management/manager/route_management.dart';

class IndexScreen extends StatelessWidget {
  const IndexScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,

      body: SafeArea(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.only(left: 16, top: 20),
              child: Text('Route Management',
                style: TextStyle(color: Colors.white, fontSize: 20),),
            ),
            SizedBox(width: double.infinity,height: 12,),
            costumButton(
              'Basic Navigation',(){
                Get.toNamed(RouteManager.screenOne);
            }
            ),
            costumButton(
              'Navigation-Parameters',(){
                Get.toNamed(RouteManager.screenTwo);
            }
            ),
            costumButton(
                'Navigation-Arguments',(){
              Get.toNamed(RouteManager.screenThree,arguments: 'sample argument text');
            }
            ),
            costumButton(
                'Animated-Navigations',(){
                  Get.toNamed(RouteManager.animationScreen);

            }
            )


          ],
        ),
      ),
    );
  }

  costumButton(String buttonText, VoidCallback onPressed) {
    return Container(width: double.infinity,
      padding: EdgeInsets.only(left: 50, right: 50),
      child: ElevatedButton(
        onPressed: () {
          onPressed.call();

          // Add your button press logic here
        },
        child: Text('$buttonText',),
      ),
    );
  }

}
