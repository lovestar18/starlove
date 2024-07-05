import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_five.dart';
import '../../widgets/app_bar/appbar_subtitle_four.dart';
import '../../widgets/app_bar/appbar_subtitle_twentyone.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_search_view.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/home_recent_chats_controller.dart';
import 'models/recentchatslist_item_model.dart';
import 'widgets/recentchatslist_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomeRecentChatsScreen extends GetWidget<HomeRecentChatsController> {
  const HomeRecentChatsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          child: Column(
            children: [
              SizedBox(height: 12.v),
              SizedBox(
                height: 676.v,
                width: double.maxFinite,
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFramePrimary,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      alignment: Alignment.bottomCenter,
                      margin: EdgeInsets.only(bottom: 36.v),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomSearchView(
                          controller: controller.searchController,
                          hintText: "lbl_search".tr,
                          borderDecoration: SearchViewStyleHelper.fillGray,
                          fillColor: appTheme.gray50,
                        ),
                        SizedBox(height: 32.v),
                        _buildRecentChatsList()
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(),
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
      height: 64.v,
      title: Padding(
        padding: EdgeInsets.only(left: 25.h),
        child: Row(
          children: [
            AppbarSubtitleTwentyone(
              text: "lbl_edit".tr,
              margin: EdgeInsets.only(bottom: 46.v),
            ),
            Container(
              height: 54.730003.v,
              width: 82.h,
              margin: EdgeInsets.only(
                left: 100.h,
                top: 5.v,
              ),
              child: Stack(
                children: [
                  AppbarSubtitleFive(
                    text: "lbl_kibitz".tr,
                    margin: EdgeInsets.only(bottom: 26.v),
                  ),
                  AppbarSubtitleFour(
                    text: "lbl_chat".tr,
                    margin: EdgeInsets.only(
                      left: 15.h,
                      top: 26.v,
                      right: 12.h,
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
      actions: [
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgEditLightBlueA70001,
          margin: EdgeInsets.only(
            top: 2.v,
            right: 22.h,
            bottom: 42.v,
          ),
          onTap: () {
            onTapEditoneoneone();
          },
        )
      ],
      styleType: Style.bgFill,
    );
  }

  /// Section Widget
  Widget _buildRecentChatsList() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 8.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 32.v,
            );
          },
          itemCount: controller.homeRecentChatsModelObj.value
              .recentchatslistItemList.value.length,
          itemBuilder: (context, index) {
            RecentchatslistItemModel model = controller.homeRecentChatsModelObj
                .value.recentchatslistItemList.value[index];
            return RecentchatslistItemWidget(
              model,
              onTapListitem: () {
                onTapListitem();
              },
            );
          },
        ),
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

  /// Navigates to the addToChatScreen when the action is triggered.
  onTapEditoneoneone() {
    Get.toNamed(
      AppRoutes.addToChatScreen,
    );
  }

  /// Navigates to the chatScreen when the action is triggered.
  onTapListitem() {
    Get.toNamed(
      AppRoutes.chatScreen,
    );
  }
}
