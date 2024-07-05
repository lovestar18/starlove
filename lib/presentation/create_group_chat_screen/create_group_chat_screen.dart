import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../theme/custom_button_style.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_outlined_button.dart';
import 'controller/create_group_chat_controller.dart';
import 'models/userprofile1_item_model.dart';
import 'widgets/userprofile1_item_widget.dart'; // ignore_for_file: must_be_immutable

class CreateGroupChatScreen extends GetWidget<CreateGroupChatController> {
  const CreateGroupChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Column(
          children: [
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: 12.v,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadiusStyle.roundedBorder16,
                image: DecorationImage(
                  image: AssetImage(
                    ImageConstant.imgGroup4751,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _buildTelevisionSection(),
                  SizedBox(height: 86.v),
                  _buildIncludedChatsSection(),
                  SizedBox(height: 20.v),
                  _buildUserProfilesSection(),
                  SizedBox(height: 24.v)
                ],
              ),
            ),
            SizedBox(height: 4.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildTelevisionSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 12.h,
        right: 14.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgTelevisionBlueGray600011,
            height: 6.v,
            width: 22.h,
            radius: BorderRadius.circular(
              3.h,
            ),
            alignment: Alignment.center,
          ),
          SizedBox(height: 16.v),
          Text(
            "lbl_edit_group_chat".tr,
            style: CustomTextStyles.bodyLargeOpenSansIndigo90002,
          ),
          SizedBox(height: 28.v),
          Text(
            "lbl_name".tr,
            style: CustomTextStyles.bodyMediumIndigo90002,
          ),
          SizedBox(height: 36.v),
          Text(
            "lbl_description".tr,
            style: CustomTextStyles.bodyMediumIndigo90002,
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildIncludedChatsSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(left: 12.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            "msg_included_chats_3".tr,
            style: CustomTextStyles.labelLargeOpenSansBluegray60001,
          ),
          GestureDetector(
            onTap: () {
              onTapTxtAddpeople();
            },
            child: Text(
              "lbl_add_people".tr,
              style: CustomTextStyles.labelLargeOpenSansBlueA400,
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfilesSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.only(
        left: 12.h,
        right: 14.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(right: 164.h),
            child: Obx(
              () => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 24.v,
                  );
                },
                itemCount: controller.createGroupChatModelObj.value
                    .userprofile1ItemList.value.length,
                itemBuilder: (context, index) {
                  Userprofile1ItemModel model = controller
                      .createGroupChatModelObj
                      .value
                      .userprofile1ItemList
                      .value[index];
                  return Userprofile1ItemWidget(
                    model,
                  );
                },
              ),
            ),
          ),
          SizedBox(height: 68.v),
          SizedBox(
            width: double.maxFinite,
            child: Align(
              alignment: Alignment.center,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomOutlinedButton(
                      height: 52.v,
                      width: 118.h,
                      text: "lbl_cancel".tr,
                      buttonStyle: CustomButtonStyles.outlineBlueATL4,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOpenSansOnErrorContainer,
                    ),
                    CustomElevatedButton(
                      height: 52.v,
                      width: 118.h,
                      text: "lbl_edit_group".tr,
                      margin: EdgeInsets.only(right: 16.h),
                      buttonStyle: CustomButtonStyles.fillBlueATL41,
                      buttonTextStyle:
                          CustomTextStyles.titleSmallOpenSansOnErrorContainer,
                      onPressed: () {
                        onTapEditgroup();
                      },
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

  onTapTxtAddpeople() {}
  onTapEditgroup() {}
}
