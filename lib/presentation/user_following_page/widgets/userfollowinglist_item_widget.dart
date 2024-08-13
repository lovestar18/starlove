import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/user_following_controller.dart';
import '../models/userfollowinglist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserfollowinglistItemWidget extends StatelessWidget {
  UserfollowinglistItemWidget(this.userfollowinglistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserfollowinglistItemModel userfollowinglistItemModelObj;

  var controller = Get.find<UserFollowingController>();

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
