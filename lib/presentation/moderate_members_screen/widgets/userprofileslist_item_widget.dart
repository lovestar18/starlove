import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/moderate_members_controller.dart';
import '../models/userprofileslist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileslistItemWidget extends StatelessWidget {
  UserprofileslistItemWidget(this.userprofileslistItemModelObj,
      {Key? key, this.onTapTxtButton})
      : super(
          key: key,
        );

  UserprofileslistItemModel userprofileslistItemModelObj;

  var controller = Get.find<ModerateMembersController>();

  VoidCallback? onTapTxtButton;

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 160.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAvatar60x60,
                height: 60.adaptSize,
                width: 60.adaptSize,
                radius: BorderRadius.circular(
                  30.h,
                ),
              ),
              SizedBox(width: 10.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        userprofileslistItemModelObj.username!.value,
                        style: CustomTextStyles.titleSmallRoboto,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        userprofileslistItemModelObj.handle!.value,
                        style: CustomTextStyles.bodySmallRoboto,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        Expanded(
          child: Padding(
            padding: EdgeInsets.only(top: 12.v),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                GestureDetector(
                  onTap: () {
                    onTapTxtButton?.call();
                  },
                  child: Container(
                    padding: EdgeInsets.symmetric(
                      horizontal: 16.h,
                      vertical: 8.v,
                    ),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16,
                    ),
                    child: Obx(
                      () => Text(
                        userprofileslistItemModelObj.button!.value,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.labelMediumRoboto,
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(left: 12.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 16.h,
                    vertical: 8.v,
                  ),
                  decoration: AppDecoration.outlineBlack.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder16,
                  ),
                  child: Obx(
                    () => Text(
                      userprofileslistItemModelObj.buttonOne!.value,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.labelMediumRoboto,
                    ),
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }
}
