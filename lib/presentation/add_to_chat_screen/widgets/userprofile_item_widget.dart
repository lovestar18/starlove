import 'package:flutter/material.dart';
import '../../../core/app_export.dart';
import '../../../widgets/custom_icon_button.dart';
import '../controller/add_to_chat_controller.dart';
import '../models/userprofile_item_model.dart'; // ignore: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(this.userprofileItemModelObj, {Key? key})
      : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<AddToChatController>();

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
              SizedBox(width: 4.h),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Obx(
                      () => Text(
                        userprofileItemModelObj.memberName!.value,
                        style: theme.textTheme.labelLarge,
                      ),
                    ),
                    SizedBox(height: 2.v),
                    Obx(
                      () => Text(
                        userprofileItemModelObj.username!.value,
                        style: theme.textTheme.bodySmall,
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(width: 4.h),
              CustomIconButton(
                height: 30.adaptSize,
                width: 30.adaptSize,
                padding: EdgeInsets.all(6.h),
                decoration: IconButtonStyleHelper.fillPrimary,
                alignment: Alignment.bottomCenter,
                child: CustomImageView(
                  imagePath: ImageConstant.imgPlus,
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
