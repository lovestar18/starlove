import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/frame_1000003656_controller.dart';
import 'models/userprofileslist1_item_model.dart';
import 'widgets/userprofileslist1_item_widget.dart'; // ignore_for_file: must_be_immutable

class Frame1000003656Screen extends GetWidget<Frame1000003656Controller> {
  const Frame1000003656Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildGroupMembersRow(),
            SizedBox(height: 14.v),
            CustomSearchView(
              controller: controller.searchController,
              hintText: "lbl_search".tr,
              hintStyle: CustomTextStyles.bodyMediumBluegray3000114_1,
            ),
            SizedBox(height: 14.v),
            _buildMembersCountRow(),
            SizedBox(height: 14.v),
            _buildUserProfilesList()
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildGroupMembersRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Align(
            alignment: Alignment.bottomCenter,
            child: Padding(
              padding: EdgeInsets.only(bottom: 2.v),
              child: Text(
                "lbl_group_members".tr,
                style: CustomTextStyles.titleMediumBlack900,
              ),
            ),
          ),
          Expanded(
            child: Container(
              height: 28.v,
              child: Stack(
                alignment: Alignment.centerRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3884,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    radius: BorderRadius.circular(
                      14.h,
                    ),
                    margin: EdgeInsets.only(right: 70.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3883,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    radius: BorderRadius.circular(
                      14.h,
                    ),
                    margin: EdgeInsets.only(right: 60.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse388228x28,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    radius: BorderRadius.circular(
                      14.h,
                    ),
                    margin: EdgeInsets.only(right: 50.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3886,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    radius: BorderRadius.circular(
                      14.h,
                    ),
                    margin: EdgeInsets.only(right: 40.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3887,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    radius: BorderRadius.circular(
                      14.h,
                    ),
                    margin: EdgeInsets.only(right: 30.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3888,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    radius: BorderRadius.circular(
                      14.h,
                    ),
                    margin: EdgeInsets.only(right: 20.h),
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3889,
                    height: 28.adaptSize,
                    width: 28.adaptSize,
                    radius: BorderRadius.circular(
                      14.h,
                    ),
                    margin: EdgeInsets.only(right: 10.h),
                  ),
                  Container(
                    width: 28.adaptSize,
                    height: 28.adaptSize,
                    alignment: Alignment.center,
                    decoration:
                        AppDecoration.gradientErrorContainerToCyan400.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder14,
                    ),
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
                      child: Text(
                        "lbl_20".tr,
                        textAlign: TextAlign.center,
                        style: CustomTextStyles.labelMediumOnPrimary,
                      ),
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
  Widget _buildMembersCountRow() {
    return SizedBox(
      width: 338.h,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 2.v),
            child: Text(
              "lbl_78_members".tr,
              style: theme.textTheme.titleMedium,
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "lbl_add_new".tr,
              textAlign: TextAlign.center,
              style: CustomTextStyles.labelMediumBluegray90001.copyWith(
                decoration: TextDecoration.underline,
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfilesList() {
    return SizedBox(
      width: double.maxFinite,
      child: Obx(
        () => ListView.separated(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          separatorBuilder: (context, index) {
            return SizedBox(
              height: 14.v,
            );
          },
          itemCount: controller.frame1000003656ModelObj.value
              .userprofileslist1ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofileslist1ItemModel model = controller
                .frame1000003656ModelObj
                .value
                .userprofileslist1ItemList
                .value[index];
            return Userprofileslist1ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
