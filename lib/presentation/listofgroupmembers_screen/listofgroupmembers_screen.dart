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
import 'controller/listofgroupmembers_controller.dart';
import 'models/userprofilelist6_item_model.dart';
import 'widgets/userprofilelist6_item_widget.dart'; // ignore_for_file: must_be_immutable

class ListofgroupmembersScreen extends GetWidget<ListofgroupmembersController> {
  const ListofgroupmembersScreen({Key? key})
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
            vertical: 4.v,
          ),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomSearchView(
                      controller: controller.searchController,
                      hintText: "lbl_search".tr,
                      hintStyle: CustomTextStyles.bodyLargeInterGray50001,
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
          onTap: () {
            onTapFloatingactionb();
          },
          child: CustomImageView(
            imagePath: ImageConstant.imgSearchOnerrorcontainer,
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
      leadingWidth: 26.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowLeftIndigo900,
        margin: EdgeInsets.only(
          left: 20.h,
          top: 18.v,
          bottom: 25.v,
        ),
        onTap: () {
          onTapArrowleftone();
        },
      ),
      title: AppbarSubtitle(
        text: "lbl_group_members".tr,
        margin: EdgeInsets.only(left: 33.h),
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfileList() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 220.h),
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 14.v,
            );
          },
          itemCount: controller.listofgroupmembersModelObj.value
              .userprofilelist6ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofilelist6ItemModel model = controller
                .listofgroupmembersModelObj
                .value
                .userprofilelist6ItemList
                .value[index];
            return Userprofilelist6ItemWidget(
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

  /// Navigates to the createNewGroupScreen when the action is triggered.
  onTapFloatingactionb() {
    Get.toNamed(
      AppRoutes.createNewGroupScreen,
    );
  }
}
