import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_bottom_bar.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_text_form_field.dart';
import '../community_forums_home1_page/community_forums_home1_page.dart';
import '../feed_page/feed_page.dart';
import '../homepage_page/homepage_page.dart';
import '../imagepicker_tab_container_page/imagepicker_tab_container_page.dart';
import '../profile_options_one_bottomsheet/profile_options_one_bottomsheet.dart';
import 'controller/feed_tab_container_controller.dart';
import 'models/listyour_story_item_model.dart';
import 'widgets/listyour_story_item_widget.dart'; // ignore_for_file: must_be_immutable

class FeedTabContainerScreen extends GetWidget<FeedTabContainerController> {
  const FeedTabContainerScreen({Key? key})
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
          width: double.maxFinite,
          child: SingleChildScrollView(
            child: Column(
              children: [
                _buildAvatarSection(),
                SizedBox(height: 32.v),
                _buildForjewTab(),
                SizedBox(
                  height: 994.v,
                  width: double.maxFinite,
                  child: TabBarView(
                    controller: controller.tabviewController,
                    children: [FeedPage(), FeedPage()],
                  ),
                )
              ],
            ),
          ),
        ),
        bottomNavigationBar: _buildBottomNavigation(),
      ),
    );
  }

  /// Section Widget
  Widget _buildAvatarSection() {
    return Container(
      height: 320.v,
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 2.h,
        right: 6.h,
      ),
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              height: 256.v,
              decoration: AppDecoration.gradientErrorContainerToCyan,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  Padding(
                    padding: EdgeInsets.only(right: 4.h),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                            width: 228.h,
                            child: Text(
                              "msg_welcome_to_forjew".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.center,
                              style: CustomTextStyles.titleMediumOnPrimaryMedium
                                  .copyWith(
                                height: 1.23,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(height: 2.v),
                        CustomIconButton(
                          height: 34.adaptSize,
                          width: 34.adaptSize,
                          padding: EdgeInsets.all(10.h),
                          decoration: IconButtonStyleHelper.outlineOnPrimary,
                          child: CustomImageView(
                            imagePath: ImageConstant.imgMegaphoneOnprimary,
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 256.v,
                    child: Obx(
                      () => ListView.separated(
                        padding: EdgeInsets.only(
                          top: 30.v,
                          right: 4.h,
                          bottom: 72.v,
                        ),
                        scrollDirection: Axis.horizontal,
                        separatorBuilder: (context, index) {
                          return SizedBox(
                            width: 16.h,
                          );
                        },
                        itemCount: controller.feedTabContainerModelObj.value
                            .listyourStoryItemList.value.length,
                        itemBuilder: (context, index) {
                          ListyourStoryItemModel model = controller
                              .feedTabContainerModelObj
                              .value
                              .listyourStoryItemList
                              .value[index];
                          return ListyourStoryItemWidget(
                            model,
                          );
                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 18.h,
              right: 22.h,
            ),
            child: Row(
              children: [
                Expanded(
                  child: Container(
                    width: double.maxFinite,
                    padding: EdgeInsets.symmetric(
                      horizontal: 6.h,
                      vertical: 10.v,
                    ),
                    decoration: AppDecoration.outlineBlack.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder8,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: 4.h),
                          child: CustomTextFormField(
                            controller: controller.avatarController,
                            hintText: "msg_what_s_happening".tr,
                            hintStyle:
                                CustomTextStyles.bodyMediumBluegray3000114,
                            textInputAction: TextInputAction.done,
                            prefix: Container(
                              margin: EdgeInsets.fromLTRB(6.h, 4.v, 8.h, 4.v),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  20.h,
                                ),
                              ),
                              child: CustomImageView(
                                imagePath: ImageConstant.imgAvatar,
                                height: 40.adaptSize,
                                width: 40.adaptSize,
                              ),
                            ),
                            prefixConstraints: BoxConstraints(
                              maxHeight: 50.v,
                            ),
                            borderDecoration:
                                TextFormFieldStyleHelper.outlineGrayTL8,
                          ),
                        ),
                        SizedBox(height: 10.v),
                        Container(
                          width: double.maxFinite,
                          margin: EdgeInsets.only(left: 4.h),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgImageBlueGray900,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                              ),
                              CustomImageView(
                                imagePath: ImageConstant.imgGifBlueGray900,
                                height: 24.adaptSize,
                                width: 24.adaptSize,
                                margin: EdgeInsets.only(left: 16.h),
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 16.h),
                                child: CustomIconButton(
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgEmojiBlueGray90001,
                                  ),
                                ),
                              ),
                              Spacer(),
                              CustomElevatedButton(
                                height: 36.v,
                                width: 72.h,
                                text: "lbl_post".tr,
                                buttonStyle: CustomButtonStyles.none,
                                decoration: CustomButtonStyles
                                    .gradientErrorContainerToCyanDecoration,
                                buttonTextStyle:
                                    CustomTextStyles.titleSmallOnPrimary_2,
                              )
                            ],
                          ),
                        )
                      ],
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

  /// Section Widget
  Widget _buildForjewTab() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 22.h,
        right: 28.h,
      ),
      child: Column(
        children: [
          SizedBox(
            height: 26.v,
            width: double.maxFinite,
            child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.primary,
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w700,
              ),
              unselectedLabelColor: appTheme.blueGray90001,
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w600,
              ),
              indicatorColor: theme.colorScheme.errorContainer,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_forjew".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_following".tr,
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
  Widget _buildBottomNavigation() {
    return CustomBottomBar(
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
