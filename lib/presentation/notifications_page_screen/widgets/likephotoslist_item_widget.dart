import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/notifications_page_controller.dart';
import '../models/likephotoslist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class LikephotoslistItemWidget extends StatelessWidget {
  LikephotoslistItemWidget(this.likephotoslistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  LikephotoslistItemModel likephotoslistItemModelObj;

  var controller = Get.find<NotificationsPageController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 8.v,
      ),
      decoration: AppDecoration.mainwhite,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Obx(
            () => CustomImageView(
              imagePath: likephotoslistItemModelObj.likedPostsImage!.value,
              height: 44.adaptSize,
              width: 44.adaptSize,
              radius: BorderRadius.circular(
                22.h,
              ),
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Align(
              alignment: Alignment.bottomLeft,
              child: Padding(
                padding: EdgeInsets.only(
                  top: 14.v,
                  bottom: 8.v,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: "lbl_karennne".tr,
                            style: CustomTextStyles.labelLargeOpenSansGray90005,
                          ),
                          TextSpan(
                            text: "lbl_liked_3_posts".tr,
                            style: CustomTextStyles.bodyMediumGray90005,
                          ),
                          TextSpan(
                            text: "lbl_3h".tr,
                            style: CustomTextStyles.bodyMediumBlack900,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 12.v),
                    Obx(
                      () => CustomImageView(
                        imagePath:
                            likephotoslistItemModelObj.likedPostsImage1!.value,
                        height: 44.v,
                        width: 140.h,
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
