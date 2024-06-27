import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/edit_group_details_controller.dart'; // ignore_for_file: must_be_immutable

class EditGroupDetailsScreen extends GetWidget<EditGroupDetailsController> {
  const EditGroupDetailsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 24.v,
          ),
          child: Column(
            children: [SizedBox(height: 16.v), _buildEditGroupColumn()],
          ),
        ),
        bottomNavigationBar: _buildSaveButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupNameInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_group_name3".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            controller: controller.nameController,
            hintText: "msg_matzah_ball_soup".tr,
            hintStyle: CustomTextStyles.titleSmallGray90009_1,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupDescriptionInput() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_description".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            controller: controller.yournamegmailcoController,
            hintText: "msg_people_who_love".tr,
            hintStyle: CustomTextStyles.titleSmallGray90009_1,
            textInputAction: TextInputAction.done,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditGroupStack() {
    return Container(
      height: 676.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 40.v,
            ),
            decoration: AppDecoration.mainwhite.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "msg_edit_group_details".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 38.v),
                _buildGroupNameInput(),
                SizedBox(height: 18.v),
                _buildGroupDescriptionInput(),
                SizedBox(height: 18.v),
                Text(
                  "msg_group_is_private".tr,
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 24.v),
                Obx(
                  () => CustomSwitch(
                    value: controller.isSelectedSwitch.value,
                    onChange: (value) {
                      controller.isSelectedSwitch.value = value;
                    },
                  ),
                ),
                SizedBox(height: 26.v),
                Text(
                  "lbl_cover_photo".tr,
                  style: theme.textTheme.labelLarge,
                ),
                Spacer(),
                CustomElevatedButton(
                  height: 26.v,
                  text: "msg_upload_group_photo".tr.toUpperCase(),
                  margin: EdgeInsets.only(
                    left: 40.h,
                    right: 38.h,
                  ),
                  leftIcon: Container(
                    margin: EdgeInsets.only(right: 8.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgSearchPrimary,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                    ),
                  ),
                  buttonStyle: CustomButtonStyles.fillGray,
                  buttonTextStyle: CustomTextStyles.labelMediumRobotoPrimary,
                  alignment: Alignment.center,
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 18.h,
                    right: 4.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Align(
                        alignment: Alignment.center,
                        child: Text(
                          "lbl_9_41".tr,
                          style: CustomTextStyles.titleMediumInterPrimary,
                        ),
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                        height: 10.v,
                        width: 18.h,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsPrimary1,
                        height: 10.v,
                        width: 14.h,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgInstagramPrimary,
                        height: 12.v,
                        width: 26.h,
                        margin: EdgeInsets.only(left: 4.h),
                      )
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgWebaliserTptx156x342,
                  height: 156.v,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                  margin: EdgeInsets.only(left: 4.h),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditGroupColumn() {
    return Expanded(
      child: Column(
        children: [_buildEditGroupStack()],
      ),
    );
  }

  /// Section Widget
  Widget _buildSaveButton() {
    return CustomElevatedButton(
      text: "lbl_save".tr.toUpperCase(),
      margin: EdgeInsets.only(
        left: 88.h,
        right: 86.h,
        bottom: 34.v,
      ),
      buttonStyle: CustomButtonStyles.none,
      decoration: CustomButtonStyles.gradientTealAToCyanATL18Decoration,
      buttonTextStyle: CustomTextStyles.labelMediumRobotoPrimary,
      onPressed: () {
        onTapSaveButton();
      },
    );
  }

  /// Navigates to the grouppageV2Screen when the action is triggered.
  onTapSaveButton() {
    Get.toNamed(
      AppRoutes.grouppageV2Screen,
    );
  }
}
