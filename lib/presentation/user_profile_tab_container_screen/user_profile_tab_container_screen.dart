import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import '../user_profile_page/user_profile_page.dart';
import 'controller/user_profile_tab_container_controller.dart'; // ignore_for_file: must_be_immutable

class UserProfileTabContainerScreen
    extends GetWidget<UserProfileTabContainerController> {
  const UserProfileTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildHeader(),
                SizedBox(height: 12.v),
                _buildSocialIcons(),
                SizedBox(height: 8.v),
                _buildTabview(),
                SizedBox(
                  height: 990.v,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [UserProfilePage(), UserProfilePage()],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(),
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
  Widget _buildHeader() {
    return SizedBox(
      height: 146.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgImage7,
            height: 106.v,
            width: double.maxFinite,
            alignment: Alignment.topCenter,
          ),
          CustomImageView(
            imagePath: ImageConstant.imgEllipse19480x80,
            height: 80.adaptSize,
            width: 80.adaptSize,
            radius: BorderRadius.circular(
              40.h,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileInfo() {
    return SizedBox(
      width: double.maxFinite,
      child: Column(
        children: [
          Text(
            "lbl_jill_joy".tr,
            style: CustomTextStyles.headlineSmallTealA40001,
          ),
          SizedBox(height: 6.v),
          Text(
            "lbl_bio3".tr,
            style: CustomTextStyles.bodyLargeOpenSans,
          ),
          SizedBox(height: 20.v),
          Container(
            padding: EdgeInsets.symmetric(
              horizontal: 36.h,
              vertical: 8.v,
            ),
            decoration: AppDecoration.fillGray10005.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              mainAxisSize: MainAxisSize.max,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_220".tr,
                        style: CustomTextStyles.titleMediumInterGray9001116,
                      ),
                      TextSpan(
                        text: " ",
                      ),
                      TextSpan(
                        text: "lbl_followers".tr,
                        style: CustomTextStyles.titleMediumInterGray400Black,
                      )
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_150".tr,
                          style: CustomTextStyles.titleMediumInterGray9001116,
                        ),
                        TextSpan(
                          text: " ",
                        ),
                        TextSpan(
                          text: "lbl_following".tr,
                          style: CustomTextStyles.titleMediumInterGray400Black,
                        )
                      ],
                    ),
                    textAlign: TextAlign.left,
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
  Widget _buildSocialIcons() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 12.h,
        right: 14.h,
      ),
      child: Column(
        children: [
          _buildProfileInfo(),
          SizedBox(height: 6.v),
          SizedBox(
            width: 152.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgImages11,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  alignment: Alignment.center,
                ),
                Container(
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    bottom: 4.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.indigo500,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgImages1,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 12.h),
                ),
                Container(
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  margin: EdgeInsets.only(
                    left: 14.h,
                    bottom: 4.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.indigo500,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgFacebook1,
                  height: 14.v,
                  width: 16.h,
                  alignment: Alignment.center,
                  margin: EdgeInsets.only(left: 8.h),
                ),
                Container(
                  height: 6.adaptSize,
                  width: 6.adaptSize,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    bottom: 4.v,
                  ),
                  decoration: BoxDecoration(
                    color: appTheme.indigo500,
                    borderRadius: BorderRadius.circular(
                      3.h,
                    ),
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgInfo,
                  height: 14.v,
                  width: 16.h,
                  margin: EdgeInsets.only(left: 10.h),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview() {
    return Container(
      height: 50.v,
      margin: EdgeInsets.only(right: 4.h),
      decoration: BoxDecoration(
        color: theme.colorScheme.primary.withOpacity(1),
      ),
      width: double.maxFinite,
      child: TabBar(
        controller: controller.tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.indigo500,
        labelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.gray400,
        unselectedLabelStyle: TextStyle(
          fontSize: 16.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w900,
        ),
        indicatorPadding: EdgeInsets.all(
          6.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.gray100,
          borderRadius: BorderRadius.circular(
            6.h,
          ),
        ),
        dividerHeight: 0.0,
        tabs: [
          Tab(
            child: Container(
              width: 176.h,
              padding: EdgeInsets.symmetric(
                horizontal: 70.h,
                vertical: 8.v,
              ),
              child: Text(
                "lbl_wall".tr,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
              ),
            ),
          ),
          Tab(
            child: Container(
              width: 188.h,
              padding: EdgeInsets.symmetric(
                horizontal: 70.h,
                vertical: 8.v,
              ),
              child: Text(
                "lbl_posts".tr,
                maxLines: null,
                overflow: TextOverflow.ellipsis,
              ),
            ),
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
}
