import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/feed_controller.dart';
import '../models/userprofilelist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(this.userprofilelistItemModelObj,
      {Key? key, this.onTapUserprofile, this.onTapImgUserimage3})
      : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<FeedController>();

  VoidCallback? onTapUserprofile;

  VoidCallback? onTapImgUserimage3;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 70.h,
      child: Align(
        alignment: Alignment.centerLeft,
        child: GestureDetector(
          onTap: () {
            onTapUserprofile?.call();
          },
          child: Container(
            width: 70.h,
            margin: EdgeInsets.only(bottom: 4.v),
            child: Column(
              children: [
                SizedBox(
                  height: 70.adaptSize,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        height: 60.v,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Obx(
                              () => CustomImageView(
                                imagePath: userprofilelistItemModelObj
                                    .userimage1!.value,
                                height: 60.adaptSize,
                                width: double.maxFinite,
                                radius: BorderRadius.circular(
                                  30.h,
                                ),
                              ),
                            ),
                            Obx(
                              () => CustomImageView(
                                imagePath: userprofilelistItemModelObj
                                    .userimage2!.value,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                            )
                          ],
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgOvalCopy,
                        height: 70.adaptSize,
                        width: double.maxFinite,
                        onTap: () {
                          onTapImgUserimage3?.call();
                        },
                      )
                    ],
                  ),
                ),
                Obx(
                  () => Text(
                    userprofilelistItemModelObj.you!.value,
                    style: CustomTextStyles.labelLargePoppinsBlack900,
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
