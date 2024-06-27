import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/feed_controller.dart';
import '../models/userprofilelist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(this.userprofilelistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<FeedController>();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 68.h,
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.zero,
              shape: RoundedRectangleBorder(
                side: BorderSide(
                  width: 1.h,
                ),
                borderRadius: BorderRadiusStyle.circleBorder34,
              ),
              child: Container(
                height: 68.adaptSize,
                width: double.maxFinite,
                decoration: AppDecoration.outline.copyWith(
                  borderRadius: BorderRadiusStyle.circleBorder34,
                ),
                child: Stack(
                  alignment: Alignment.center,
                  children: [
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            userprofilelistItemModelObj.userimage1!.value,
                        height: 60.adaptSize,
                        width: double.maxFinite,
                        radius: BorderRadius.circular(
                          30.h,
                        ),
                      ),
                    ),
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            userprofilelistItemModelObj.userimage2!.value,
                        height: 26.adaptSize,
                        width: 26.adaptSize,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          SizedBox(height: 2.v),
          Obx(
            () => Text(
              userprofilelistItemModelObj.userText!.value,
              style: CustomTextStyles.labelLargePoppinsBlack900,
            ),
          )
        ],
      ),
    );
  }
}
