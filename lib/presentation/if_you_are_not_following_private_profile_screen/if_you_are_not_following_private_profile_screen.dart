import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/if_you_are_not_following_private_profile_controller.dart'; // ignore_for_file: must_be_immutable

class IfYouAreNotFollowingPrivateProfileScreen
    extends GetWidget<IfYouAreNotFollowingPrivateProfileController> {
  const IfYouAreNotFollowingPrivateProfileScreen({Key? key})
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
            _buildUnsplashSection(),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 22.v,
              ),
              child: Column(
                children: [
                  Container(
                    width: double.maxFinite,
                    margin: EdgeInsets.symmetric(horizontal: 66.h),
                    child: Row(
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgImages11,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                        SizedBox(width: 12.h),
                        Container(
                          height: 6.adaptSize,
                          width: 6.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray90001,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        SizedBox(width: 12.h),
                        CustomImageView(
                          imagePath: ImageConstant.imgImages1,
                          height: 16.adaptSize,
                          width: 16.adaptSize,
                        ),
                        SizedBox(width: 12.h),
                        Container(
                          height: 6.adaptSize,
                          width: 6.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray90001,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        SizedBox(width: 12.h),
                        CustomImageView(
                          imagePath: ImageConstant.imgFacebook1,
                          height: 14.v,
                          width: 16.h,
                        ),
                        SizedBox(width: 12.h),
                        Container(
                          height: 6.adaptSize,
                          width: 6.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray90001,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        SizedBox(width: 12.h),
                        CustomImageView(
                          imagePath: ImageConstant.imgInfo,
                          height: 14.v,
                          width: 16.h,
                        ),
                        SizedBox(width: 12.h),
                        Container(
                          height: 6.adaptSize,
                          width: 6.adaptSize,
                          decoration: BoxDecoration(
                            color: appTheme.blueGray90001,
                            borderRadius: BorderRadius.circular(
                              3.h,
                            ),
                          ),
                        ),
                        SizedBox(width: 12.h),
                        CustomImageView(
                          imagePath: ImageConstant.imgCloseBlueGray30002,
                          height: 14.adaptSize,
                          width: 14.adaptSize,
                        )
                      ],
                    ),
                  ),
                  SizedBox(height: 18.v),
                  _buildFollowerFollowingBar(),
                  SizedBox(height: 14.v),
                  _buildRequestFollowSection(),
                  SizedBox(height: 50.v),
                  Container(
                    height: 86.adaptSize,
                    width: 86.adaptSize,
                    decoration: AppDecoration.fillPrimary.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder44,
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
                    "lbl_private_account".tr,
                    style: CustomTextStyles.titleLargeBluegray90001SemiBold,
                  ),
                  SizedBox(height: 8.v),
                  Text(
                    "msg_follow_this_user".tr,
                    style: CustomTextStyles.bodyMediumBluegray3000114,
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
  Widget _buildUnsplashSection() {
    return SizedBox(
      height: 190.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 108.v,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle6026,
                    height: 108.v,
                    width: double.maxFinite,
                  ),
                  Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(vertical: 14.v),
                    decoration: AppDecoration.gradientBlackToBlack,
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomAppBar(
                          leadingWidth: 54.h,
                          leading: AppbarLeadingIconbutton(
                            imagePath: ImageConstant.imgEllipse124,
                            margin: EdgeInsets.only(left: 20.h),
                          ),
                          actions: [
                            AppbarTrailingImage(
                              imagePath: ImageConstant.imgUserOnprimary,
                              margin: EdgeInsets.only(right: 17.h),
                            )
                          ],
                        ),
                        SizedBox(height: 42.v)
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 64.adaptSize,
                width: 64.adaptSize,
                decoration: AppDecoration.outline.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder32,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgUnsplashM6gy9ohgii,
                      height: 60.adaptSize,
                      width: double.maxFinite,
                      radius: BorderRadius.circular(
                        30.h,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Text(
                "lbl_musiani_wanda".tr,
                style: CustomTextStyles.titleMediumCyan400,
              ),
              SizedBox(height: 4.v),
              Text(
                "lbl_i_am_pop_model".tr,
                style: theme.textTheme.bodyMedium,
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFollowerFollowingBar() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.backgroundGreyBackground.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(top: 2.v),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "lbl_220".tr,
                      style: CustomTextStyles.titleMediumGray90004,
                    ),
                    TextSpan(
                      text: " ",
                    ),
                    TextSpan(
                      text: "lbl_mishpacha".tr,
                      style: CustomTextStyles.titleMediumGray40001,
                    )
                  ],
                ),
                textAlign: TextAlign.left,
              ),
            ),
          ),
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_150".tr,
                  style: CustomTextStyles.titleMediumGray90004,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_l".tr,
                  style: CustomTextStyles.titleMediumGray40001,
                ),
                TextSpan(
                  text: "lbl_ove_streaks".tr,
                  style: CustomTextStyles.titleMediumGray40001,
                )
              ],
            ),
            textAlign: TextAlign.left,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildRequestFollowSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
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
              colors: [theme.colorScheme.errorContainer, appTheme.cyan400],
            ),
            corners: Corners(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: CustomOutlinedButton(
              height: 40.v,
              width: 282.h,
              text: "msg_request_to_follow".tr,
              buttonStyle: CustomButtonStyles.outline,
              buttonTextStyle: CustomTextStyles.titleSmallPrimary,
            ),
          ),
          SizedBox(width: 8.h),
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
              colors: [theme.colorScheme.errorContainer, appTheme.cyan400],
            ),
            corners: Corners(
              topLeft: Radius.circular(10),
              topRight: Radius.circular(10),
              bottomLeft: Radius.circular(10),
              bottomRight: Radius.circular(10),
            ),
            child: CustomIconButton(
              height: 40.v,
              width: 50.h,
              padding: EdgeInsets.all(8.h),
              decoration: IconButtonStyleHelper.outline,
              child: CustomImageView(
                imagePath: ImageConstant.imgHeart,
              ),
            ),
          )
        ],
      ),
    );
  }
}
