import 'package:flutter/material.dart';
import '../../core/app_export.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class AppbarIconbutton extends StatelessWidget {
  AppbarIconbutton({Key? key, this.imagePath, this.margin, this.onTap})
      : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap?.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: IconButton(
          onPressed: () {},
          constraints: BoxConstraints(
            minHeight: 42.adaptSize,
            minWidth: 42.adaptSize,
          ),
          padding: EdgeInsets.all(0),
          icon: SizedBox(
            width: 42.adaptSize,
            height: 42.adaptSize,
            child: CustomImageView(
              imagePath: ImageConstant.imageNotFound,
            ),
          ),
        ),
      ),
    );
  }
}
