import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_outlined_button.dart';
import '../controller/new_chat_controller.dart';
import '../models/userprofilelist2_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist2ItemWidget extends StatelessWidget {
  Userprofilelist2ItemWidget(this.userprofilelist2ItemModelObj,
      {Key? key, this.onTapViewButton})
      : super(
          key: key,
        );

  Userprofilelist2ItemModel userprofilelist2ItemModelObj;

  var controller = Get.find<NewChatController>();

  VoidCallback? onTapViewButton;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerRight,
      child: Row(
        children: [
          SizedBox(
            width: 228.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgAvatar60x60,
                  height: 60.adaptSize,
                  width: 60.adaptSize,
                  radius: BorderRadius.circular(
                    30.h,
                  ),
                ),
                SizedBox(width: 10.h),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Obx(
                        () => Text(
                          userprofilelist2ItemModelObj.frankesteban!.value,
                          style: theme.textTheme.bodyMedium,
                        ),
                      ),
                      SizedBox(height: 2.v),
                      Obx(
                        () => Text(
                          userprofilelist2ItemModelObj.webdevelopment!.value,
                          style: theme.textTheme.bodySmall,
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 4.h),
          _buildViewButton(),
          SizedBox(width: 4.h),
          _buildAddButton()
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildViewButton() {
    return Expanded(
      child: CustomOutlinedButton(
        height: 32.v,
        text: "lbl_view".tr.toUpperCase(),
        buttonTextStyle: theme.textTheme.labelMedium!,
        onPressed: () {
          onTapViewButton?.call();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildAddButton() {
    return Expanded(
      child: CustomOutlinedButton(
        height: 32.v,
        text: "lbl_add".tr.toUpperCase(),
        buttonTextStyle: theme.textTheme.labelMedium!,
      ),
    );
  }
}
