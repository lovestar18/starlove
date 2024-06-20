import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_recent_chats_controller.dart';
import '../models/userprofile2_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofile2ItemWidget extends StatelessWidget {
  Userprofile2ItemWidget(this.userprofile2ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofile2ItemModel userprofile2ItemModelObj;

  var controller = Get.find<HomeRecentChatsController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 8.h,
        vertical: 6.v,
      ),
      decoration: AppDecoration.fillBlueA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      child: Row(
        children: [
          Obx(
            () => CustomImageView(
              imagePath: userprofile2ItemModelObj.userImage!.value,
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
                      userprofile2ItemModelObj.username!.value,
                      style: CustomTextStyles.titleSmallOpenSansIndigo90002,
                    ),
                  ),
                  SizedBox(height: 8.v),
                  Obx(
                    () => Text(
                      userprofile2ItemModelObj.description!.value,
                      style: CustomTextStyles.bodySmallBluegray60001,
                    ),
                  )
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomRight,
            child: Container(
              width: 72.h,
              margin: EdgeInsets.only(left: 8.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Obx(
                    () => Text(
                      userprofile2ItemModelObj.age!.value,
                      style: CustomTextStyles.bodySmallBluegray90099,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  Container(
                    width: 22.h,
                    height: 24.v,
                    alignment: Alignment.center,
                    decoration: AppDecoration.blue1.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Obx(
                      () => Text(
                        userprofile2ItemModelObj.frameCount!.value,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.labelLargeOpenSansPrimaryBold,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
