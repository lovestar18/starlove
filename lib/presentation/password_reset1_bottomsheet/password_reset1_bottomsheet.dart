import 'package:flutter/material.dart';
import '../../core/app_export.dart';
import '../../core/utils/validation_functions.dart';
import '../../widgets/custom_elevated_button.dart';
import '../../widgets/custom_floating_text_field.dart';
import '../../widgets/custom_text_form_field.dart';
import 'controller/password_reset1_controller.dart'; // ignore_for_file: must_be_immutable

// ignore_for_file: must_be_immutable
class PasswordReset1Bottomsheet extends StatelessWidget {
  PasswordReset1Bottomsheet(this.controller, {Key? key})
      : super(
          key: key,
        );

  PasswordReset1Controller controller;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 14.v,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector629,
            height: 4.v,
            width: 30.h,
          ),
          SizedBox(height: 28.v),
          Text(
            "msg_set_a_new_password".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_create_a_new_password2".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMediumBluegray600.copyWith(
              height: 1.71,
            ),
          ),
          SizedBox(height: 20.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 2.h),
            child: Obx(
              () => CustomFloatingTextField(
                controller: controller.newpasswordController,
                labelText: "lbl_password2".tr,
                labelStyle: CustomTextStyles.bodyLargeInter,
                hintText: "lbl_password2".tr,
                hintStyle: CustomTextStyles.bodyLargeInter,
                textInputType: TextInputType.visiblePassword,
                obscureText: controller.isShowPassword.value,
                suffix: InkWell(
                  onTap: () {
                    controller.isShowPassword.value =
                        !controller.isShowPassword.value;
                  },
                  child: Container(
                    margin: EdgeInsets.symmetric(horizontal: 18.h),
                    child: CustomImageView(
                      imagePath: ImageConstant.imgEye,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                ),
                suffixConstraints: BoxConstraints(
                  maxHeight: 60.v,
                ),
                validator: (value) {
                  if (value == null ||
                      (!isValidPassword(value, isRequired: true))) {
                    return "err_msg_please_enter_valid_password";
                  }
                  return null;
                },
              ),
            ),
          ),
          SizedBox(height: 20.v),
          _buildPasswordConfirmationSection(),
          SizedBox(height: 30.v),
          CustomElevatedButton(
            text: "lbl_sign_in".tr,
            margin: EdgeInsets.symmetric(horizontal: 2.h),
          ),
          SizedBox(height: 6.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildStatusBar() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 6.v,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 6.adaptSize,
            width: 6.adaptSize,
            margin: EdgeInsets.only(right: 68.h),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(
                3.h,
              ),
            ),
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: double.maxFinite,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Text(
                    "",
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgCellularConnection,
                  height: 12.v,
                  width: 18.h,
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgSettings,
                  height: 12.v,
                  width: 16.h,
                  margin: EdgeInsets.only(left: 6.h),
                ),
                Container(
                  width: 26.h,
                  margin: EdgeInsets.only(left: 6.h),
                  decoration: AppDecoration.outlineOnErrorContainer.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder4,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          height: 8.v,
                          width: 16.h,
                          decoration: BoxDecoration(
                            color: theme.colorScheme.onErrorContainer
                                .withOpacity(1),
                            borderRadius: BorderRadius.circular(
                              2.h,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(width: 6.h),
                      CustomImageView(
                        imagePath: ImageConstant.imgCap,
                        height: 4.v,
                        width: 1.h,
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 2.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordResetForm() {
    return Container(
      width: double.maxFinite,
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      decoration: AppDecoration.white.copyWith(
        borderRadius: BorderRadiusStyle.customBorderTL30,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgVector629,
            height: 1.v,
            width: 30.h,
          ),
          SizedBox(height: 180.v),
          CustomImageView(
            imagePath: ImageConstant.imgVector629,
            height: 1.v,
            width: 30.h,
          ),
          SizedBox(height: 32.v),
          Text(
            "msg_set_a_new_password".tr,
            style: theme.textTheme.headlineSmall,
          ),
          SizedBox(height: 6.v),
          Text(
            "msg_create_a_new_password2".tr,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMediumQuicksandBluegray600.copyWith(
              height: 1.71,
            ),
          ),
          SizedBox(height: 20.v),
          SizedBox(
            height: 140.v,
            width: double.maxFinite,
            child: Stack(
              alignment: Alignment.center,
              children: [
                Container(
                  width: double.maxFinite,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadiusStyle.roundedBorder8,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        height: 60.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 60.v,
                              width: 326.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                                border: Border.all(
                                  color: appTheme.gray20004,
                                  width: 1.h,
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 16.h),
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  RichText(
                                    text: TextSpan(
                                      children: [
                                        TextSpan(
                                          text: "lbl_password".tr,
                                          style: CustomTextStyles
                                              .bodySmallQuicksandBluegray300,
                                        ),
                                        TextSpan(
                                          text: "lbl4".tr,
                                          style: CustomTextStyles
                                              .bodySmallQuicksandRedA20001,
                                        )
                                      ],
                                    ),
                                    textAlign: TextAlign.left,
                                  ),
                                  SizedBox(height: 4.v),
                                  Text(
                                    "lbl_enter_here2".tr,
                                    style: CustomTextStyles.bodyLargeInter,
                                  )
                                ],
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 50.v),
                      Padding(
                        padding: EdgeInsets.only(left: 16.h),
                        child: Text(
                          "lbl_enter_here2".tr,
                          style: theme.textTheme.bodyLarge,
                        ),
                      )
                    ],
                  ),
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SizedBox(height: 6.v),
                      Container(
                        height: 12.v,
                        width: double.maxFinite,
                        margin: EdgeInsets.symmetric(horizontal: 18.h),
                        child: Stack(
                          alignment: Alignment.centerRight,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgVectorGray40002,
                              height: 4.adaptSize,
                              width: 4.adaptSize,
                              radius: BorderRadius.circular(
                                2.0.adaptSize,
                              ),
                              margin: EdgeInsets.only(right: 6.h),
                            ),
                            CustomImageView(
                              imagePath: ImageConstant.imgEyeGray40002,
                              height: 12.v,
                              width: 20.h,
                            )
                          ],
                        ),
                      ),
                      SizedBox(height: 42.v),
                      SizedBox(
                        height: 60.v,
                        width: double.maxFinite,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Container(
                              height: 60.v,
                              width: 326.h,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(
                                  8.h,
                                ),
                                border: Border.all(
                                  color: appTheme.gray20004,
                                  width: 1.h,
                                ),
                              ),
                            ),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                margin: EdgeInsets.only(top: 8.v),
                                padding: EdgeInsets.symmetric(horizontal: 16.h),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "msg_confirm_password".tr,
                                            style: CustomTextStyles
                                                .bodySmallQuicksandBluegray300,
                                          ),
                                          TextSpan(
                                            text: "lbl4".tr,
                                            style: CustomTextStyles
                                                .bodySmallQuicksandRedA20001,
                                          )
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Expanded(
                                      child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                          height: 24.v,
                                          margin: EdgeInsets.only(top: 8.v),
                                          padding: EdgeInsets.only(right: 2.h),
                                          child: Stack(
                                            alignment: Alignment.centerRight,
                                            children: [
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgVectorGray40002,
                                                height: 4.adaptSize,
                                                width: 4.adaptSize,
                                                radius: BorderRadius.circular(
                                                  2.0.adaptSize,
                                                ),
                                                margin:
                                                    EdgeInsets.only(right: 6.h),
                                              ),
                                              CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEyeGray40002,
                                                height: 12.v,
                                                width: 20.h,
                                              )
                                            ],
                                          ),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
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
          SizedBox(height: 30.v),
          SizedBox(
            width: double.maxFinite,
            height: 54.v,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: theme.colorScheme.primary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(
                    10.h,
                  ),
                ),
                visualDensity: const VisualDensity(
                  vertical: -4,
                  horizontal: -4,
                ),
                padding: EdgeInsets.symmetric(
                  horizontal: 30.h,
                  vertical: 16.v,
                ),
              ),
              onPressed: () {},
              child: Text(
                "lbl_sign_in".tr,
                style: CustomTextStyles.titleMediumQuicksandOnErrorContainer,
              ),
            ),
          ),
          SizedBox(height: 22.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildPasswordConfirmationSection() {
    return SizedBox(
      height: 60.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                bottom: 8.v,
              ),
              child: Text(
                "lbl_enter_here2".tr,
                style: theme.textTheme.bodyLarge,
              ),
            ),
          ),
          Obx(
            () => CustomTextFormField(
              controller: controller.confirmpasswordController,
              hintText: "msg_confirm_password2".tr,
              hintStyle: CustomTextStyles.bodySmallInter12,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              suffix: InkWell(
                onTap: () {
                  controller.isShowPassword1.value =
                      !controller.isShowPassword1.value;
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 18.v, 18.h, 18.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEye,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 60.v,
              ),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password";
                }
                return null;
              },
              obscureText: controller.isShowPassword1.value,
              contentPadding: EdgeInsets.only(
                left: 16.h,
                top: 22.v,
                bottom: 22.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.outlineGrayTL8,
            ),
          )
        ],
      ),
    );
  }
}
