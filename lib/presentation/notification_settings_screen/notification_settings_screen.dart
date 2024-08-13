import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_icon_button.dart';
import '../../widgets/custom_switch.dart';
import 'controller/notification_settings_controller.dart';
import 'models/listgeneralnoti_item_model.dart';
import 'widgets/listgeneralnoti_item_widget.dart'; // ignore_for_file: must_be_immutable

class NotificationSettingsScreen
    extends GetWidget<NotificationSettingsController> {
  const NotificationSettingsScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildHeaderSection(),
            SizedBox(height: 22.v),
            _buildNotificationSettings(),
            SizedBox(height: 4.v)
          ],
        ),
        bottomNavigationBar: _buildSaveChangesButton(),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return SizedBox(
      height: 70.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Text(
                      "lbl_9_41".tr,
                      style: CustomTextStyles.titleMediumSFProTextBlack900,
                    ),
                  ),
                  SizedBox(height: 4.v),
                  SizedBox(
                    height: 34.v,
                    width: double.maxFinite,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Row(
                          children: [
                            CustomIconButton(
                              height: 34.adaptSize,
                              width: 34.adaptSize,
                              padding: EdgeInsets.all(4.h),
                              onTap: () {
                                onTapBtnArrowleftone();
                              },
                              child: CustomImageView(
                                imagePath: ImageConstant.imgArrowLeftOnprimary,
                              ),
                            ),
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Padding(
                                padding: EdgeInsets.only(
                                  left: 90.h,
                                  bottom: 2.v,
                                ),
                                child: Text(
                                  "lbl_settings".tr,
                                  style: CustomTextStyles.titleLargeSemiBold,
                                ),
                              ),
                            )
                          ],
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgArrowLeftGray10002,
                          height: 16.v,
                          width: 18.h,
                          alignment: Alignment.bottomLeft,
                          margin: EdgeInsets.only(
                            left: 16.h,
                            bottom: 4.v,
                          ),
                          onTap: () {
                            onTapImgArrowleftthree();
                          },
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle602670x372,
            height: 70.v,
            width: double.maxFinite,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNotificationSettings() {
    return SizedBox(
      width: double.maxFinite,
      child: Align(
        alignment: Alignment.center,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 20.h),
          child: Column(
            children: [
              SizedBox(
                width: double.maxFinite,
                child: Obx(
                  () => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(
                        height: 12.v,
                      );
                    },
                    itemCount: controller.notificationSettingsModelObj.value
                        .listgeneralnotiItemList.value.length,
                    itemBuilder: (context, index) {
                      ListgeneralnotiItemModel model = controller
                          .notificationSettingsModelObj
                          .value
                          .listgeneralnotiItemList
                          .value[index];
                      return ListgeneralnotiItemWidget(
                        model,
                      );
                    },
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              SizedBox(
                width: double.maxFinite,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "msg_post_notifications".tr,
                      style: theme.textTheme.titleSmall,
                    ),
                    Obx(
                      () => CustomSwitch(
                        value: controller.isSelectedSwitch.value,
                        onChange: (value) {
                          controller.isSelectedSwitch.value = value;
                        },
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
  Widget _buildSaveChangesButton() {
    return CustomElevatedButton(
      text: "lbl_save_changes2".tr,
      margin: EdgeInsets.only(
        left: 22.h,
        right: 16.h,
        bottom: 34.v,
      ),
      buttonTextStyle: CustomTextStyles.titleMediumOnPrimary_1,
    );
  }

  /// Navigates to the previous screen.
  onTapBtnArrowleftone() {
    Get.back();
  }

  /// Navigates to the previous screen.
  onTapImgArrowleftthree() {
    Get.back();
  }
}
