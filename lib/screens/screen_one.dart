import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ScreenOne extends StatelessWidget {
  const ScreenOne({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body:
      Container(width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('This is ScreenOne',style: TextStyle(color: Colors.white,fontSize: 30),),
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
