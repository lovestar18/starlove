import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_seven.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 4.h,
            vertical: 52.v,
          ),
          child: Column(
            children: [
              _buildConfirmationSection(),
              SizedBox(height: 32.v),
              _buildIconRow(),
              SizedBox(height: 32.v),
              _buildActionButtons(),
              SizedBox(height: 4.v)
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 4.h),
          child: _buildBottomNavigation(),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 54,
          width: 60,
          onTap: () {
            onTapFloatingactionb();
          },
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
        imagePath: ImageConstant.imgArrowLeftGray100011,
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
      title: AppbarSubtitleSeven(
        text: "lbl_delete_account".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmationSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 12.h,
        right: 14.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 18.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_are_you_sure_you".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLargeOpenSansBluegray90005Bold,
            ),
          ),
          SizedBox(height: 14.v),
          Text(
            "msg_this_action_will".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMediumBluegray90005.copyWith(
              height: 1.15,
            ),
          ),
          SizedBox(height: 58.v),
          Text(
            "msg_please_enter_your2".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyLargeOpenSansBluegray90004,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIconRow() {
    return Container(
      margin: EdgeInsets.only(right: 10.h),
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.mainwhite.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: double.maxFinite,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.img,
            height: 18.v,
            width: 144.h,
            margin: EdgeInsets.only(
              top: 2.v,
              bottom: 4.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgAirplane,
            height: 8.v,
            width: 24.h,
            margin: EdgeInsets.only(right: 28.h),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildActionButtons() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 12.h,
        right: 14.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 54.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomElevatedButton(
            height: 44.v,
            text: "msg_yes_delete_account".tr,
            margin: EdgeInsets.only(left: 2.h),
            buttonStyle: CustomButtonStyles.fillCyan,
            buttonTextStyle: CustomTextStyles.titleSmallOpenSansBluegray90004,
          ),
          SizedBox(height: 20.v),
          CustomElevatedButton(
            height: 44.v,
            text: "lbl_cancel2".tr,
            buttonStyle: CustomButtonStyles.fillTeal,
            buttonTextStyle: CustomTextStyles.titleSmallOpenSansTeal900,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation() {
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
        return AppRoutes.homepageContainer1Page;
      case BottomBarEnum.Grid:
        return AppRoutes.communityForumsResponseScreen;
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
      case AppRoutes.homepageContainer1Page:
        return HomepageContainer1Page();
      case AppRoutes.communityForumsResponseScreen:
        return CommunityForumsResponseScreen();
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

  onTapFloatingactionb() {}
}
