import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/event_private_controller.dart'; // ignore_for_file: must_be_immutable

class EventPrivateScreen extends GetWidget<EventPrivateController> {
  const EventPrivateScreen({Key? key})
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
            _buildHeaderSection(),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 22.v,
              ),
              child: Column(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgWebaliserTptx170x338,
                    height: 170.v,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(
                      8.h,
                    ),
                    margin: EdgeInsets.only(left: 2.h),
                  ),
                  SizedBox(height: 14.v),
                  _buildEventDetailsSection(),
                  SizedBox(height: 28.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Divider(
                      indent: 2.h,
                    ),
                  ),
                  SizedBox(height: 14.v),
                  _buildEventMembersSection(),
                  SizedBox(height: 18.v),
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
                        theme.colorScheme.errorContainer,
                        appTheme.cyan400
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: CustomOutlinedButton(
                      height: 40.v,
                      text: "lbl_join_event".tr,
                      buttonStyle: CustomButtonStyles.outline,
                      buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                  SizedBox(height: 52.v),
                  Container(
                    height: 86.adaptSize,
                    width: 86.adaptSize,
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.circleBorder40,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgLocation,
                          height: 36.adaptSize,
                          width: 36.adaptSize,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 14.v),
                  Text(
                    "lbl_private_event".tr,
                    style: CustomTextStyles.titleLargeBluegray90001SemiBold,
                  ),
                  SizedBox(height: 6.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Text(
                      "msg_join_this_event".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          CustomTextStyles.bodyMediumBluegray3000114.copyWith(
                        height: 1.60,
                      ),
                    ),
                  ),
                  SizedBox(height: 4.v)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 6.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup7899,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppBar(
            leadingWidth: 55.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 21.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_event_name".tr,
            ),
          ),
          SizedBox(height: 4.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEventDetailsSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 2.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_event_name".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 6.v),
                  Text(
                    "msg_event_description".tr,
                    style: theme.textTheme.bodyMedium,
                  )
                ],
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 14.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillBluegray90001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  "lbl_private".tr,
                  style: CustomTextStyles.labelLarge12,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildEventMembersSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 2.h,
        right: 4.h,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_event_members".tr,
                  style: CustomTextStyles.labelLargeInterMedium,
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

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
