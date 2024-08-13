import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/community_forums_response_one1_controller.dart';
import '../models/userprofilesection_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(this.userprofilesectionItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofilesectionItemModel userprofilesectionItemModelObj;

  var controller = Get.find<CommunityForumsResponseOne1Controller>();

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 74.v,
      child: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          Align(
            alignment: Alignment.topCenter,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgOval34x34,
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        radius: BorderRadius.circular(
                          16.h,
                        ),
                      ),
                      SizedBox(width: 8.h),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            RichText(
                              text: TextSpan(
                                children: [
                                  TextSpan(
                                    text: "lbl_craig_love2".tr,
                                    style: CustomTextStyles.labelLarge_1,
                                  ),
                                  TextSpan(
                                    text: "lbl_4h2".tr,
                                    style: CustomTextStyles
                                        .labelLargeBluegray30001,
                                  )
                                ],
                              ),
                              textAlign: TextAlign.left,
                            ),
                            SizedBox(height: 2.v),
                            Obx(
                              () => Text(
                                userprofilesectionItemModelObj
                                    .userDescription!.value,
                                style: CustomTextStyles.bodyMedium_3,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: double.maxFinite,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Obx(
                        () => Text(
                          userprofilesectionItemModelObj.replycount1!.value,
                          style: CustomTextStyles.labelMediumMedium,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 32.h),
                        child: Obx(
                          () => Text(
                            userprofilesectionItemModelObj.replycount2!.value,
                            style: CustomTextStyles.labelMediumMedium,
                          ),
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                width: double.maxFinite,
                margin: EdgeInsets.symmetric(horizontal: 12.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Spacer(
                      flex: 13,
                    ),
                    Align(
                      alignment: Alignment.bottomCenter,
                      child: Obx(
                        () => Text(
                          userprofilesectionItemModelObj.replyText!.value,
                          style: CustomTextStyles.labelMedium11,
                        ),
                      ),
                    ),
                    Spacer(
                      flex: 73,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgTelevisionBlueGray30001,
                      height: 16.v,
                      width: 14.h,
                    ),
                    Spacer(
                      flex: 13,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 12.adaptSize,
                      width: 12.adaptSize,
                      alignment: Alignment.bottomCenter,
                    )
                  ],
                ),
              ),
              SizedBox(height: 14.v),
              SizedBox(
                width: double.maxFinite,
                child: Divider(),
              )
            ],
          )
        ],
      ),
    );
  }
}
