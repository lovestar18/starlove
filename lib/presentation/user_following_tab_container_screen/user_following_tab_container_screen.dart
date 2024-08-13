import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../data/models/selectionPopupModel/selection_popup_model.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_drop_down.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../user_following_page/user_following_page.dart';
import '../user_profile1_screen/user_profile1_screen.dart';
import 'controller/user_following_tab_container_controller.dart'; // ignore_for_file: must_be_immutable

class UserFollowingTabContainerScreen
    extends GetWidget<UserFollowingTabContainerController> {
  const UserFollowingTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: 338.h,
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      _buildUnsplashSection(),
                      SizedBox(height: 24.v),
                      _buildMainContent(),
                      SizedBox(
                        height: 640.v,
                        width: double.maxFinite,
                        child: TabBarView(
                          controller: controller.tabviewController,
                          children: [UserFollowingPage(), UserProfile1Screen()],
                        ),
                      )
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUnsplashSection() {
    return SizedBox(
      height: 188.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 106.v,
              child: Stack(
                alignment: Alignment.center,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle6026,
                    height: 106.v,
                    width: double.maxFinite,
                  ),
                  Container(
                    height: 106.v,
                    width: 374.h,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment(0.5, 0),
                        end: Alignment(0.5, 1),
                        colors: [
                          appTheme.black900.withOpacity(0.74),
                          appTheme.black900.withOpacity(0)
                        ],
                      ),
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
              SizedBox(height: 6.v),
              Text(
                "lbl_i_am_pop_model".tr,
                style: CustomTextStyles.bodyMediumInter_3,
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMainContent() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 22.h,
        right: 24.h,
      ),
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(
              left: 68.h,
              right: 62.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImages11,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
                SizedBox(width: 12.h),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90001,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90001,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90001,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
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
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    height: 6.adaptSize,
                    width: 6.adaptSize,
                    margin: EdgeInsets.only(bottom: 4.v),
                    decoration: BoxDecoration(
                      color: appTheme.blueGray90001,
                      borderRadius: BorderRadius.circular(
                        3.h,
                      ),
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
          Container(
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
                    padding: EdgeInsets.only(
                      left: 2.h,
                      top: 2.v,
                    ),
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
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
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
                  child: CustomDropDown(
                    width: 138.h,
                    icon: Container(
                      margin: EdgeInsets.symmetric(horizontal: 22.h),
                      child: CustomImageView(
                        imagePath: ImageConstant.imgCheckmark,
                        height: 18.adaptSize,
                        width: 18.adaptSize,
                      ),
                    ),
                    hintText: "lbl_following".tr,
                    items: controller.userFollowingTabContainerModelObj.value
                        .dropdownItemList!.value,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 8.h),
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
                      topLeft: Radius.circular(10),
                      topRight: Radius.circular(10),
                      bottomLeft: Radius.circular(10),
                      bottomRight: Radius.circular(10),
                    ),
                    child: CustomOutlinedButton(
                      height: 40.v,
                      width: 138.h,
                      text: "lbl_chat2".tr,
                      buttonStyle: CustomButtonStyles.outline,
                      buttonTextStyle: CustomTextStyles.titleSmallPrimary,
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 14.v),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 10.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.outlineBlack.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomTextFormField(
                  controller: controller.whatshappeningController,
                  hintText: "msg_what_s_happening".tr,
                  hintStyle: CustomTextStyles.bodyMediumBluegray3000114,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: EdgeInsets.fromLTRB(6.h, 4.v, 8.h, 4.v),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgAvatar,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: 50.v,
                  ),
                  borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
                ),
                SizedBox(height: 44.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgImageBlueGray900,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgGifBlueGray900,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 16.h),
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgEmoji,
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        margin: EdgeInsets.only(left: 16.h),
                      ),
                      Spacer(),
                      CustomElevatedButton(
                        height: 36.v,
                        width: 72.h,
                        text: "lbl_post".tr,
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientErrorContainerToCyanDecoration,
                        buttonTextStyle: CustomTextStyles.titleSmallOnPrimary_2,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 26.v),
          SizedBox(
            height: 26.v,
            width: double.maxFinite,
            child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.primary,
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelColor: appTheme.blueGray90001,
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w600,
              ),
              indicatorColor: theme.colorScheme.errorContainer,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_wall".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_posts".tr,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
