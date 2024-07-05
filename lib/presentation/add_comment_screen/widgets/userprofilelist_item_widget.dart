import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/add_comment_controller.dart';
import '../models/userprofilelist_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilelistItemWidget extends StatelessWidget {
  UserprofilelistItemWidget(this.userprofilelistItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofilelistItemModel userprofilelistItemModelObj;

  var controller = Get.find<AddCommentController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 12.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.fillGray,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgEllipse19230x30,
            height: 30.adaptSize,
            width: 30.adaptSize,
            radius: BorderRadius.circular(
              15.0.adaptSize,
            ),
          ),
          SizedBox(width: 12.h),
          Expanded(
            child: Align(
              alignment: Alignment.centerLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Obx(
                    () => Text(
                      userprofilelistItemModelObj.username!.value,
                      style: CustomTextStyles.titleMediumOpenSansGray90014,
                    ),
                  ),
                  SizedBox(height: 2.v),
                  Obx(
                    () => Text(
                      userprofilelistItemModelObj.caption!.value,
                      style: CustomTextStyles.titleSmallOpenSansGray90014,
                    ),
                  ),
                  SizedBox(height: 10.v),
                  SizedBox(
                    width: double.maxFinite,
                    child: Row(
                      children: [
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Obx(
                            () => Text(
                              userprofilelistItemModelObj.time!.value,
                              style:
                                  CustomTextStyles.labelLargeOpenSansGray60003,
                            ),
                          ),
                        ),
                        Spacer(),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Obx(
                            () => Text(
                              userprofilelistItemModelObj.minutes!.value,
                              style:
                                  CustomTextStyles.labelLargeOpenSansGray60003,
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgStarOfDavidSolidBlack900,
                          height: 20.v,
                          width: 18.h,
                          margin: EdgeInsets.only(left: 6.h),
                        ),
                        Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                            padding: EdgeInsets.only(left: 8.h),
                            child: Obx(
                              () => Text(
                                userprofilelistItemModelObj.minutes1!.value,
                                style: CustomTextStyles
                                    .labelLargeOpenSansGray60003,
                              ),
                            ),
                          ),
                        ),
                        CustomImageView(
                          imagePath: ImageConstant.imgHeart,
                          height: 20.adaptSize,
                          width: 20.adaptSize,
                          margin: EdgeInsets.only(left: 4.h),
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
}
