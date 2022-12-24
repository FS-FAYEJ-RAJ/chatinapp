import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controllar/splasscontrollar.dart';
class SplassScreen extends StatelessWidget {
  const SplassScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GetBuilder(
        init: SplasControllar(),
        builder: (_){
          return SafeArea(
              child: Container(
                decoration: BoxDecoration(
                    image:DecorationImage(image: AssetImage("asset/messenger-icon-png.png"),)
                ),
              ));
        },

      ),
    );
  }
}
