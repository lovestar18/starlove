import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_outlined_button.dart';
import '../community_forums_home1_page/community_forums_home1_page.dart';
import '../homepage_page/homepage_page.dart';
import '../imagepicker_tab_container_page/imagepicker_tab_container_page.dart';
import '../profile_options_one_bottomsheet/profile_options_one_bottomsheet.dart';
import 'controller/password_settings1_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PasswordSettings1Bottomsheet extends StatelessWidget {
  PasswordSettings1Bottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  PasswordSettings1Controller controller;

  @override
  Widget build(BuildContext context) {
    return _buildPasswordSettingsScrollview();
  }

  /// Section Widget
  Widget _buildRowSpacerSection() {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8.v),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Spacer(
            flex: 12,
          ),
          Align(
            alignment: Alignment.center,
            child: Text(
              "lbl_16_042".tr,
              style: CustomTextStyles.labelLargeLeagueSpartanOnErrorContainer,
            ),
          ),
          Spacer(
            flex: 87,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgUserOnerrorcontainer10x12,
            height: 10.v,
            width: 12.h,
            alignment: Alignment.center,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSettingsOnerrorcontainer8x14,
            height: 8.v,
            width: 14.h,
            radius: BorderRadius.circular(
              4.h,
            ),
            margin: EdgeInsets.only(left: 4.h),
          ),
          SizedBox(
            height: 8.v,
            width: 22.h,
            child: Stack(
              alignment: Alignment.centerRight,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionOnerrorcontainer6x12,
                  height: 6.v,
                  width: 12.h,
                  margin: EdgeInsets.only(right: 4.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgTelevisionOnerrorcontainer8x16,
                  height: 8.v,
                  width: 16.h,
                  radius: BorderRadius.circular(
                    1.h,
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
  Widget _buildBottomBarSection() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Section Widget
  Widget _buildPasswordSettingsScrollview() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 18.h,
              vertical: 14.v,
            ),
            decoration: AppDecoration.mainwhite.copyWith(
              borderRadius: BorderRadiusStyle.customBorderTL30,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgVector629,
                  height: 4.v,
                  width: 30.h,
                ),
                SizedBox(height: 48.v),
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
                        imagePath: ImageConstant.imgCheckmarkPrimary1,
                        height: 24.v,
                        width: 38.h,
                      )
                    ],
                  ),
                ),
                SizedBox(height: 22.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Text(
                    "msg_your_password_has".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.center,
                    style: CustomTextStyles.titleLargeBluegray90001,
                  ),
                ),
                SizedBox(height: 30.v),
                CustomOutlinedButton(
                  text: "lbl_close".tr,
                ),
                SizedBox(height: 18.v)
              ],
            ),
          )
        ],
      ),
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Groups:
        return AppRoutes.imagepickerTabContainerPage;
      case BottomBarEnum.Post:
        return "/";
      case BottomBarEnum.Kibutz:
        return AppRoutes.communityForumsHome1Page;
      case BottomBarEnum.Profile:
        return AppRoutes.profileOptionsOneBottomsheet;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      case AppRoutes.imagepickerTabContainerPage:
        return ImagepickerTabContainerPage();
      case AppRoutes.communityForumsHome1Page:
        return CommunityForumsHome1Page();
      case AppRoutes.profileOptionsOneBottomsheet:
        return ProfileOptionsOneBottomsheet();
      default:
        return DefaultWidget();
    }
  }
}
