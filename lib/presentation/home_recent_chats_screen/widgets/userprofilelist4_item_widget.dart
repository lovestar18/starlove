import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../controller/home_recent_chats_controller.dart';
import '../models/userprofilelist4_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class Userprofilelist4ItemWidget extends StatelessWidget {
  Userprofilelist4ItemWidget(this.userprofilelist4ItemModelObj, {Key? key})
      : super(
          key: key,
        );

  Userprofilelist4ItemModel userprofilelist4ItemModelObj;

  var controller = Get.find<HomeRecentChatsController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: double.maxFinite,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgAvatar,
                height: 40.adaptSize,
                width: 40.adaptSize,
                radius: BorderRadius.circular(
                  20.h,
                ),
              ),
              SizedBox(width: 6.h),
              Expanded(
                child: Align(
                  alignment: Alignment.bottomLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_craig_love".tr,
                              style: CustomTextStyles.labelLargeBold_1,
                            ),
                            TextSpan(
                              text: " ",
                            ),
                            TextSpan(
                              text: "lbl_4h2".tr,
                              style: CustomTextStyles.bodyMediumBluegray30001_1,
                            )
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 2.v),
                      Obx(
                        () => Text(
                          userprofilelist4ItemModelObj.userStatus!.value,
                          style: CustomTextStyles.bodyMedium_3,
                        ),
                      )
                    ],
                  ),
                ),
              ),
              SizedBox(width: 6.h),
              IconButton(
                onPressed: () {},
                constraints: BoxConstraints(
                  minHeight: 20.adaptSize,
                  minWidth: 20.adaptSize,
                ),
                padding: EdgeInsets.all(0),
                icon: SizedBox(
                  width: 20.adaptSize,
                  height: 20.adaptSize,
                  child: CustomImageView(
                    imagePath: ImageConstant.imageNotFound,
                  ),
                ),
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
    );
  }
}
