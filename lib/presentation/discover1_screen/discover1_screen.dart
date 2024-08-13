import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle_one.dart';
import '../../widgets/app_bar/appbar_trailing_image.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/discover1_controller.dart';
import 'models/userprofilesgrid1_item_model.dart';
import 'models/userprofilesgrid_item_model.dart';
import 'widgets/userprofilesgrid1_item_widget.dart';
import 'widgets/userprofilesgrid_item_widget.dart'; // ignore_for_file: must_be_immutable

class Discover1Screen extends GetWidget<Discover1Controller> {
  const Discover1Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onErrorContainer.withOpacity(1),
        body: Column(
          children: [
            _buildHeaderSection(),
            SizedBox(height: 6.v),
            _buildSearchSection(),
            SizedBox(height: 14.v),
            _buildUserProfilesGrid1()
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildArrowNavigationSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 14.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup7821,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 62.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 28.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitleOne(
              text: "msg_discover_friends".tr,
            ),
            actions: [
              AppbarTrailingImage(
                imagePath: ImageConstant.imgMaximize,
                margin: EdgeInsets.only(right: 13.h),
              )
            ],
          ),
          SizedBox(height: 8.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfilesGrid() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 171.v,
            crossAxisCount: 2,
            mainAxisSpacing: 10.h,
            crossAxisSpacing: 10.h,
          ),
          physics: BouncingScrollPhysics(),
          itemCount: controller
              .discover1ModelObj.value.userprofilesgridItemList.value.length,
          itemBuilder: (context, index) {
            UserprofilesgridItemModel model = controller
                .discover1ModelObj.value.userprofilesgridItemList.value[index];
            return UserprofilesgridItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return SizedBox(
      height: 126.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Container(
            height: 116.v,
            width: 374.h,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment(0.5, 0),
                end: Alignment(0.5, 1),
                colors: [appTheme.indigoA400, appTheme.cyan40002],
              ),
            ),
          ),
          Container(
            margin: EdgeInsets.only(bottom: 24.v),
            padding: EdgeInsets.symmetric(horizontal: 12.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                  margin: EdgeInsets.only(left: 14.h),
                  decoration: AppDecoration.outlineBlueGray.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder14,
                  ),
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      CustomImageView(
                        imagePath:
                            ImageConstant.imgArrowLeftOnerrorcontainer12x8,
                        height: 12.v,
                        width: 8.h,
                      )
                    ],
                  ),
                ),
                Text(
                  "msg_discover_friends".tr,
                  style: theme.textTheme.titleLarge,
                ),
                Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.zero,
                  shape: RoundedRectangleBorder(
                    side: BorderSide(
                      color: appTheme.blueGray100,
                      width: 0.5.h,
                    ),
                    borderRadius: BorderRadiusStyle.roundedBorder14,
                  ),
                  child: Container(
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    padding: EdgeInsets.symmetric(vertical: 6.v),
                    decoration: AppDecoration.outlineBlueGray.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14,
                    ),
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        CustomImageView(
                          imagePath:
                              ImageConstant.imgArrowLeftOnerrorcontainer12x8,
                          height: 12.v,
                          width: 8.h,
                          alignment: Alignment.bottomCenter,
                        ),
                        IntrinsicHeight(
                          child: SizedBox(
                            width: 18.h,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                CustomImageView(
                                  imagePath: ImageConstant.imgLock,
                                  height: 18.v,
                                  width: 12.h,
                                ),
                                CustomImageView(
                                  imagePath:
                                      ImageConstant.imgPlusOnerrorcontainer,
                                  height: 6.adaptSize,
                                  width: 6.adaptSize,
                                  alignment: Alignment.bottomCenter,
                                )
                              ],
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
          Align(
            alignment: Alignment.topCenter,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 18.h,
                vertical: 10.v,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Padding(
                    padding: EdgeInsets.only(
                      left: 8.h,
                      top: 10.v,
                    ),
                    child: Text(
                      "",
                    ),
                  ),
                  Spacer(),
                  CustomImageView(
                    imagePath: ImageConstant.imgCellularConnection,
                    height: 12.v,
                    width: 18.h,
                    margin: EdgeInsets.only(bottom: 4.v),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgSettings,
                    height: 12.v,
                    width: 16.h,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      bottom: 4.v,
                    ),
                  ),
                  Container(
                    width: 26.h,
                    margin: EdgeInsets.only(
                      left: 6.h,
                      bottom: 4.v,
                    ),
                    decoration: AppDecoration.outlineOnErrorContainer.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder4,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Container(
                            height: 8.v,
                            width: 16.h,
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onErrorContainer
                                  .withOpacity(1),
                              borderRadius: BorderRadius.circular(
                                2.h,
                              ),
                            ),
                          ),
                        ),
                        SizedBox(width: 6.h),
                        CustomImageView(
                          imagePath: ImageConstant.imgCap,
                          height: 4.v,
                          width: 1.h,
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
    );
  }

  /// Section Widget
  Widget _buildSearchSection() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 12.v,
      ),
      decoration: AppDecoration.outlineGray20004.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder8,
      ),
      width: double.maxFinite,
      child: Row(
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgContrast,
            height: 14.adaptSize,
            width: 14.adaptSize,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_search".tr,
              style: CustomTextStyles.bodyMediumQuicksandBluegray30014,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfilesGrid1() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 18.h),
      child: Obx(
        () => GridView.builder(
          shrinkWrap: true,
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            mainAxisExtent: 171.v,
            crossAxisCount: 2,
            mainAxisSpacing: 14.h,
            crossAxisSpacing: 10.h,
          ),
          physics: BouncingScrollPhysics(),
          itemCount: controller
              .discover1ModelObj.value.userprofilesgrid1ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofilesgrid1ItemModel model = controller
                .discover1ModelObj.value.userprofilesgrid1ItemList.value[index];
            return Userprofilesgrid1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
