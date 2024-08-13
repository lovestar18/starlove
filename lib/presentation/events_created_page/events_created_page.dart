import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import '../../core/app_export.dart';
import 'controller/events_created_controller.dart';
import 'models/eventdetailsgrid_item_model.dart';
import 'models/events_created_model.dart';
import 'widgets/eventdetailsgrid_item_widget.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class EventsCreatedPage extends StatelessWidget {
  EventsCreatedPage({Key? key})
      : super(
          key: key,
        );

  EventsCreatedController controller =
      Get.put(EventsCreatedController(EventsCreatedModel().obs));

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray50,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          decoration: AppDecoration.fillGray50,
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
                          _buildEventDetailsGrid(),
                          SizedBox(height: 16.v),
                          _buildImageRow()
                        ],
                      ),
                    ),
                    SizedBox(height: 8.v),
                    _buildGroupNameRow()
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
  Widget _buildEventDetailsGrid() {
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
          itemCount: controller.eventsCreatedModelObj.value
              .eventdetailsgridItemList.value.length,
          itemBuilder: (context, index) {
            EventdetailsgridItemModel model = controller.eventsCreatedModelObj
                .value.eventdetailsgridItemList.value[index];
            return EventdetailsgridItemWidget(
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
  Widget _buildGroupNameRow() {
    return SizedBox(
      width: double.maxFinite,
      child: Row(
        children: [
          Expanded(
            child: _buildGroupNameColumnOne(
              groupnameOne: "lbl_group_name3".tr,
              descriptionOne: "lbl_description".tr,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: _buildImageStackOne(
              twentyOne: "lbl_20".tr,
            ),
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: _buildGroupNameColumnOne(
                groupnameOne: "lbl_group_name3".tr,
                descriptionOne: "lbl_description".tr,
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: _buildImageStackOne(
              twentyOne: "lbl_20".tr,
            ),
          )
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildGroupNameColumnOne({
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
  Widget _buildImageStackOne({required String twentyOne}) {
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
