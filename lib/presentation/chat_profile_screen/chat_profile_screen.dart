import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/chat_profile_controller.dart'; // ignore_for_file: must_be_immutable

class ChatProfileScreen extends GetWidget<ChatProfileController> {
  const ChatProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Column(
          children: [
            Container(
              height: 10.v,
              width: 360.h,
              decoration: BoxDecoration(
                color: appTheme.whiteA700,
              ),
            ),
            SizedBox(height: 64.v),
            _buildProfileSection(),
            SizedBox(height: 6.v),
            _buildViewProfileRow(),
            _buildDeleteConversationRow(),
            Spacer(),
            _buildHomeSection()
          ],
        ),
        bottomNavigationBar: _buildNavigationBar(),
        floatingActionButton: CustomFloatingButton(
          height: 54,
          width: 60,
          child: CustomImageView(
            imagePath: ImageConstant.imgCloseOnerrorcontainer,
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
      height: 74.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDownGray90009,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 20.v,
          bottom: 20.v,
        ),
      ),
      styleType: Style.bgFill_1,
    );
  }

  /// Section Widget
  Widget _buildProfileSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 2.h,
      ),
      child: Column(
        children: [
          SizedBox(
            width: 132.h,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse17,
                  height: 120.adaptSize,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    60.h,
                  ),
                ),
                SizedBox(height: 20.v),
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "lbl_cindy".tr,
                    style: CustomTextStyles.headlineLargeOpenSansGray90009,
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
  Widget _buildViewProfileRow() {
    return SizedBox(
      width: double.maxFinite,
      child: GestureDetector(
        onTap: () {
          onTapViewProfileRow();
        },
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.fillWhiteA,
          child: Row(
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgBookmark,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Padding(
                  padding: EdgeInsets.only(left: 16.h),
                  child: Text(
                    "lbl_view_profile".tr,
                    style: CustomTextStyles.bodyLargeOpenSansGray90009,
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
  Widget _buildDeleteConversationRow() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 16.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTrash2,
            height: 22.v,
            width: 20.h,
          ),
          Padding(
            padding: EdgeInsets.only(left: 18.h),
            child: Text(
              "msg_delete_conversation".tr,
              style: CustomTextStyles.bodyLargeOpenSansGray90009,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildHomeSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 2.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.fillWhiteA,
      child: Column(
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 12.h),
            padding: EdgeInsets.only(left: 128.h),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  width: 72.h,
                  child: Divider(
                    color: appTheme.gray90005,
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
  Widget _buildNavigationBar() {
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

  onTapViewProfileRow() {}
}
