import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/delete_account_ii_controller.dart'; // ignore_for_file: must_be_immutable

class DeleteAccountIiScreen extends GetWidget<DeleteAccountIiController> {
  const DeleteAccountIiScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          padding: EdgeInsets.only(bottom: 94.v),
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(1, 0.5),
              end: Alignment(0, 0.5),
              colors: [
                appTheme.cyan40001,
                theme.colorScheme.onErrorContainer.withOpacity(1)
              ],
            ),
          ),
          child: Container(
            height: 716.v,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 8.h,
                      vertical: 36.v,
                    ),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadiusStyle.customBorderTL70,
                      image: DecorationImage(
                        image: AssetImage(
                          ImageConstant.imgGroup4795,
                        ),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        _buildConfirmationSection(),
                        SizedBox(height: 30.v),
                        _buildAirplaneRow(),
                        SizedBox(height: 30.v),
                        _buildActionButtons(),
                        SizedBox(height: 74.v)
                      ],
                    ),
                  ),
                ),
                Container(
                  height: double.maxFinite,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      IntrinsicHeight(
                        child: Align(
                          alignment: Alignment.topCenter,
                          child: Padding(
                            padding: EdgeInsets.only(top: 58.v),
                            child: Row(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowLeftGray100011,
                                  height: 16.v,
                                  width: 18.h,
                                  alignment: Alignment.bottomCenter,
                                  margin: EdgeInsets.only(bottom: 4.v),
                                  onTap: () {
                                    onTapImgArrowleftone();
                                  },
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 48.h),
                                  child: Text(
                                    "lbl_delete_account".tr,
                                    style: CustomTextStyles
                                        .titleLargePoppinsBluegray90004,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                      ),
                      Container(
                        width: double.maxFinite,
                        padding: EdgeInsets.symmetric(
                          horizontal: 16.h,
                          vertical: 182.v,
                        ),
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(
                              ImageConstant.imgGroup4807,
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(height: 18.v),
                            Container(
                              width: double.maxFinite,
                              padding: EdgeInsets.symmetric(
                                horizontal: 44.h,
                                vertical: 36.v,
                              ),
                              decoration: AppDecoration.mainwhite.copyWith(
                                borderRadius: BorderRadiusStyle.circleBorder20,
                              ),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  Text(
                                    "lbl_delete_account2".tr,
                                    style: CustomTextStyles
                                        .titleLargeOpenSansTeal900,
                                  ),
                                  SizedBox(height: 22.v),
                                  Text(
                                    "msg_are_you_sure_you2".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.center,
                                    style: CustomTextStyles
                                        .titleLargeOpenSansBluegray90005,
                                  ),
                                  SizedBox(height: 22.v),
                                  SizedBox(
                                    width: double.maxFinite,
                                    child: Text(
                                      "msg_by_deleting_your".tr,
                                      maxLines: 5,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.center,
                                      style: CustomTextStyles
                                          .bodySmallBluegray90005,
                                    ),
                                  ),
                                  SizedBox(height: 30.v),
                                  _buildYesDeleteButton1(),
                                  SizedBox(height: 10.v),
                                  _buildCancelButton1(),
                                  SizedBox(height: 12.v)
                                ],
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(right: 4.h),
          child: _buildNavigationBar(),
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
  Widget _buildConfirmationSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 8.h,
        right: 10.h,
      ),
      padding: EdgeInsets.symmetric(horizontal: 10.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Text(
              "msg_are_you_sure_you".tr,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: CustomTextStyles.titleSmallPoppinsBluegray90005,
            ),
          ),
          SizedBox(height: 20.v),
          Container(
            height: 120.v,
            width: 316.h,
            decoration: BoxDecoration(
              color: theme.colorScheme.onErrorContainer.withOpacity(1),
              borderRadius: BorderRadius.circular(
                18.h,
              ),
            ),
          ),
          SizedBox(height: 86.v),
          Text(
            "msg_please_enter_your2".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.titleSmallPoppinsBluegray90004,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAirplaneRow() {
    return Container(
      margin: EdgeInsets.only(left: 2.h),
      padding: EdgeInsets.symmetric(
        horizontal: 4.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.mainwhite.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 12.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.img,
                    height: 18.v,
                    width: 144.h,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgAirplane,
                    height: 8.v,
                    width: 24.h,
                    margin: EdgeInsets.only(right: 8.h),
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
  Widget _buildYesDeleteButton() {
    return CustomElevatedButton(
      height: 44.v,
      width: 218.h,
      text: "msg_yes_delete_account".tr,
      margin: EdgeInsets.only(left: 2.h),
      buttonStyle: CustomButtonStyles.fillCyan,
      buttonTextStyle: CustomTextStyles.titleSmallPoppinsBluegray90004,
    );
  }

  /// Section Widget
  Widget _buildCancelButton() {
    return CustomElevatedButton(
      height: 44.v,
      width: 218.h,
      text: "lbl_cancel2".tr,
      margin: EdgeInsets.only(left: 2.h),
      buttonStyle: CustomButtonStyles.fillOnErrorContainerTL22,
      buttonTextStyle: CustomTextStyles.titleSmallPoppinsTeal900,
    );
  }

  /// Section Widget
  Widget _buildActionButtons() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 8.h,
        right: 10.h,
      ),
      child: Column(
        children: [
          _buildYesDeleteButton(),
          SizedBox(height: 24.v),
          _buildCancelButton()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildYesDeleteButton1() {
    return CustomElevatedButton(
      height: 44.v,
      text: "msg_yes_delete_account".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 14.h,
      ),
      buttonStyle: CustomButtonStyles.fillCyan,
      buttonTextStyle: CustomTextStyles.titleSmallOpenSansBluegray90004,
    );
  }

  /// Section Widget
  Widget _buildCancelButton1() {
    return CustomElevatedButton(
      height: 44.v,
      text: "lbl_cancel2".tr,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 14.h,
      ),
      buttonStyle: CustomButtonStyles.fillTeal,
      buttonTextStyle: CustomTextStyles.titleSmallOpenSansTeal900,
    );
  }

  /// Section Widget
  Widget _buildNavigationBar() {
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
  onTapImgArrowleftone() {
    Get.back();
  }
}
