import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/app_bar/appbar_leading_iconbutton_one.dart';
import '../../widgets/app_bar/appbar_subtitle.dart';
import '../../widgets/app_bar/custom_app_bar.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_switch.dart';
import '../../widgets/custom_text_form_field.dart';
import '../create_new_group_page/create_new_group_page.dart';
import '../edit_event_page/edit_event_page.dart';
import 'controller/create_new_group_tab_container_controller.dart'; // ignore_for_file: must_be_immutable
// ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class CreateNewGroupTabContainerScreen
    extends GetWidget<CreateNewGroupTabContainerController> {
  CreateNewGroupTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
        body: Form(
          key: _formKey,
          child: SizedBox(
            width: 338.h,
            child: Column(
              children: [
                _buildHeaderSection(),
                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [_buildContentSection(), _buildTabSection()],
                    ),
                  ),
                )
              ],
            ),
          ),
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
              text: "lbl_edit_page".tr,
            ),
          ),
          SizedBox(height: 14.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildContentSection() {
    return Container(
      width: double.maxFinite,
      margin: EdgeInsets.symmetric(horizontal: 20.h),
      child: Column(
        children: [
          SizedBox(
            height: 170.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgWebaliserTptx2,
                  height: 170.v,
                  width: double.maxFinite,
                  radius: BorderRadius.circular(
                    8.h,
                  ),
                ),
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(
                        ImageConstant.imgGroup7910,
                      ),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 136.v),
                      Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 10.h,
                          vertical: 4.v,
                        ),
                        decoration: AppDecoration.fillBlack900.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderBL8,
                        ),
                        width: double.maxFinite,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Align(
                              alignment: Alignment.bottomCenter,
                              child: Text(
                                "lbl_change_cover".tr,
                                style: CustomTextStyles.titleSmallOnPrimary,
                              ),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgMessageEdit,
                              height: 24.adaptSize,
                              width: 24.adaptSize,
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.v),
          CustomFloatingTextField(
            controller: controller.nameController,
            labelText: "lbl_group_name3".tr,
            labelStyle: theme.textTheme.bodyLarge!,
            hintText: "lbl_group_name3".tr,
            validator: (value) {
              if (!isText(value)) {
                return "err_msg_please_enter_valid_text";
              }
              return null;
            },
          ),
          SizedBox(height: 20.v),
          CustomTextFormField(
            controller: controller.groupdescriptioController,
            hintText: "msg_group_description2".tr,
            hintStyle: CustomTextStyles.bodySmall12_1,
            textInputAction: TextInputAction.done,
            maxLines: 9,
            contentPadding: EdgeInsets.symmetric(
              horizontal: 16.h,
              vertical: 10.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
          ),
          SizedBox(height: 20.v),
          Container(
            width: double.maxFinite,
            padding: EdgeInsets.all(8.h),
            decoration: AppDecoration.outlineGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder8,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 6.h),
                  child: Text(
                    "lbl_group_status".tr,
                    style: CustomTextStyles.bodySmall12_1,
                  ),
                ),
                SizedBox(height: 4.v),
                Container(
                  width: double.maxFinite,
                  margin: EdgeInsets.only(left: 6.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "lbl_private".tr,
                        style: theme.textTheme.bodyLarge,
                      ),
                      Obx(
                        () => CustomSwitch(
                          value: controller.isSelectedSwitch.value,
                          onChange: (value) {
                            controller.isSelectedSwitch.value = value;
                          },
                        ),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.v),
          SizedBox(
            height: 26.v,
            width: double.maxFinite,
            child: TabBar(
              controller: controller.tabviewController,
              labelPadding: EdgeInsets.zero,
              labelColor: theme.colorScheme.primary,
              labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w600,
              ),
              unselectedLabelColor: appTheme.blueGray90001,
              unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Quicksand',
                fontWeight: FontWeight.w600,
              ),
              indicatorColor: theme.colorScheme.errorContainer,
              indicatorSize: TabBarIndicatorSize.tab,
              tabs: [
                Tab(
                  child: Text(
                    "lbl_members".tr,
                  ),
                ),
                Tab(
                  child: Text(
                    "lbl_moderators".tr,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabSection() {
    return SizedBox(
      height: 548.v,
      width: double.maxFinite,
      child: TabBarView(
        controller: controller.tabviewController,
        children: [CreateNewGroupPage(), EditEventPage()],
      ),
    );
  }

  /// Navigates to the previous screen.
  onTapArrowleftone() {
    Get.back();
  }
}
