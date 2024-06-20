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
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 42.v,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [_buildCreateNewGroupColumn(), SizedBox(height: 4.v)],
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
            hintStyle: CustomTextStyles.titleSmallGray90010_1,
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
            hintStyle: CustomTextStyles.titleSmallGray90010_1,
            textInputAction: TextInputAction.done,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreateNewGroupStack() {
    return SizedBox(
      height: 650.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            decoration: AppDecoration.white.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(height: 40.v),
                Text(
                  "msg_create_new_group".tr,
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
                  height: 30.v,
                  width: 154.h,
                  text: "msg_upload_group_photo".tr.toUpperCase(),
                  buttonStyle: CustomButtonStyles.fillGrayTL14,
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
                    left: 14.h,
                    right: 4.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Text(
                        "lbl_9_41".tr,
                        style: CustomTextStyles.titleMediumInterPrimary_1,
                      ),
                      Spacer(),
                      CustomImageView(
                        imagePath: ImageConstant.imgThumbsUpPrimary,
                        height: 10.v,
                        width: 18.h,
                        margin: EdgeInsets.only(bottom: 2.v),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgSettingsPrimary,
                        height: 10.v,
                        width: 14.h,
                        margin: EdgeInsets.only(left: 4.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgInstagram,
                        height: 12.v,
                        width: 26.h,
                        margin: EdgeInsets.only(left: 4.h),
                      )
                    ],
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgWebaliserTptx150x342,
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
  Widget _buildCreateNewGroupColumn() {
    return Expanded(
      child: Column(
        children: [_buildCreateNewGroupStack()],
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
      decoration: CustomButtonStyles.gradientTealAToCyanADecoration,
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
