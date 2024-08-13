import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_search_view.dart';
import 'controller/event_members_controller.dart';
import 'models/userprofileslist2_item_model.dart';
import 'widgets/userprofileslist2_item_widget.dart'; // ignore_for_file: must_be_immutable

class EventMembersScreen extends GetWidget<EventMembersController> {
  const EventMembersScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray50,
        body: Column(
          children: [
            _buildAppBarSection(),
            Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 12.v,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomSearchView(
                    controller: controller.searchController,
                    hintText: "lbl_search".tr,
                    hintStyle: CustomTextStyles.bodyMediumBluegray3000114_1,
                  ),
                  SizedBox(height: 16.v),
                  Text(
                    "lbl_78_members".tr,
                    style: theme.textTheme.titleMedium,
                  ),
                  SizedBox(height: 16.v),
                  _buildUserProfilesList()
                ],
              ),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppBarSection() {
    return Container(
      width: double.maxFinite,
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            ImageConstant.imgGroup42732093460x374,
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
              text: "lbl_event_members".tr,
            ),
          ),
          SizedBox(height: 22.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildUserProfilesList() {
    return SizedBox(
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
          itemCount: controller.eventMembersModelObj.value
              .userprofileslist2ItemList.value.length,
          itemBuilder: (context, index) {
            Userprofileslist2ItemModel model = controller.eventMembersModelObj
                .value.userprofileslist2ItemList.value[index];
            return Userprofileslist2ItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
