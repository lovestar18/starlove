import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_iconbutton.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import '../friends_page/friends_page.dart';
import 'controller/friends_tab_container_controller.dart'; // ignore_for_file: must_be_immutable

class FriendsTabContainerScreen
    extends GetWidget<FriendsTabContainerController> {
  const FriendsTabContainerScreen({Key? key})
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
          width: 338.h,
          child: Column(
            children: [
              _buildHeaderSection(),
              SizedBox(
                width: double.maxFinite,
                child: Column(
                  children: [
                    _buildSearchSection(),
                    SizedBox(
                      height: 606.v,
                      width: double.maxFinite,
                      child: TabBarView(
                        controller: controller.tabviewController,
                        children: [FriendsPage(), FriendsPage()],
                      ),
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
  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 20.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup7820,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomAppBar(
            leadingWidth: 52.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 18.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitleOne(
              text: "lbl_friends".tr,
            ),
            actions: [
              AppbarTrailingIconbutton(
                imagePath: ImageConstant.imgAddUser1,
                margin: EdgeInsets.only(right: 23.h),
              )
            ],
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSearchSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          CustomSearchView(
            controller: controller.searchController,
            hintText: "lbl_search".tr,
            hintStyle: CustomTextStyles.bodyMediumBluegray3000114_1,
          ),
          SizedBox(height: 16.v),
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
                fontWeight: FontWeight.w600,
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
                    "lbl_followers".tr,
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

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
