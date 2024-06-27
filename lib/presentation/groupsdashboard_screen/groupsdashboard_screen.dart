import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_image.dart';
import '../../widgets/app_bar/appbar_subtitle_four.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/groupsdashboard_controller.dart';
import 'models/grouplist_item_model.dart';
import 'widgets/grouplist_item_widget.dart'; // ignore_for_file: must_be_immutable

class GroupsdashboardScreen extends GetWidget<GroupsdashboardController> {
  const GroupsdashboardScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary.withOpacity(1),
        appBar: _buildAppBar(),
        body: Column(
          children: [
            SizedBox(height: 12.v),
            _buildFeaturedSection(),
            SizedBox(height: 22.v),
            _buildGroupList()
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
      centerTitle: true,
      title: Container(
        width: double.maxFinite,
        decoration: AppDecoration.gradientIndigoAToCyan400011,
        child: Column(
          children: [
            SizedBox(height: 13.v),
            AppbarImage(
              imagePath: ImageConstant.imgPlusPrimary,
              margin: EdgeInsets.only(
                left: 20.h,
                right: 324.h,
              ),
            ),
            AppbarSubtitleFour(
              text: "msg_groups_dashboard".tr,
              margin: EdgeInsets.symmetric(horizontal: 96.h),
            ),
            SizedBox(height: 10.v)
          ],
        ),
      ),
      styleType:
          Style.bgGradientnameindigoA70001opacity04namecyan40001opacity04,
    );
  }

  /// Section Widget
  Widget _buildFeaturedImage() {
    return Container(
      height: 170.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 2.h),
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgWebaliserTptx,
            height: 170.v,
            width: double.maxFinite,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(
                left: 26.h,
                right: 26.h,
                bottom: 14.v,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_group_name".tr,
                    style: CustomTextStyles.titleLargeOpenSansPrimary,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: 6.h),
                    child: Text(
                      "lbl_about".tr,
                      style: CustomTextStyles.bodySmallBluegray10002,
                    ),
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
  Widget _buildFeaturedSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 10.h),
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        children: [_buildFeaturedImage()],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupList() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(right: 4.h),
      child: Obx(
        () => ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: controller
              .groupsdashboardModelObj.value.grouplistItemList.value.length,
          itemBuilder: (context, index) {
            GrouplistItemModel model = controller
                .groupsdashboardModelObj.value.grouplistItemList.value[index];
            return GrouplistItemWidget(
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
