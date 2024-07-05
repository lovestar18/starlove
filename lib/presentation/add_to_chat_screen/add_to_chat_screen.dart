import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_image.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_search_view.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/add_to_chat_controller.dart';
import 'models/userprofilelist3_item_model.dart';
import 'widgets/userprofilelist3_item_widget.dart'; // ignore_for_file: must_be_immutable

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
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
            vertical: 6.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 4.h),
                      child: CustomSearchView(
                        controller: controller.searchController,
                        hintText: "lbl_search".tr,
                        hintStyle: CustomTextStyles.bodyLargeInterGray50001,
                      ),
                    ),
                    SizedBox(height: 18.v),
                    _buildUserProfileList()
                  ],
                ),
              ),
              SizedBox(height: 4.v)
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
      leadingWidth: 25.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftIndigo900,
        margin: EdgeInsets.only(
          left: 19.h,
          top: 19.v,
          bottom: 24.v,
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
  Widget _buildUserProfileList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 6.v,
            );
          },
          itemCount: controller
              .addToChatModelObj.value.userprofilelist3ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofilelist3ItemModel model = controller
                .addToChatModelObj.value.userprofilelist3ItemList.value[index];
            return Userprofilelist3ItemWidget(
              model,
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

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
