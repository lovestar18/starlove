import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/create_new_group_controller.dart'; // ignore_for_file: must_be_immutable

class CreateNewGroupScreen extends GetWidget<CreateNewGroupController> {
  const CreateNewGroupScreen({Key? key})
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
            vertical: 42.v,
          ),
          child: Column(
            children: [_buildCreateNewColumn(), SizedBox(height: 4.v)],
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
            controller: controller.descriptionvaluController,
            hintText: "msg_people_who_love".tr,
            hintStyle: CustomTextStyles.titleSmallGray90009_1,
            textInputAction: TextInputAction.done,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateNewStack() {
    return SizedBox(
      height: 642.v,
      width: double.maxFinite,
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
              children: [
                Text(
                  "msg_create_new_group".tr,
                  style: theme.textTheme.headlineLarge,
                ),
                SizedBox(height: 38.v),
                _buildGroupNameInput(),
                SizedBox(height: 18.v),
                _buildGroupDescriptionInput(),
                SizedBox(height: 18.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "msg_group_is_private".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Obx(
                  () => CustomSwitch(
                    alignment: Alignment.centerLeft,
                    value: controller.isSelectedSwitch.value,
                    onChange: (value) {
                      controller.isSelectedSwitch.value = value;
                    },
                  ),
                ),
                SizedBox(height: 2.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "lbl_cover_photo".tr,
                    style: theme.textTheme.labelLarge,
                  ),
                ),
                Spacer(),
                CustomElevatedButton(
                  height: 26.v,
                  text: "msg_upload_group_photo".tr.toUpperCase(),
                  margin: EdgeInsets.only(
                    left: 38.h,
                    right: 30.h,
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
                ),
                SizedBox(height: 4.v)
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
                    left: 10.h,
                    right: 2.h,
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
                  imagePath: ImageConstant.imgWebaliserTptx150x336,
                  height: 150.v,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    20.h,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateNewColumn() {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(horizontal: 6.h),
        child: Column(
          children: [_buildCreateNewStack()],
        ),
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
