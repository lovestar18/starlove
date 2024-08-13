import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import 'controller/group_group_chat_controller.dart';
import 'models/group_group_chat_model.dart';
import 'models/groupgrid2_item_model.dart';
import 'widgets/groupgrid2_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class GroupGroupChatPage extends StatelessWidget {
  GroupGroupChatPage({Key? key})
      : super(
          key: key,
        );

  GroupGroupChatController controller =
      Get.put(GroupGroupChatController(GroupGroupChatModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: Colors.transparent,
        body: Container(
          width: double.maxFinite,
          height: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0.5, 0),
              end: Alignment(0.5, 1),
              colors: [
                theme.colorScheme.onPrimary.withOpacity(1),
                appTheme.gray100
              ],
            ),
          ),
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 20.h),
            decoration: AppDecoration.linear,
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
                      _buildGroupRow()
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
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
          itemCount: controller
              .groupGroupChatModelObj.value.groupgrid2ItemList.value.length,
          itemBuilder: (context, index) {
            Groupgrid2ItemModel model = controller
                .groupGroupChatModelObj.value.groupgrid2ItemList.value[index];
            return Groupgrid2ItemWidget(
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
  Widget _buildGroupRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: _buildGroupColumnName(
              groupnameOne: "lbl_group_name3".tr,
              descriptionOne: "lbl_description".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: _buildImageStackTwo(
              twentyOne: "lbl_20".tr,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: _buildGroupColumnName(
                groupnameOne: "lbl_group_name3".tr,
                descriptionOne: "lbl_description".tr,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: _buildImageStackTwo(
              twentyOne: "lbl_20".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildGroupColumnName({
    required String groupnameOne,
    required String descriptionOne,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          groupnameOne,
          style: CustomTextStyles.labelLargeInterMedium.copyWith(
            color: appTheme.blueGray90001,
          ),
        ),
        SizedBox(height: 2.v),
        Text(
          descriptionOne,
          style: CustomTextStyles.bodySmallInter.copyWith(
            color: appTheme.blueGray30001,
          ),
        )
      ],
    );
  }

  /// Common widget
  Widget _buildImageStackTwo({required String twentyOne}) {
    return SizedBox(
      height: 28.v,
      width: 70.h,
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
                colors: [theme.colorScheme.errorContainer, appTheme.cyan400],
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
                decoration:
                    AppDecoration.gradientErrorContainerToCyan400.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder14,
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      twentyOne,
                      style:
                          CustomTextStyles.labelMediumInterOnPrimary.copyWith(
                        color: theme.colorScheme.onPrimary.withOpacity(1),
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
}
