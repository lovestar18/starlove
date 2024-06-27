import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import 'controller/splash_controller.dart'; // ignore_for_file: must_be_immutable

class SplashScreen extends GetWidget<SplashController> {
  const SplashScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImageView(
              imagePath: ImageConstant.imgCopyOfCopyOf,
              height: 812.v,
              width: double.maxFinite,
            )
          ],
        ),
      ),
    );
  }
}
