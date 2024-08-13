import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import 'controller/add_to_chat_controller.dart';
import 'models/userprofile_item_model.dart';
import 'widgets/userprofile_item_widget.dart'; // ignore_for_file: must_be_immutable

class AddToChatScreen extends GetWidget<AddToChatController> {
  const AddToChatScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Column(
          children: [
            _buildHeaderSection(),
            SizedBox(height: 16.v),
            _buildMembersListSection(),
            SizedBox(height: 4.v)
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildHeaderSection() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(vertical: 12.v),
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup42732093472x374,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        children: [
          CustomAppBar(
            leadingWidth: 60.h,
            leading: AppbarLeadingIconbuttonOne(
              imagePath: ImageConstant.imgArrowLeftOnprimary,
              margin: EdgeInsets.only(left: 26.h),
              onTap: () {
                onTapArrowleftone();
              },
            ),
            centerTitle: true,
            title: AppbarSubtitle(
              text: "lbl_add_members".tr,
            ),
          ),
          SizedBox(height: 12.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildMembersListSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          SizedBox(
            width: double.maxFinite,
            child: Obx(
              () => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(
                    height: 14.v,
                  );
                },
                itemCount: controller
                    .addToChatModelObj.value.userprofileItemList.value.length,
                itemBuilder: (context, index) {
                  UserprofileItemModel model = controller
                      .addToChatModelObj.value.userprofileItemList.value[index];
                  return UserprofileItemWidget(
                    model,
                  );
                },
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
