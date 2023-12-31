import 'bloc/profile_three_bloc.dart';
import 'models/profile_three_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_v2/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_v2/widgets/custom_checkbox_button.dart';
import 'package:yka_v2/widgets/custom_elevated_button.dart';
import 'package:yka_v2/widgets/custom_pin_code_text_field.dart';

class ProfileThreeScreen extends StatelessWidget {
  const ProfileThreeScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileThreeBloc>(
      create: (context) => ProfileThreeBloc(ProfileThreeState(
        profileThreeModelObj: ProfileThreeModel(),
      ))
        ..add(ProfileThreeInitialEvent()),
      child: ProfileThreeScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 20.h,
            vertical: 37.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                width: 189.h,
                child: RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "lbl_otp_sent".tr,
                        style: CustomTextStyles.headlineSmallRegular_1,
                      ),
                      TextSpan(
                        text: "lbl_to_your_number".tr,
                        style: theme.textTheme.headlineSmall,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              SizedBox(height: 7.v),
              Container(
                width: 277.h,
                margin: EdgeInsets.only(right: 75.h),
                child: Text(
                  "msg_enter_the_4_digit".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: theme.textTheme.titleSmall!.copyWith(
                    height: 1.57,
                  ),
                ),
              ),
              SizedBox(height: 26.v),
              BlocSelector<ProfileThreeBloc, ProfileThreeState,
                  TextEditingController?>(
                selector: (state) => state.otpController,
                builder: (context, otpController) {
                  return CustomPinCodeTextField(
                    context: context,
                    controller: otpController,
                    onChanged: (value) {
                      otpController?.text = value;
                    },
                  );
                },
              ),
              SizedBox(height: 20.v),
              _buildResendOtpRow(context),
              SizedBox(height: 49.v),
              _buildTermsCheckBox(context),
              SizedBox(height: 16.v),
              CustomElevatedButton(
                text: "lbl_continue".tr,
                buttonStyle: CustomButtonStyles.fillIndigo,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildAppVersionColumn(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: double.maxFinite,
      leading: AppbarLeadingIconbutton(
        imagePath: ImageConstant.imgArrowDownOnprimary,
        margin: EdgeInsets.fromLTRB(20.h, 3.v, 325.h, 3.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildResendOtpRow(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "msg_didn_t_receive_otp2".tr,
                  style: CustomTextStyles.bodySmallOpenSansBluegray50002,
                ),
                TextSpan(
                  text: "lbl_00_30".tr,
                  style: CustomTextStyles.labelLargeBluegray50002,
                ),
              ],
            ),
            textAlign: TextAlign.left,
          ),
        ),
        Text(
          "lbl_resend_otp".tr,
          style: CustomTextStyles.titleSmallRed800,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTermsCheckBox(BuildContext context) {
    return BlocSelector<ProfileThreeBloc, ProfileThreeState, bool?>(
      selector: (state) => state.termsCheckBox,
      builder: (context, termsCheckBox) {
        return CustomCheckboxButton(
          text: "msg_i_agree_to_the_terms".tr,
          value: termsCheckBox,
          padding: EdgeInsets.symmetric(vertical: 1.v),
          onChange: (value) {
            context
                .read<ProfileThreeBloc>()
                .add(ChangeCheckBoxEvent(value: value));
          },
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppVersionColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 139.h,
        right: 151.h,
        bottom: 26.v,
      ),
      decoration: AppDecoration.fillOnPrimary1,
      child: Text(
        "msg_app_version_4_4_9".tr.toUpperCase(),
        style: theme.textTheme.labelMedium,
      ),
    );
  }
}
