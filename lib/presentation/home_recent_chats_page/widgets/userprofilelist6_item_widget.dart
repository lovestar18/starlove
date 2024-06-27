import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_recent_chats_controller.dart';
import '../models/userprofilelist6_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist6ItemWidget extends StatelessWidget {
  Userprofilelist6ItemWidget(this.userprofilelist6ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilelist6ItemModel userprofilelist6ItemModelObj;

  var controller = Get.find<HomeRecentChatsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillBlueA40001.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofilelist6ItemModelObj.userImage!.value,
              height: 48.adaptSize,
              width: 48.adaptSize,
              radius: BorderRadius.circular(
                24.h,
              ),
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofilelist6ItemModelObj.username!.value,
                      style: CustomTextStyles.titleSmallOpenSansIndigo90002,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Obx(
                    () => Text(
                      userprofilelist6ItemModelObj.description!.value,
                      style: CustomTextStyles.bodySmallBluegray60001,
                    ),
                  )
                ],
              ),
            ),
          ),
          Container(
            width: 72.h,
            margin: EdgeInsets.only(left: 8.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Obx(
                  () => Text(
                    userprofilelist6ItemModelObj.age!.value,
                    style: CustomTextStyles.bodySmallBluegray90002,
                  ),
                ),
                SizedBox(height: 4.v),
                Container(
                  width: 22.h,
                  height: 24.v,
                  alignment: Alignment.center,
                  decoration: AppDecoration.fillBlueA.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Obx(
                    () => Text(
                      userprofilelist6ItemModelObj.frameSize!.value,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelLargeOpenSansPrimaryBold,
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
