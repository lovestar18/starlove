import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/event_moderator_dashboard_controller.dart'; // ignore_for_file: must_be_immutable

class EventModeratorDashboardScreen
    extends GetWidget<EventModeratorDashboardController> {
  const EventModeratorDashboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Column(
          children: [
            _buildNavigationBar(),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 16.v),
              child: Column(
                children: [
                  _buildEventDetails(),
                  SizedBox(height: 12.v),
                  _buildEventMembers(),
                  SizedBox(height: 12.v),
                  _buildSeparatorLine(),
                  SizedBox(height: 12.v),
                  _buildEventModerators(),
                  SizedBox(height: 12.v),
                  _buildAdditionalInfo(),
                  SizedBox(height: 4.v)
                ],
              ),
            )
          ],
        ),
        bottomNavigationBar: _buildEditButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildNavigationBar() {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup42732093460x374,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 60.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 26.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_moderator_page".tr,
            ),
          ),
          SizedBox(height: 22.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEventDetails() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
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
                      Text(
                        "lbl_member_name".tr,
                        style: CustomTextStyles.labelLargeMedium_1,
                      ),
                      SizedBox(height: 2.v),
                      Text(
                        "lbl_username2".tr,
                        style: theme.textTheme.bodySmall,
                      )
                    ],
                  ),
                ),
                SizedBox(width: 4.h),
                CustomElevatedButton(
                  height: 22.v,
                  width: 66.h,
                  text: "lbl_moderator".tr,
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientErrorContainerToCyanDecoration,
                  buttonTextStyle: CustomTextStyles.bodySmallOnPrimary,
                  alignment: Alignment.bottomCenter,
                )
              ],
            ),
          ),
          SizedBox(height: 24.v),
          CustomImageView(
            imagePath: ImageConstant.imgWebaliserTptx3,
            height: 170.v,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              8.h,
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "lbl_event_name".tr,
            style: theme.textTheme.titleMedium,
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_event_description2".tr,
            style: theme.textTheme.bodyMedium,
          ),
          SizedBox(height: 28.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEventMembers() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_event_members".tr,
                  style: CustomTextStyles.labelLargeMedium_1,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  height: 28.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3884,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3883,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 10.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse388228x28,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 20.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3886,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 30.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3887,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 40.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3888,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 50.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3889,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 60.h),
                      ),
                      Container(
                        width: 28.adaptSize,
                        height: 28.adaptSize,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 70.h),
                        decoration: AppDecoration
                            .gradientErrorContainerToCyan400
                            .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14,
                        ),
                        child: OutlineGradientButton(
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
                              theme.colorScheme.errorContainer,
                              appTheme.cyan400
                            ],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14),
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                          child: Text(
                            "lbl_20".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumOnPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "lbl_view_all".tr,
              style: CustomTextStyles.labelMediumBluegray90001.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSeparatorLine() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEventModerators() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "msg_event_moderators".tr,
                  style: CustomTextStyles.labelLargeMedium_1,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  height: 28.v,
                  width: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.centerLeft,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3884,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3883,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 10.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse388228x28,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 20.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3886,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 30.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3887,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 40.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3888,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 50.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEllipse3889,
                        height: 28.adaptSize,
                        width: 28.adaptSize,
                        radius: BorderRadius.circular(
                          14.h,
                        ),
                        margin: EdgeInsets.only(left: 60.h),
                      ),
                      Container(
                        width: 28.adaptSize,
                        height: 28.adaptSize,
                        alignment: Alignment.center,
                        margin: EdgeInsets.only(left: 70.h),
                        decoration: AppDecoration
                            .gradientErrorContainerToCyan400
                            .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder14,
                        ),
                        child: OutlineGradientButton(
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
                              theme.colorScheme.errorContainer,
                              appTheme.cyan400
                            ],
                          ),
                          corners: Corners(
                            topLeft: Radius.circular(14),
                            topRight: Radius.circular(14),
                            bottomLeft: Radius.circular(14),
                            bottomRight: Radius.circular(14),
                          ),
                          child: Text(
                            "lbl_20".tr,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.labelMediumInterOnPrimary,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "lbl_view_all".tr,
              style: CustomTextStyles.labelMediumBluegray90001.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAdditionalInfo() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildEventTimeDate(
              timedate: "lbl_location".tr,
              timedateOne: "lbl_location2".tr,
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: Divider(),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: _buildEventTimeDate(
              timedate: "lbl_time_date".tr,
              timedateOne: "lbl_time_date2".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEditButton() {
    return CustomOutlinedButton(
      text: "lbl_edit_details".tr,
      margin: EdgeInsets.only(
        left: 20.h,
        right: 16.h,
        bottom: 14.v,
      ),
      buttonStyle: CustomButtonStyles.outlinePrimaryTL103,
      buttonTextStyle: CustomTextStyles.titleMediumPrimary_1,
    );
  }

  /// Common widget
  Widget _buildEventTimeDate({
    required String timedate,
    required String timedateOne,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          timedate,
          style: CustomTextStyles.labelLargeInterMedium.copyWith(
            color: appTheme.blueGray90001,
          ),
        ),
        Text(
          timedateOne,
          style: CustomTextStyles.bodyMediumInter_3.copyWith(
            color: appTheme.blueGray90001,
          ),
        )
      ],
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
