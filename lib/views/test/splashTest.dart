import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getanywheels/consts/paths.dart';
import 'package:getanywheels/controllers/splash_controller.dart';

class TestSplashScreen extends StatelessWidget {
  TestSplashScreen({super.key});

  final splashController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    splashController.startAnimation();

    return Scaffold(
        backgroundColor: myWhite,
        body: Stack(
          children: [
            //arrow...
            Obx(
              () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  top: splashController.animate.value ? 0 : -180,
                  left: splashController.animate.value ? 0 : -180,
                  child: Align(
                      alignment: Alignment.topLeft,
                      child: Image.asset(
                        icSplashBg,
                        width: 280,
                      ))),
            ),
            //logo....
            Obx(
              () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  bottom: splashController.animate.value ? 450 : 400,
                  left: 120,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 2400),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: Align(
                        alignment: Alignment.topLeft,
                        child: Image.asset(
                          worAppLogo,
                          width: 180,
                        )),
                  )),
            ),
            // TEXT app name...
            Obx(
              () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  bottom: 380,
                  left: splashController.animate.value ? 134 : 0,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 2400),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          appname,
                          style: TextStyle(fontFamily: bold, fontSize: 22),
                        ),
                      ],
                    ),
                  )),
            ),
            // TEXT slang...
            Obx(
              () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  bottom: 360,
                  right: splashController.animate.value ? 80 : 0,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 2400),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          appslang,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )),
            ),
            // TEXT credits...
            Obx(
              () => AnimatedPositioned(
                  duration: const Duration(milliseconds: 1600),
                  bottom: splashController.animate.value ? 40 : 0,
                  right: 142,
                  child: AnimatedOpacity(
                    duration: const Duration(milliseconds: 2400),
                    opacity: splashController.animate.value ? 1 : 0,
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          credits,
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  )),
            ),
          ],
        ));
  }
}
