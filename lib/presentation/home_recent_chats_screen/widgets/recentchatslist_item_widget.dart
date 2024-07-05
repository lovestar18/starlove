import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../controller/home_recent_chats_controller.dart';
import '../models/recentchatslist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class RecentchatslistItemWidget extends StatelessWidget {
  RecentchatslistItemWidget(this.recentchatslistItemModelObj,
      {Key? key, this.onTapListitem})
      : super(
          key: key,
        );

  RecentchatslistItemModel recentchatslistItemModelObj;

  var controller = Get.find<HomeRecentChatsController>();

  VoidCallback? onTapListitem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapListitem?.call();
      },
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomIconButton(
            height: 40.adaptSize,
            width: 40.adaptSize,
            child: CustomImageView(
              imagePath: ImageConstant.imgLockBlue100,
            ),
          ),
          SizedBox(width: 16.h),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Obx(
                  () => Text(
                    recentchatslistItemModelObj.titleText!.value,
                    style: CustomTextStyles.labelLargeInterGray90007,
                  ),
                ),
                SizedBox(height: 2.v),
                Obx(
                  () => Text(
                    recentchatslistItemModelObj.descriptionText!.value,
                    style: CustomTextStyles.bodySmallInterGray60004,
                  ),
                )
              ],
            ),
          ),
          SizedBox(width: 16.h),
          Container(
            width: 24.adaptSize,
            height: 24.adaptSize,
            alignment: Alignment.center,
            decoration: AppDecoration.fillLightBlueA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder12,
            ),
            child: Obx(
              () => Text(
                recentchatslistItemModelObj.badgeText!.value,
                textAlign: TextAlign.center,
                style: CustomTextStyles.labelMediumInterOnErrorContainer,
              ),
            ),
          )
        ],
      ),
    );
  }
}
