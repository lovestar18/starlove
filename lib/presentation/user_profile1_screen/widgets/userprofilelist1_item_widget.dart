import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/user_profile1_controller.dart';
import '../models/userprofilelist1_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist1ItemWidget extends StatelessWidget {
  Userprofilelist1ItemWidget(this.userprofilelist1ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilelist1ItemModel userprofilelist1ItemModelObj;

  var controller = Get.find<UserProfile1Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 34.adaptSize,
      width: 34.adaptSize,
      decoration: BoxDecoration(
        color: appTheme.blueGray10002,
        borderRadius: BorderRadius.circular(
          16.h,
        ),
      ),
    );
  }
}
