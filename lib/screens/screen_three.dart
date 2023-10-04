import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenThree extends StatelessWidget {
   ScreenThree({Key? key}) : super(key: key);

  var arguments=Get.arguments as String;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Container(width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              'This is Argument Screen',
              style: TextStyle(color: Colors.white, fontSize: 20),
            ),
            Text('Arguments = $arguments',style: TextStyle(color: Colors.white,fontSize: 20),),


            ElevatedButton(
              onPressed: () {
                Get.close(1);
              },
              child: Text('Go Back'),
            )
          ],
        ),
      ),
    );
  }
}
