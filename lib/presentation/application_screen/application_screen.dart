import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/application_controller.dart'; // ignore_for_file: must_be_immutable

class ApplicationScreen extends GetWidget<ApplicationController> {
  const ApplicationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: false,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [appTheme.indigoA70001, appTheme.cyan40001],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 16.h),
            child: Column(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgStarlove2Transparent01,
                  height: 44.v,
                  width: double.maxFinite,
                  margin: EdgeInsets.only(
                    left: 76.h,
                    right: 66.h,
                  ),
                ),
                SizedBox(height: 6.v),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(right: 6.h),
                  padding: EdgeInsets.symmetric(
                    horizontal: 20.h,
                    vertical: 12.v,
                  ),
                  decoration: AppDecoration.mainwhite.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder12,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 26.v),
                      Padding(
                        padding: EdgeInsets.only(left: 2.h),
                        child: Text(
                          "lbl_application".tr,
                          style: theme.textTheme.headlineLarge,
                        ),
                      ),
                      SizedBox(height: 36.v),
                      _buildFullNameInput(),
                      SizedBox(height: 18.v),
                      _buildUsernameInput(),
                      SizedBox(height: 18.v),
                      _buildTempleInput(),
                      SizedBox(height: 18.v),
                      _buildFavoriteDishInput(),
                      SizedBox(height: 18.v),
                      _buildHolidayTraditionInput(),
                      SizedBox(height: 18.v),
                      _buildLinkedinInput(),
                      SizedBox(height: 12.v),
                      OutlineGradientButton(
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
                          colors: [
                            theme.colorScheme.primary,
                            theme.colorScheme.primary
                          ],
                        ),
                        corners: Corners(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.circular(10),
                          bottomRight: Radius.circular(10),
                        ),
                        child: CustomOutlinedButton(
                          height: 48.v,
                          text: "lbl_submit".tr,
                          buttonStyle: CustomButtonStyles.outline,
                          buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                          onPressed: () {
                            onTapSubmit();
                          },
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 4.v)
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFullNameInput() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_full_name".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.fullNameController,
            hintText: "msg_miram_berenstein".tr,
            hintStyle: CustomTextStyles.titleSmallGray90009_1,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameInput() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_username".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            controller: controller.userNameController,
            hintText: "lbl_moses".tr,
            hintStyle: CustomTextStyles.titleSmallGray90009_1,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTempleInput() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_what_temple_are".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            controller: controller.whattempleareyoController,
            hintText: "lbl_temple_emanuel".tr,
            hintStyle: CustomTextStyles.titleSmallGray90009_1,
            contentPadding: EdgeInsets.symmetric(vertical: 14.v),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFavoriteDishInput() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_favorite_jewish".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 4.v),
          CustomTextFormField(
            controller: controller.yournamegmailcoController,
            hintText: "lbl_kugel".tr,
            hintStyle: CustomTextStyles.titleSmallGray90009_1,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHolidayTraditionInput() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_best_jewish_holiday".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            controller: controller.yournamegmailco1Controller,
            hintText: "lbl_mazel_tov".tr,
            hintStyle: CustomTextStyles.titleSmallGray90009_1,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildLinkedinInput() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_linkedin_account".tr,
            style: theme.textTheme.labelLarge,
          ),
          SizedBox(height: 2.v),
          CustomTextFormField(
            controller: controller.yournamegmailco2Controller,
            hintText: "msg_linkedin_com_miram".tr,
            hintStyle: CustomTextStyles.titleSmallGray90009_1,
            textInputAction: TextInputAction.done,
          )
        ],
      ),
    );
  }

  onTapSubmit() {}
}
