import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_app_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_button.dart';
import '../../widgets/custom_outlined_button.dart';
import '../community_forums_home_page/community_forums_home_page.dart';
import '../community_forums_response_screen/community_forums_response_screen.dart';
import '../homepage_container1_page/homepage_container1_page.dart';
import 'controller/grouppage_v2_controller.dart';
import 'models/slidergroupname_item_model.dart';
import 'widgets/slidergroupname_item_widget.dart'; // ignore_for_file: must_be_immutable

class GrouppageV2Screen extends GetWidget<GrouppageV2Controller> {
  const GrouppageV2Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: SizedBox(
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildPublicPrivateSection(),
                SizedBox(height: 20.v),
                _buildCreatePostSection(),
                SizedBox(height: 10.v),
                _buildPostSection(),
                SizedBox(height: 34.v),
                _buildPostSection1()
              ],
            ),
          ),
        ),
        bottomNavigationBar: Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: _buildNavigationBar(),
        ),
        floatingActionButton: CustomFloatingButton(
          height: 54,
          width: 60,
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
  Widget _buildPublicPrivateSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 16.h,
        right: 18.h,
      ),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => CarouselSlider.builder(
                options: CarouselOptions(
                  height: 168.v,
                  initialPage: 0,
                  autoPlay: true,
                  viewportFraction: 1.0,
                  enableInfiniteScroll: false,
                  scrollDirection: Axis.horizontal,
                  onPageChanged: (index, reason) {
                    controller.sliderIndex.value = index;
                  },
                ),
                itemCount: controller.grouppageV2ModelObj.value
                    .slidergroupnameItemList.value.length,
                itemBuilder: (context, index, realIndex) {
                  SlidergroupnameItemModel model = controller
                      .grouppageV2ModelObj
                      .value
                      .slidergroupnameItemList
                      .value[index];
                  return SlidergroupnameItemWidget(
                    model,
                    onTapImgLeftArrowImage: () {
                      onTapImgLeftArrowImage();
                    },
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 16.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Align(
                    alignment: Alignment.center,
                    child: Column(
                      children: [
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.symmetric(horizontal: 16.h),
                          child: Row(
                            children: [
                              Text(
                                "lbl_public".tr,
                                style: CustomTextStyles.labelLargeRobotoPrimary,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text(
                                  "lbl_private".tr,
                                  style: CustomTextStyles
                                      .labelLargeRobotoCyan40001,
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(height: 38.v),
                        SizedBox(
                          width: double.maxFinite,
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: SizedBox(
                              height: 50.v,
                              width: double.maxFinite,
                              child: Stack(
                                alignment: Alignment.center,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.imgAvatar32x32,
                                    height: 32.adaptSize,
                                    width: 32.adaptSize,
                                    radius: BorderRadius.circular(
                                      16.h,
                                    ),
                                    alignment: Alignment.bottomCenter,
                                  ),
                                  Row(
                                    children: [
                                      SizedBox(
                                        height: 50.v,
                                        width: 32.h,
                                        child: Stack(
                                          alignment: Alignment.bottomCenter,
                                          children: [
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgAvatar32x32,
                                              height: 32.adaptSize,
                                              width: double.maxFinite,
                                              radius: BorderRadius.circular(
                                                16.h,
                                              ),
                                            ),
                                            CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgPeople1,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              alignment: Alignment.topCenter,
                                            )
                                          ],
                                        ),
                                      ),
                                      SizedBox(width: 2.h),
                                      Expanded(
                                        child: Column(
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Text(
                                              "msg_of_members".tr,
                                              style: CustomTextStyles
                                                  .bodySmallRobotoBlueA400,
                                            ),
                                            SizedBox(height: 2.v),
                                            SizedBox(
                                              width: double.maxFinite,
                                              child: Row(
                                                children: [
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgAvatar32x32,
                                                    height: 32.adaptSize,
                                                    width: 32.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                      16.h,
                                                    ),
                                                  ),
                                                  CustomImageView(
                                                    imagePath: ImageConstant
                                                        .imgAvatar32x32,
                                                    height: 32.adaptSize,
                                                    width: 32.adaptSize,
                                                    radius:
                                                        BorderRadius.circular(
                                                      16.h,
                                                    ),
                                                    margin: EdgeInsets.only(
                                                        left: 2.h),
                                                  ),
                                                  Spacer(),
                                                  CustomOutlinedButton(
                                                    height: 30.v,
                                                    width: 92.h,
                                                    text: "lbl_view_more"
                                                        .tr
                                                        .toUpperCase(),
                                                    buttonTextStyle:
                                                        CustomTextStyles
                                                            .labelMediumRoboto,
                                                    onPressed: () {
                                                      onTapViewmore();
                                                    },
                                                  )
                                                ],
                                              ),
                                            )
                                          ],
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(width: 14.h),
                SizedBox(
                  width: 96.h,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        decoration: AppDecoration
                            .gradientOnPrimaryContainerToPurple
                            .copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder8,
                        ),
                        width: double.maxFinite,
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgContrast,
                              height: 12.adaptSize,
                              width: 12.adaptSize,
                              alignment: Alignment.bottomCenter,
                            ),
                            Text(
                              "lbl_join_group".tr,
                              style: CustomTextStyles
                                  .labelLargeOpenSansOnErrorContainer,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 2.v),
                      CustomElevatedButton(
                        height: 18.v,
                        text: "lbl_group_chat".tr,
                        leftIcon: SizedBox(
                          child: CustomImageView(
                            imagePath: ImageConstant.imgUserOnerrorcontainer,
                            height: 16.v,
                            width: 18.h,
                          ),
                        ),
                        buttonStyle: CustomButtonStyles.none,
                        decoration: CustomButtonStyles
                            .gradientLightBlueToCyanDecoration,
                        buttonTextStyle:
                            CustomTextStyles.labelLargeOpenSansOnErrorContainer,
                        onPressed: () {
                          onTapGroupchat();
                        },
                      ),
                      SizedBox(height: 2.v),
                      Container(
                        width: double.maxFinite,
                        decoration: AppDecoration.fillPinkA.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Column(
                          mainAxisSize: MainAxisSize.min,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              "msg_moderator_dashboard".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: CustomTextStyles
                                  .labelMediumOnErrorContainer
                                  .copyWith(
                                height: 1.60,
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
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildCreatePostSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 16.h),
          decoration: AppDecoration.mainwhite.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              SizedBox(height: 8.v),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  children: [
                    CustomImageView(
                      imagePath: ImageConstant.imgAvatar,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      radius: BorderRadius.circular(
                        20.h,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Padding(
                        padding: EdgeInsets.only(
                          left: 8.h,
                          bottom: 8.v,
                        ),
                        child: Text(
                          "msg_what_s_happening".tr,
                          style: CustomTextStyles.bodyLargeInterBluegray600,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 16.v),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: Container(
                        padding: EdgeInsets.symmetric(vertical: 6.v),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgImageBlueGray600,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgGif,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 16.h),
                              onTap: () {
                                onTapImgGifoneoneone();
                              },
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEmoji,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                              margin: EdgeInsets.only(left: 16.h),
                            )
                          ],
                        ),
                      ),
                    ),
                    CustomElevatedButton(
                      width: 72.h,
                      text: "lbl_post".tr,
                      buttonStyle: CustomButtonStyles.fillBlueATL18,
                      buttonTextStyle:
                          CustomTextStyles.titleMediumInterOnErrorContainer,
                      onPressed: () {
                        onTapPost();
                      },
                    )
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
  Widget _buildPostSection() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle1,
                  height: 32.adaptSize,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildPostHeaderSection(
                    userName: "lbl_helena".tr,
                    timeAgo: "lbl_3_min_ago".tr,
                  ),
                  SizedBox(height: 12.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: 298.adaptSize,
                    width: 298.adaptSize,
                    radius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "msg_post_description".tr,
                    style: CustomTextStyles.bodyMediumInter,
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildPostActionsSection(
                      favoritethree: ImageConstant.imgFavoriteBlack900,
                      likesCounter: "lbl_21_likes".tr,
                      starsCounter: "lbl_21_stars".tr,
                      commentsCounter: "lbl_4_comments".tr,
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
  Widget _buildPostSection1() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 4.h),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 32.adaptSize,
            width: 32.adaptSize,
            decoration: AppDecoration.fillPrimaryContainer.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder16,
            ),
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle1,
                  height: 32.adaptSize,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildPostHeaderSection(
                      userName: "lbl_helena".tr,
                      timeAgo: "lbl_3_min_ago".tr,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgImage,
                    height: 298.adaptSize,
                    width: double.maxFinite,
                    radius: BorderRadius.circular(
                      4.h,
                    ),
                  ),
                  SizedBox(height: 12.v),
                  Text(
                    "msg_post_description".tr,
                    style: CustomTextStyles.bodyMediumInter,
                  ),
                  SizedBox(height: 12.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: _buildPostActionsSection(
                      favoritethree: ImageConstant.imgFavoriteBlack90028x28,
                      likesCounter: "lbl_21_likes".tr,
                      starsCounter: "lbl_21_stars".tr,
                      commentsCounter: "lbl_4_comments".tr,
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
  Widget _buildNavigationBar() {
    return CustomBottomAppBar(
      onChanged: (BottomBarEnum type) {
        Get.toNamed(getCurrentRoute(type), id: 1);
      },
    );
  }

  /// Common widget
  Widget _buildPostHeaderSection({
    required String userName,
    required String timeAgo,
  }) {
    return Row(
      children: [
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                userName,
                style: CustomTextStyles.titleSmallSemiBold_1.copyWith(
                  color: appTheme.black900,
                ),
              ),
              SizedBox(height: 2.v),
              Text(
                timeAgo,
                style: CustomTextStyles.bodySmallInterGray60003.copyWith(
                  color: appTheme.gray60003,
                ),
              )
            ],
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgIconMore,
          height: 24.adaptSize,
          width: 24.adaptSize,
        )
      ],
    );
  }

  /// Common widget
  Widget _buildPostActionsSection({
    required String favoritethree,
    required String likesCounter,
    required String starsCounter,
    required String commentsCounter,
  }) {
    return Row(
      children: [
        CustomImageView(
          imagePath: favoritethree,
          height: 28.adaptSize,
          width: 28.adaptSize,
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            likesCounter,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgLock,
          height: 20.v,
          width: 16.h,
          margin: EdgeInsets.only(left: 16.h),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            starsCounter,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        ),
        CustomImageView(
          imagePath: ImageConstant.imgMessageSquare,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(left: 16.h),
        ),
        Padding(
          padding: EdgeInsets.only(left: 8.h),
          child: Text(
            commentsCounter,
            style: theme.textTheme.titleSmall!.copyWith(
              color: appTheme.black900,
            ),
          ),
        )
      ],
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
  onTapImgLeftArrowImage() {
    Get.back();
  }

  /// Navigates to the listofgroupmembersScreen when the action is triggered.
  onTapViewmore() {
    Get.toNamed(
      AppRoutes.listofgroupmembersScreen,
    );
  }

  /// Navigates to the groupGroupChatScreen when the action is triggered.
  onTapGroupchat() {
    Get.toNamed(
      AppRoutes.groupGroupChatScreen,
    );
  }

  /// Navigates to the stickersScreen when the action is triggered.
  onTapImgGifoneoneone() {
    Get.toNamed(
      AppRoutes.stickersScreen,
    );
  }

  /// Navigates to the writeInGroupScreen when the action is triggered.
  onTapPost() {
    Get.toNamed(
      AppRoutes.writeInGroupScreen,
    );
  }
}
