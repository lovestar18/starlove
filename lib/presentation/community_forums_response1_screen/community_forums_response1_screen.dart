import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_title_button.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/community_forums_response1_controller.dart'; // ignore_for_file: must_be_immutable

class CommunityForumsResponse1Screen
    extends GetWidget<CommunityForumsResponse1Controller> {
  const CommunityForumsResponse1Screen({Key? key})
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
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              _buildUserPost(),
              _buildCommentInput(),
              SizedBox(height: 4.v)
            ],
          ),
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
      title: AppbarTitleButton(),
      styleType: Style.bgGradientnameprimaryopacity04namecyan40001opacity04_1,
    );
  }

  /// Section Widget
  Widget _buildUserPost() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAvatar2,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(width: 10.h),
                Expanded(
                  child: Padding(
                    padding: EdgeInsets.only(top: 4.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_robert_fox".tr,
                          style: CustomTextStyles.titleLargeRoboto,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "lbl_robertfox2".tr,
                          style: CustomTextStyles.bodyMediumRobotoBluegray40001,
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 24.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_minim_dolor_in_amet".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.headlineMediumBlack900.copyWith(
                height: 1.31,
              ),
            ),
          ),
          SizedBox(height: 12.v),
          Text(
            "msg_september_23_2021".tr,
            style: CustomTextStyles.bodyLargeGray60003,
          ),
          SizedBox(height: 10.v),
          Text(
            "msg_minim_dolor_in_amet2".tr,
            maxLines: 3,
            overflow: TextOverflow.ellipsis,
            style: CustomTextStyles.bodyLarge17.copyWith(
              height: 1.42,
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.topCenter,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 22.h),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite28x28,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                    ),
                    SizedBox(width: 4.h),
                    Expanded(
                      child: Align(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            Text(
                              "lbl_20k".tr,
                              style: CustomTextStyles.titleMediumMedium16,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgComment,
                              height: 40.adaptSize,
                              width: 40.adaptSize,
                              radius: BorderRadius.circular(
                                20.h,
                              ),
                              margin: EdgeInsets.only(left: 22.h),
                            ),
                            Padding(
                              padding: EdgeInsets.only(left: 4.h),
                              child: Text(
                                "lbl_567".tr,
                                style: CustomTextStyles.titleMediumMedium16,
                              ),
                            )
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCommentInput() {
    return Container(
      padding: EdgeInsets.all(6.h),
      decoration: AppDecoration.fillGray5002.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: controller.commentController,
              hintText: "lbl_write_a_comment".tr,
              hintStyle: CustomTextStyles.bodyLargeGray60002,
              textInputAction: TextInputAction.done,
            ),
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgBiemojismile,
            height: 20.adaptSize,
            width: 20.adaptSize,
          ),
          SizedBox(width: 12.h),
          CustomImageView(
            imagePath: ImageConstant.imgFluentsend28filled,
            height: 28.adaptSize,
            width: 28.adaptSize,
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
}
