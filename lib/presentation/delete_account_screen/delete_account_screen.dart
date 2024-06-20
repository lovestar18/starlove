import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_five.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/delete_account_controller.dart'; // ignore_for_file: must_be_immutable

class DeleteAccountScreen extends GetWidget<DeleteAccountController> {
  const DeleteAccountScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.cyan40001,
        appBar: _buildAppBar(),
        body: Column(
          children: [
            SizedBox(height: 20.v),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 14.h,
                    vertical: 38.v,
                  ),
                  decoration: AppDecoration.white.copyWith(
                    borderRadius: BorderRadiusStyle.customBorderTL70,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Text(
                          "msg_are_you_sure_you".tr,
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style:
                              CustomTextStyles.titleSmallOpenSansBluegray90003,
                        ),
                      ),
                      SizedBox(height: 12.v),
                      _buildConfirmationStack(),
                      SizedBox(height: 88.v),
                      _buildPasswordConfirmationText(),
                      SizedBox(height: 32.v),
                      _buildPasswordRow(),
                      SizedBox(height: 30.v),
                      CustomElevatedButton(
                        height: 44.v,
                        text: "msg_yes_delete_account".tr,
                        margin: EdgeInsets.symmetric(horizontal: 64.h),
                        buttonStyle: CustomButtonStyles.fillCyan,
                        buttonTextStyle:
                            CustomTextStyles.titleSmallOpenSansBluegray90002,
                      ),
                      SizedBox(height: 20.v),
                      CustomElevatedButton(
                        height: 44.v,
                        text: "lbl_cancel2".tr,
                        margin: EdgeInsets.only(
                          left: 62.h,
                          right: 66.h,
                        ),
                        buttonStyle: CustomButtonStyles.fillTeal,
                        buttonTextStyle:
                            CustomTextStyles.titleSmallOpenSansTeal900,
                      ),
                      SizedBox(height: 194.v)
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 4.h),
          child: _buildBottomNavigationBar(),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 54,
          width: 60,
          child: CustomImageView(
            imagePath: ImageConstant.imgFieldNavigation,
            height: 27.0.v,
            width: 30.0.h,
          ),
        ),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 56.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftGray10001,
        margin: EdgeInsets.only(
          left: 38.h,
          top: 21.v,
          bottom: 18.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleFive(
        text: "lbl_delete_account".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmationStack() {
    return Container(
      height: 132.v,
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 120.v,
            width: 316.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.primary.withOpacity(1),
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            ),
          ),
          Text(
            "msg_this_action_will".tr,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMediumBluegray90003.copyWith(
              height: 1.15,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordConfirmationText() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 4.h,
        right: 2.h,
      ),
      child: Text(
        "msg_please_enter_your2".tr,
        maxLines: 2,
        overflow: TextOverflow.ellipsis,
        textAlign: TextAlign.center,
        style: CustomTextStyles.bodyMediumBluegray90002_1,
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img,
            height: 18.v,
            width: 144.h,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAirplane,
            height: 8.v,
            width: 24.h,
            margin: EdgeInsets.only(
              top: 4.v,
              right: 8.h,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigationBar() {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Grid:
        return AppRoutes.communityForumsResponsePage;
      case BottomBarEnum.Iconlylightnotification:
        return "/";
      case BottomBarEnum.Iconlylightprofile:
        return AppRoutes.communityForumsHomePage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      case AppRoutes.communityForumsResponsePage:
        return CommunityForumsResponsePage();
      case AppRoutes.communityForumsHomePage:
        return CommunityForumsHomePage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
