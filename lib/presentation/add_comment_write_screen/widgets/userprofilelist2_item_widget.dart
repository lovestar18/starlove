import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/add_comment_write_controller.dart';
import '../models/userprofilelist2_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist2ItemWidget extends StatelessWidget {
  Userprofilelist2ItemWidget(this.userprofilelist2ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilelist2ItemModel userprofilelist2ItemModelObj;

  var controller = Get.find<AddCommentWriteController>();

  @override
  Widget build(BuildContext context) {
    return Column(
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
                            style: CustomTextStyles.labelLargeInter,
                          ),
                          TextSpan(
                            text: "lbl_4h2".tr,
                            style:
                                CustomTextStyles.labelLargeInterBluegray30001_1,
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        userprofilelist2ItemModelObj.userDescription!.value,
                        style: CustomTextStyles.bodyMediumInter_2,
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Spacer(
                flex: 20,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Obx(
                  () => Text(
                    userprofilelist2ItemModelObj.replyText!.value,
                    style: CustomTextStyles.labelMediumInter11,
                  ),
                ),
              ),
              Spacer(
                flex: 79,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgTelevisionBlueGray30001,
                height: 16.v,
                width: 14.h,
              ),
              Padding(
                padding: EdgeInsets.only(left: 4.h),
                child: Obx(
                  () => Text(
                    userprofilelist2ItemModelObj.replytext1!.value,
                    style: CustomTextStyles.labelMediumInter,
                  ),
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgFavorite,
                height: 12.adaptSize,
                width: 12.adaptSize,
                margin: EdgeInsets.only(left: 18.h),
              ),
              Obx(
                () => Text(
                  userprofilelist2ItemModelObj.replytext2!.value,
                  style: CustomTextStyles.labelMediumInter,
                ),
              )
            ],
          ),
        ),
        SizedBox(height: 10.v),
        SizedBox(
          width: double.maxFinite,
          child: Divider(),
        )
      ],
    );
  }
}
