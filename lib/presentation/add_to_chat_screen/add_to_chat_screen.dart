import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_search_view.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/add_to_chat_controller.dart';
import 'models/userprofilelist1_item_model.dart';
import 'widgets/userprofilelist1_item_widget.dart'; // ignore_for_file: must_be_immutable

class AddToChatScreen extends GetWidget<AddToChatController> {
  const AddToChatScreen({Key? key})
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
            SizedBox(height: 6.v),
            _buildSearchBar(),
            SizedBox(height: 18.v),
            _buildUserProfileList()
          ],
        ),
        bottomNavigationBar: _buildBottomNavigationBar(),
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
          top: 14.v,
          bottom: 29.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "msg_add_to_kibitz_chat".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchBar() {
    return Padding(
      padding: EdgeInsets.only(
        left: 12.h,
        right: 14.h,
      ),
      child: CustomSearchView(
        controller: controller.searchBarController,
        hintText: "lbl_search".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.centerRight,
        child: Padding(
          padding: EdgeInsets.only(left: 18.h),
          child: Obx(
            () => ListView.separated(
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return SizedBox(
                  height: 6.v,
                );
              },
              itemCount: controller.addToChatModelObj.value
                  .userprofilelist1ItemList.value.length,
              itemBuilder: (context, index) {
                Userprofilelist1ItemModel model = controller.addToChatModelObj
                    .value.userprofilelist1ItemList.value[index];
                return Userprofilelist1ItemWidget(
                  model,
                  onTapViewButton: () {
                    onTapViewButton();
                  },
                );
              },
            ),
          ),
        ),
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

  /// Navigates to the userProfileScreen when the action is triggered.
  onTapViewButton() {
    Get.toNamed(
      AppRoutes.userProfileScreen,
    );
  }
}
