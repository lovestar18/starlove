import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../home_recent_chats_page/home_recent_chats_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/home_recent_chats_tab_container_controller.dart'; // ignore_for_file: must_be_immutable

class HomeRecentChatsTabContainerScreen
    extends GetWidget<HomeRecentChatsTabContainerController> {
  const HomeRecentChatsTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          height: 768.v,
          width: 374.h,
          child: Stack(
            children: [
              _buildFloatingActionButton(),
              Container(
                width: double.maxFinite,
                decoration: AppDecoration.gradientPrimaryToGray10004,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    SizedBox(height: 4.v),
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildAppBar(),
                    ),
                    SizedBox(
                      height: 660.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.bottomCenter,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgSearchBlack900,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            alignment: Alignment.topRight,
                            margin: EdgeInsets.only(right: 16.h),
                          ),
                          Container(
                            width: double.maxFinite,
                            decoration:
                                AppDecoration.gradientPrimaryToGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                _buildChatTabs(),
                                SizedBox(
                                  height: 588.v,
                                  width: double.maxFinite,
                                  child: TabBarView(
                                    controller: controller.tabviewController,
                                    children: [
                                      HomeRecentChatsPage(),
                                      HomeRecentChatsPage(),
                                      HomeRecentChatsPage()
                                    ],
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(),
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
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 56,
      width: 56,
      backgroundColor: appTheme.blueA40001,
      decoration: FloatingButtonStyleHelper.fillBlueA,
      alignment: Alignment.bottomRight,
      child: CustomImageView(
        imagePath: ImageConstant.imgFramePrimary,
        height: 28.0.v,
        width: 28.0.h,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 36.v,
      leadingWidth: 40.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgUserBlack90024x24,
        margin: EdgeInsets.only(
          left: 16.h,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_kibitz_chat".tr,
      ),
      actions: [
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgSearchBlack900,
          margin: EdgeInsets.only(
            top: 7.v,
            right: 25.h,
            bottom: 5.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildChatTabs() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        children: [
          SizedBox(
            height: 26.v,
            width: double.maxFinite,
            child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.primary.withOpacity(1),
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
              unselectedLabelColor: appTheme.indigo90002.withOpacity(0.5),
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w400,
              ),
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: BoxDecoration(
                color: appTheme.blueA40001,
                borderRadius: BorderRadius.circular(
                  4.h,
                ),
              ),
              dividerHeight: 0.0,
              tabs: [
                Tab(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 4.v,
                    ),
                    child: Text(
                      "lbl_all_chats".tr,
                    ),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 4.v,
                    ),
                    child: Text(
                      "lbl_1_1".tr,
                    ),
                  ),
                ),
                Tab(
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 4.v,
                    ),
                    child: Text(
                      "lbl_groups".tr,
                    ),
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
  Widget _buildBottomAppBar() {
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
