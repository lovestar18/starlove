import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_title.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_search_view.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/moderate_members_controller.dart';
import 'models/userprofileslist_item_model.dart';
import 'widgets/userprofileslist_item_widget.dart'; // ignore_for_file: must_be_immutable

class ModerateMembersScreen extends GetWidget<ModerateMembersController> {
  const ModerateMembersScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Column(
          children: [
            SizedBox(height: 10.v),
            _buildSearchBar(),
            SizedBox(height: 16.v),
            _buildUserProfilesList(),
            SizedBox(height: 16.v),
            _buildStackedAvatars()
          ],
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
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 27.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftIndigo900,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 8.v,
          bottom: 35.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarTitle(
        text: "msg_moderate_members".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchBar() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: CustomSearchView(
        controller: controller.searchBarController,
        hintText: "lbl_search".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfilesList() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 14.v,
            );
          },
          itemCount: controller.moderateMembersModelObj.value
              .userprofileslistItemList.value.length,
          itemBuilder: (context, index) {
            UserprofileslistItemModel model = controller.moderateMembersModelObj
                .value.userprofileslistItemList.value[index];
            return UserprofileslistItemWidget(
              model,
              onTapTxtButton: () {
                onTapTxtButton();
              },
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildStackedAvatars() {
    return Container(
      height: 60.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 16.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgAvatar60x60,
                      height: 60.adaptSize,
                      width: 60.adaptSize,
                      radius: BorderRadius.circular(
                        30.h,
                      ),
                    ),
                    SizedBox(width: 10.h),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "lbl_name".tr,
                            style: CustomTextStyles.titleSmallRoboto,
                          ),
                          SizedBox(height: 2.v),
                          Text(
                            "lbl_handle2".tr,
                            style: CustomTextStyles.bodySmallRoboto,
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 12.v),
                padding: EdgeInsets.symmetric(
                  horizontal: 14.h,
                  vertical: 6.v,
                ),
                decoration: AppDecoration.outlineBlack.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      "lbl_remove".tr.toUpperCase(),
                      style: CustomTextStyles.labelMediumRoboto,
                    )
                  ],
                ),
              )
            ],
          ),
          Align(
            alignment: Alignment.topRight,
            child: Container(
              margin: EdgeInsets.only(
                top: 12.v,
                right: 88.h,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 14.h,
                vertical: 6.v,
              ),
              decoration: AppDecoration.outlineBlack.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder16,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "lbl_view".tr.toUpperCase(),
                    style: CustomTextStyles.labelMediumRoboto,
                  )
                ],
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

  /// Navigates to the userProfileScreen when the action is triggered.
  onTapTxtButton() {
    Get.toNamed(
      AppRoutes.userProfileScreen,
    );
  }
}
