import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_six.dart';
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
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 10.h,
            vertical: 52.v,
          ),
          child: Column(
            children: [_buildConfirmationDetails(), SizedBox(height: 64.v)],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 4.h),
          child: _buildBottomNavigationBar(),
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
      title: AppbarSubtitleSix(
        text: "lbl_delete_account".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildDeleteAccountConfirmation() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_are_you_sure_you".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleLargeOpenSansBluegray90004Bold,
            ),
          ),
          SizedBox(height: 14.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_this_action_will".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyMediumBluegray90004.copyWith(
                height: 1.15,
              ),
            ),
          ),
          SizedBox(height: 58.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_please_enter_your2".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.bodyLargeOpenSansBluegray90003,
            ),
          ),
          SizedBox(height: 30.v),
          Container(
            margin: EdgeInsets.only(right: 4.h),
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
              mainAxisSize: MainAxisSize.max,
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
                  imagePath: ImageConstant.imgAirplaneTeal900,
                  height: 8.v,
                  width: 24.h,
                  margin: EdgeInsets.only(right: 28.h),
                )
              ],
            ),
          ),
          SizedBox(height: 34.v),
          CustomElevatedButton(
            height: 44.v,
            text: "msg_yes_delete_account".tr,
            margin: EdgeInsets.only(
              left: 62.h,
              right: 72.h,
            ),
            buttonStyle: CustomButtonStyles.fillCyan,
            buttonTextStyle: CustomTextStyles.titleSmallOpenSansBluegray90003,
          ),
          SizedBox(height: 20.v),
          CustomElevatedButton(
            height: 44.v,
            text: "lbl_cancel2".tr,
            margin: EdgeInsets.only(
              left: 58.h,
              right: 74.h,
            ),
            buttonStyle: CustomButtonStyles.fillTeal,
            buttonTextStyle: CustomTextStyles.titleSmallOpenSansTeal900,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildConfirmationDetails() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [_buildDeleteAccountConfirmation()],
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
      case BottomBarEnum.Homegray400:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Gridgray400:
        return AppRoutes.communityForumsResponsePage;
      case BottomBarEnum.Iconlylightnotificationgray400:
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

  onTapFloatingactionb() {}
}
