import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../../core/app_export.dart';
import '../../../theme/custom_button_style.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../controller/friends_controller.dart';
import '../models/userprofilelist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(this.userprofilelistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<FriendsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAvatar,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              SizedBox(width: 4.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        userprofilelistItemModelObj.memberName!.value,
                        style: CustomTextStyles.labelLargeMedium_1,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        userprofilelistItemModelObj.username!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 4.h),
              _buildFollowButton()
            ],
          ),
        ),
        SizedBox(height: 14.v),
        SizedBox(
          width: double.maxFinite,
          child: Divider(),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildFollowButton() {
    return OutlineGradientButton(
      padding: EdgeInsets.only(
        left: 1.h,
        top: 1.v,
        right: 1.h,
        bottom: 1.v,
      ),
      strokeWidth: 1.h,
      gradient: LinearGradient(
        begin: Alignment(0.5, 0),
        end: Alignment(0.5, 1),
        colors: [theme.colorScheme.errorContainer, appTheme.cyan400],
      ),
      corners: Corners(
        topLeft: Radius.circular(14),
        topRight: Radius.circular(14),
        bottomLeft: Radius.circular(14),
        bottomRight: Radius.circular(14),
      ),
      child: CustomOutlinedButton(
        height: 28.v,
        width: 70.h,
        text: "lbl_follow2".tr,
        buttonStyle: CustomButtonStyles.outlineTL14,
        buttonTextStyle: CustomTextStyles.labelMediumPrimary,
      ),
    );
  }
}
