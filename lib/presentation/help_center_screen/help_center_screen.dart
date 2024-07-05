import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_search_view.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/help_center_controller.dart'; // ignore_for_file: must_be_immutable

class HelpCenterScreen extends GetWidget<HelpCenterController> {
  const HelpCenterScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Column(
          children: [
            SizedBox(height: 12.v),
            _buildHeaderSection(),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(vertical: 26.v),
              child: Column(
                children: [_buildFaqSection(), SizedBox(height: 4.v)],
              ),
            )
          ],
        ),
        bottomNavigationBar: _buildNavigationBar(),
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
  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      padding: EdgeInsets.symmetric(vertical: 20.v),
      decoration: AppDecoration.gradientTealAToCyanA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder50,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(height: 4.v),
          CustomAppBar(
            height: 16.v,
            leadingWidth: 45.h,
            leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowLeftGray100011,
              margin: EdgeInsets.only(left: 27.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
          ),
          SizedBox(height: 2.v),
          Container(
            height: 144.v,
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 8.h),
            child: Stack(
              alignment: Alignment.bottomLeft,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_hi".tr,
                            style: theme.textTheme.displayMedium,
                          ),
                          TextSpan(
                            text: "msg_how_can_we_help2".tr,
                            style: theme.textTheme.displaySmall,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
                CustomSearchView(
                  controller: controller.searchController,
                  hintText: "lbl_search".tr,
                  contentPadding: EdgeInsets.only(
                    left: 18.h,
                    top: 8.v,
                    bottom: 8.v,
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
  Widget _buildFaqSection() {
    return SizedBox();
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

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }

  onTapFloatingactionb() {}
}
