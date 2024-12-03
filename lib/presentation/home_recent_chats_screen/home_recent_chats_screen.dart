import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle_two.dart';
import '../../widgets/app_bar/appbar_trailing_image_one.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_page/community_forums_response_page.dart';
import '../homepage_page/homepage_page.dart';
import 'controller/home_recent_chats_controller.dart';
import 'models/userprofile2_item_model.dart';
import 'widgets/userprofile2_item_widget.dart'; // ignore_for_file: must_be_immutable

class HomeRecentChatsScreen extends GetWidget<HomeRecentChatsController> {
  const HomeRecentChatsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          height: 768.v,
          child: Stack(
            alignment: Alignment.center,
            children: [
              _buildFloatingActionButton(),
              Container(
                width: double.maxFinite,
                decoration: AppDecoration.gradientPrimaryToGray,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: double.maxFinite,
                      child: _buildAppBar(),
                    ),
                    SizedBox(height: 4.v),
                    _buildUsernameRow()
                  ],
                ),
              )
            ],
          ),
        ),
        bottomNavigationBar: _buildBottomAppBar(),
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
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
      height: 56,
      width: 56,
      backgroundColor: appTheme.blueA40001,
      decoration: FloatingButtonStyleHelper.fillBlueA,
      alignment: Alignment.bottomRight,
      child: CustomImageView(
        imagePath: ImageConstant.imgFramePrimary,
        height: 28.0.v,
        width: 28.0.h,
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      height: 52.v,
      leadingWidth: 46.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgNewMessage1,
        margin: EdgeInsets.only(
          left: 16.h,
          top: 5.v,
          bottom: 17.v,
        ),
        onTap: () {
          onTapNewmessageone();
        },
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "lbl_kibitz_chat".tr,
      ),
      actions: [
        AppbarTrailingImageOne(
          imagePath: ImageConstant.imgSearchBlueGray60001,
          margin: EdgeInsets.only(
            top: 12.v,
            right: 15.h,
            bottom: 16.v,
          ),
        )
      ],
    );
  }

  /// Section Widget
  Widget _buildAllChatsColumn() {
    return Expanded(
      child: Container(
        width: double.maxFinite,
        decoration: AppDecoration.linearDropShadow.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: double.maxFinite,
              child: Row(
                mainAxisSize: MainAxisSize.max,
                children: [
                  CustomElevatedButton(
                    height: 26.v,
                    width: 62.h,
                    text: "lbl_all_chats".tr,
                    buttonStyle: CustomButtonStyles.fillBlueATL4,
                    buttonTextStyle: CustomTextStyles.bodySmallPrimary,
                  ),
                  CustomElevatedButton(
                    height: 26.v,
                    width: 32.h,
                    text: "lbl_1_1".tr,
                    margin: EdgeInsets.only(left: 24.h),
                    buttonStyle: CustomButtonStyles.outlineBlueGrayTL4,
                    buttonTextStyle: CustomTextStyles.bodySmallIndigo90002_1,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 24.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 2.v,
                    ),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Text(
                      "lbl_groups".tr,
                      textAlign: TextAlign.center,
                      style: CustomTextStyles.bodySmallIndigo90002_1,
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 24.v),
            SizedBox(
              width: double.maxFinite,
              child: Obx(
                () => ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(
                      height: 20.v,
                    );
                  },
                  itemCount: controller.homeRecentChatsModelObj.value
                      .userprofile2ItemList.value.length,
                  itemBuilder: (context, index) {
                    Userprofile2ItemModel model = controller
                        .homeRecentChatsModelObj
                        .value
                        .userprofile2ItemList
                        .value[index];
                    return Userprofile2ItemWidget(
                      model,
                    );
                  },
                ),
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildUsernameRow() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 14.h),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [_buildAllChatsColumn()],
      ),
    );
  }

  /// Section Widget
  Widget _buildBottomAppBar() {
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

  /// Navigates to the addToChatScreen when the action is triggered.
  onTapNewmessageone() {
    Get.toNamed(
      AppRoutes.addToChatScreen,
    );
  }
}
