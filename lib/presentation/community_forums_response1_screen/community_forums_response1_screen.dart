import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_subtitle_three.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
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
        appBar: _buildAppbarSection(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(vertical: 24.v),
          child: Column(
            children: [
              _buildUserPostSection(),
              CustomTextFormField(
                controller: controller.commentController,
                hintText: "lbl_write_a_comment".tr,
                hintStyle: CustomTextStyles.bodyLargeRobotoGray60002,
                textInputAction: TextInputAction.done,
                suffix: Container(
                  margin: EdgeInsets.symmetric(
                    horizontal: 30.h,
                    vertical: 10.v,
                  ),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgBiemojismile,
                    height: 20.adaptSize,
                    width: 20.adaptSize,
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 42.v,
                ),
                contentPadding: EdgeInsets.only(
                  left: 14.h,
                  top: 10.v,
                  bottom: 10.v,
                ),
                borderDecoration: TextFormFieldStyleHelper.fillGrayTL8,
                fillColor: appTheme.gray5001,
              ),
              SizedBox(height: 236.v)
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 14.h),
          child: _buildNavigationBarSection(),
        ),
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
  PreferredSizeWidget _buildAppbarSection() {
    return CustomAppBar(
      centerTitle: true,
      title: Container(
        width: double.maxFinite,
        decoration: AppDecoration.gradientIndigoAToCyan400011,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(height: 17.v),
            AppbarSubtitleThree(
              text: "msg_community_forums".tr,
              margin: EdgeInsets.only(
                left: 91.h,
                right: 94.h,
              ),
            ),
            SizedBox(height: 14.v)
          ],
        ),
      ),
      styleType:
          Style.bgGradientnameindigoA70001opacity04namecyan40001opacity04_1,
    );
  }

  /// Section Widget
  Widget _buildUserPostSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      padding: EdgeInsets.symmetric(horizontal: 12.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(left: 2.h),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAvatar2,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
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
            style: CustomTextStyles.bodyLargeRobotoGray60003,
          ),
          SizedBox(height: 10.v),
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_minim_dolor_in_amet2".tr,
              maxLines: 3,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyLargeRoboto.copyWith(
                height: 1.42,
              ),
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
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgFavoriteBlack90028x28,
                      height: 28.adaptSize,
                      width: 28.adaptSize,
                    ),
                    SizedBox(width: 4.h),
                    Expanded(
                      child: Row(
                        children: [
                          Text(
                            "lbl_20k".tr,
                            style: theme.textTheme.titleMedium,
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
                              style: theme.textTheme.titleMedium,
                            ),
                          )
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
    );
  }

  /// Section Widget
  Widget _buildNavigationBarSection() {
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
}
