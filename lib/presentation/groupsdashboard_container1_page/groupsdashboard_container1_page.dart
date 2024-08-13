import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../community_forums_home1_page/community_forums_home1_page.dart';
import '../homepage_page/homepage_page.dart';
import '../imagepicker_tab_container_page/imagepicker_tab_container_page.dart';
import '../profile_options_one_bottomsheet/profile_options_one_bottomsheet.dart';
import 'controller/groupsdashboard_container1_controller.dart';
import 'models/groupgrid_item_model.dart';
import 'models/groupsdashboard_container1_model.dart';
import 'widgets/groupgrid_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupsdashboardContainer1Page extends StatelessWidget {
  GroupsdashboardContainer1Page({Key? key})
      : super(
          key: key,
        );

  GroupsdashboardContainer1Controller controller = Get.put(
      GroupsdashboardContainer1Controller(
          GroupsdashboardContainer1Model().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          _buildGroupGrid(),
                          SizedBox(height: 16.v),
                          _buildImageRow()
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    _buildImageRowTwo()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomBar() {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
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
          itemCount: controller.groupsdashboardContainer1ModelObj.value
              .groupgridItemList.value.length,
          itemBuilder: (context, index) {
            GroupgridItemModel model = controller
                .groupsdashboardContainer1ModelObj
                .value
                .groupgridItemList
                .value[index];
            return GroupgridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildImageRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1958,
            height: 130.v,
            width: 162.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          ),
          SizedBox(width: 10.h),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle1959,
            height: 130.v,
            width: 162.h,
            radius: BorderRadius.circular(
              5.h,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildImageRowTwo() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "lbl_group_name3".tr,
                  style: CustomTextStyles.labelLargeInterMedium,
                ),
                SizedBox(height: 2.v),
                Text(
                  "lbl_description".tr,
                  style: CustomTextStyles.bodySmallInter,
                )
              ],
            ),
          ),
          Container(
            height: 28.v,
            width: 70.h,
            margin: EdgeInsets.only(left: 4.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse3884,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 12.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse3883,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse3882,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 10.h),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    strokeWidth: 1.h,
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        theme.colorScheme.errorContainer,
                        appTheme.cyan400
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                    child: Container(
                      height: 28.v,
                      width: 28.h,
                      decoration: AppDecoration.gradientErrorContainerToCyan400
                          .copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "lbl_20".tr,
                            style: CustomTextStyles.labelMediumInterOnPrimary,
                          )
                        ],
                      ),
                    ),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "lbl_group_name3".tr,
                    style: CustomTextStyles.labelLargeInterMedium,
                  ),
                  SizedBox(height: 2.v),
                  Text(
                    "lbl_description".tr,
                    style: CustomTextStyles.bodySmallInter,
                  )
                ],
              ),
            ),
          ),
          Container(
            height: 28.v,
            width: 70.h,
            margin: EdgeInsets.only(left: 4.h),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse3884,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                  alignment: Alignment.centerLeft,
                  margin: EdgeInsets.only(left: 10.h),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse3883,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgEllipse3882,
                  height: 28.adaptSize,
                  width: 28.adaptSize,
                  radius: BorderRadius.circular(
                    14.h,
                  ),
                  alignment: Alignment.centerRight,
                  margin: EdgeInsets.only(right: 10.h),
                ),
                Align(
                  alignment: Alignment.centerRight,
                  child: OutlineGradientButton(
                    padding: EdgeInsets.only(
                      left: 1.h,
                      top: 1.v,
                      right: 1.h,
                      bottom: 1.v,
                    ),
                    strokeWidth: 1.h,
                    gradient: LinearGradient(
                      begin: Alignment(0.5, 0),
                      end: Alignment(0.5, 1),
                      colors: [
                        theme.colorScheme.errorContainer,
                        appTheme.cyan400
                      ],
                    ),
                    corners: Corners(
                      topLeft: Radius.circular(14),
                      topRight: Radius.circular(14),
                      bottomLeft: Radius.circular(14),
                      bottomRight: Radius.circular(14),
                    ),
                    child: Container(
                      height: 28.v,
                      width: 28.h,
                      decoration: AppDecoration.gradientErrorContainerToCyan400
                          .copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder14,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text(
                            "lbl_20".tr,
                            style: CustomTextStyles.labelMediumInterOnPrimary,
                          )
                        ],
                      ),
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
}
