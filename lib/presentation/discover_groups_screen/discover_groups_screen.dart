import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_search_view.dart';
import '../community_forums_home1_page/community_forums_home1_page.dart';
import '../homepage_page/homepage_page.dart';
import '../imagepicker_tab_container_page/imagepicker_tab_container_page.dart';
import '../profile_options_one_bottomsheet/profile_options_one_bottomsheet.dart';
import 'controller/discover_groups_controller.dart';
import 'models/groupgrid1_item_model.dart';
import 'widgets/groupgrid1_item_widget.dart'; // ignore_for_file: must_be_immutable

class DiscoverGroupsScreen extends GetWidget<DiscoverGroupsController> {
  const DiscoverGroupsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: SizedBox(
          width: 374.h,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              _buildHeaderSection(),
              SizedBox(height: 8.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    width: 374.h,
                    padding: EdgeInsets.symmetric(horizontal: 20.h),
                    child: Column(
                      children: [
                        CustomSearchView(
                          controller: controller.searchController,
                          hintText: "lbl_search".tr,
                          hintStyle:
                              CustomTextStyles.bodyMediumBluegray3000114_1,
                        ),
                        SizedBox(height: 14.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Column(
                            children: [
                              _buildGroupGrid(),
                              SizedBox(height: 14.v),
                              _buildGroupRow()
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: AppDecoration.gradientErrorContainerToCyan,
      child: Column(
        children: [
          SizedBox(height: 10.v),
          CustomAppBar(
            leadingWidth: 54.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 20.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_discover_groups".tr,
            ),
          ),
          SizedBox(height: 8.v),
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.symmetric(horizontal: 20.h),
            child: Column(
              children: [
                Text(
                  "msg_expand_your_jewish".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: CustomTextStyles.bodyMediumOnPrimary_2,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupGrid() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 171.v,
            crossAxisCount: 2,
            mainAxisSpacing: 14.h,
            crossAxisSpacing: 10.h,
          ),
          physics: NeverScrollableScrollPhysics(),
          itemCount: controller
              .discoverGroupsModelObj.value.groupgrid1ItemList.value.length,
          itemBuilder: (context, index) {
            Groupgrid1ItemModel model = controller
                .discoverGroupsModelObj.value.groupgrid1ItemList.value[index];
            return Groupgrid1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: _buildGroupColumnTwo(
              imageOne: ImageConstant.imgRectangle1958,
              groupnameOne: "lbl_group_name3".tr,
              descriptionOne: "lbl_description".tr,
            ),
          ),
          SizedBox(width: 10.h),
          Expanded(
            child: _buildGroupColumnTwo(
              imageOne: ImageConstant.imgRectangle1959,
              groupnameOne: "lbl_group_name3".tr,
              descriptionOne: "lbl_description".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomNavigation() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildGroupColumnTwo({
    required String imageOne,
    required String groupnameOne,
    required String descriptionOne,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CustomImageView(
          imagePath: imageOne,
          height: 130.v,
          width: double.maxFinite,
          radius: BorderRadius.circular(
            5.h,
          ),
        ),
        SizedBox(height: 8.v),
        Text(
          groupnameOne,
          style: CustomTextStyles.labelLargeInterMedium.copyWith(
            color: appTheme.blueGray90001,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          descriptionOne,
          style: CustomTextStyles.bodySmallInter.copyWith(
            color: appTheme.blueGray30001,
          ),
        )
      ],
    );
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homepagePage;
      case BottomBarEnum.Groups:
        return AppRoutes.imagepickerTabContainerPage;
      case BottomBarEnum.Post:
        return "/";
      case BottomBarEnum.Kibutz:
        return AppRoutes.communityForumsHome1Page;
      case BottomBarEnum.Profile:
        return AppRoutes.profileOptionsOneBottomsheet;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepagePage:
        return HomepagePage();
      case AppRoutes.imagepickerTabContainerPage:
        return ImagepickerTabContainerPage();
      case AppRoutes.communityForumsHome1Page:
        return CommunityForumsHome1Page();
      case AppRoutes.profileOptionsOneBottomsheet:
        return ProfileOptionsOneBottomsheet();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
