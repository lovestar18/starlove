import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/story_controller.dart'; // ignore_for_file: must_be_immutable

class StoryScreen extends GetWidget<StoryController> {
  const StoryScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.black900,
        body: Container(
          height: 682.v,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle,
                height: 666.v,
                width: double.maxFinite,
                radius: BorderRadius.circular(
                  8.h,
                ),
              ),
              _buildStoryTimeline()
            ],
          ),
        ),
        bottomNavigationBar: _buildChatBar(),
      ),
    );
  }

  /// Section Widget
  Widget _buildTopInfo() {
    return Expanded(
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: Divider(
                    color: theme.colorScheme.primary.withOpacity(1),
                  ),
                ),
                Expanded(
                  child: Divider(
                    color: theme.colorScheme.primary.withOpacity(1),
                  ),
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: double.maxFinite,
                        child: Divider(),
                      ),
                      Container(
                        height: 2.v,
                        width: 46.h,
                        decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withOpacity(1),
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Divider(),
                ),
                Expanded(
                  child: Divider(),
                )
              ],
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUserPicture1,
                  height: 32.adaptSize,
                  width: 32.adaptSize,
                  radius: BorderRadius.circular(
                    16.h,
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 12.h,
                      bottom: 4.v,
                    ),
                    child: Text(
                      "lbl_craig_love".tr,
                      style: CustomTextStyles.titleSmallPrimary_1,
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Padding(
                    padding: EdgeInsets.only(bottom: 6.v),
                    child: Text(
                      "lbl_4h".tr,
                      style: CustomTextStyles.bodyMediumInterOnError,
                    ),
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgClose,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStoryTimeline() {
    return Padding(
      padding: EdgeInsets.only(
        left: 14.h,
        top: 8.v,
        right: 14.h,
      ),
      child: Row(
        children: [_buildTopInfo()],
      ),
    );
  }

  /// Section Widget
  Widget _buildChatBar() {
    return Container(
      height: 42.v,
      margin: EdgeInsets.only(
        left: 12.h,
        right: 22.h,
        bottom: 42.v,
      ),
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              controller: controller.messageController,
              hintText: "lbl_send_message".tr,
              textInputAction: TextInputAction.done,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(4.h, 4.v, 12.h, 4.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 34.adaptSize,
                  width: 34.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 42.v,
              ),
              contentPadding: EdgeInsets.only(
                top: 12.v,
                right: 30.h,
                bottom: 12.v,
              ),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgSave,
            height: 20.v,
            width: 24.h,
            margin: EdgeInsets.only(left: 12.h),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgShape,
            height: 3.v,
            width: 14.h,
            margin: EdgeInsets.only(left: 18.h),
          )
        ],
      ),
    );
  }
}
