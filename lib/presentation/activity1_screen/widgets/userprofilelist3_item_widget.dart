import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/activity1_controller.dart';
import '../models/userprofilelist3_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist3ItemWidget extends StatelessWidget {
  Userprofilelist3ItemWidget(this.userprofilelist3ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilelist3ItemModel userprofilelist3ItemModelObj;

  var controller = Get.find<Activity1Controller>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          margin: EdgeInsets.only(right: 6.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Obx(
                () => CustomImageView(
                  imagePath:
                      userprofilelist3ItemModelObj.likedPostsImage!.value,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                ),
              ),
              Container(
                width: 100.h,
                margin: EdgeInsets.only(left: 8.h),
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_karennne2".tr,
                        style: CustomTextStyles.labelLarge_1,
                      ),
                      TextSpan(
                        text: "lbl_liked_3_posts2".tr,
                        style: CustomTextStyles.bodyMedium_2,
                      ),
                      TextSpan(
                        text: "lbl_3h".tr,
                        style: CustomTextStyles.bodyMediumBluegray30001_1,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              Spacer(),
              Obx(
                () => CustomImageView(
                  imagePath:
                      userprofilelist3ItemModelObj.likedPostsImage1!.value,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath:
                      userprofilelist3ItemModelObj.likedPostsImage2!.value,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  margin: EdgeInsets.only(left: 4.h),
                ),
              ),
              Obx(
                () => CustomImageView(
                  imagePath:
                      userprofilelist3ItemModelObj.likedPostsImage3!.value,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  radius: BorderRadius.circular(
                    5.h,
                  ),
                  margin: EdgeInsets.only(left: 4.h),
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 16.v),
        SizedBox(
          width: double.maxFinite,
          child: Divider(),
        )
      ],
    );
  }
}
