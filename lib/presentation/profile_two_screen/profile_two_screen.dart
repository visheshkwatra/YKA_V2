import 'bloc/profile_two_bloc.dart';
import 'models/profile_two_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_v2/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_v2/widgets/custom_elevated_button.dart';
import 'package:yka_v2/widgets/custom_floating_text_field.dart';

class ProfileTwoScreen extends StatelessWidget {
  const ProfileTwoScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileTwoBloc>(
        create: (context) => ProfileTwoBloc(
            ProfileTwoState(profileTwoModelObj: ProfileTwoModel()))
          ..add(ProfileTwoInitialEvent()),
        child: ProfileTwoScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileTwoBloc, ProfileTwoState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 35.v),
                  child: Column(children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: SizedBox(
                            width: 193.h,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_submit_your".tr,
                                      style: CustomTextStyles
                                          .headlineSmallRegular_1),
                                  TextSpan(
                                      text: "lbl_car_information".tr,
                                      style: theme.textTheme.headlineSmall)
                                ]),
                                textAlign: TextAlign.left))),
                    SizedBox(height: 13.v),
                    Text("msg_let_us_know_about".tr,
                        style: theme.textTheme.titleSmall),
                    SizedBox(height: 39.v),
                    _buildZipCodeTextField(context),
                    SizedBox(height: 16.v),
                    _buildMobileNumberTextField(context),
                    SizedBox(height: 16.v),
                    _buildRowOne(context),
                    SizedBox(height: 16.v),
                    _buildZipCodeTextField1(context),
                    SizedBox(height: 5.v)
                  ])),
              bottomNavigationBar: _buildAddVehicleStack(context)));
    });
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: double.maxFinite,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgCloseOnprimary,
            margin: EdgeInsets.fromLTRB(20.h, 3.v, 325.h, 3.v),
            onTap: () {
              onTapClose(context);
            }));
  }

  /// Section Widget
  Widget _buildZipCodeTextField(BuildContext context) {
    return BlocSelector<ProfileTwoBloc, ProfileTwoState,
            TextEditingController?>(
        selector: (state) => state.zipCodeTextFieldController,
        builder: (context, zipCodeTextFieldController) {
          return CustomFloatingTextField(
              controller: zipCodeTextFieldController,
              labelText: "lbl_vrn".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_vrn".tr);
        });
  }

  /// Section Widget
  Widget _buildMobileNumberTextField(BuildContext context) {
    return BlocSelector<ProfileTwoBloc, ProfileTwoState,
            TextEditingController?>(
        selector: (state) => state.mobileNumberTextFieldController,
        builder: (context, mobileNumberTextFieldController) {
          return CustomFloatingTextField(
              controller: mobileNumberTextFieldController,
              labelText: "lbl_vin".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_vin".tr);
        });
  }

  /// Section Widget
  Widget _buildSecondaryZipCodeTextField(BuildContext context) {
    return BlocSelector<ProfileTwoBloc, ProfileTwoState,
            TextEditingController?>(
        selector: (state) => state.secondaryZipCodeTextFieldController,
        builder: (context, secondaryZipCodeTextFieldController) {
          return CustomFloatingTextField(
              width: 37.h,
              controller: secondaryZipCodeTextFieldController,
              labelText: "lbl_gcc".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_gcc".tr,
              contentPadding: EdgeInsets.only(top: 20.v),
              borderDecoration: FloatingTextFormFieldStyleHelper.custom,
              filled: false);
        });
  }

  /// Section Widget
  Widget _buildRowOne(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 8.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          _buildSecondaryZipCodeTextField(context),
          Padding(
              padding: EdgeInsets.only(top: 20.v, right: 4.h),
              child: Text("lbl_km".tr, style: CustomTextStyles.titleMediumBold))
        ]));
  }

  /// Section Widget
  Widget _buildZipCodeTextField1(BuildContext context) {
    return BlocSelector<ProfileTwoBloc, ProfileTwoState,
            TextEditingController?>(
        selector: (state) => state.zipCodeTextFieldController1,
        builder: (context, zipCodeTextFieldController1) {
          return CustomFloatingTextField(
              controller: zipCodeTextFieldController1,
              labelText: "lbl_year".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_year".tr,
              textInputAction: TextInputAction.done,
              suffix: Container(
                  margin: EdgeInsets.symmetric(horizontal: 24.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgArrowdownRed800,
                      height: 4.v,
                      width: 8.h)),
              suffixConstraints: BoxConstraints(maxHeight: 59.v));
        });
  }

  /// Section Widget
  Widget _buildAddVehicle(BuildContext context) {
    return CustomElevatedButton(
        width: 353.h,
        text: "lbl_add_vehicle".tr,
        alignment: Alignment.topCenter);
  }

  /// Section Widget
  Widget _buildAddVehicleStack(BuildContext context) {
    return Container(
        height: 68.v,
        width: 353.h,
        margin: EdgeInsets.only(left: 20.h, right: 20.h, bottom: 20.v),
        child: Stack(alignment: Alignment.topCenter, children: [
          Opacity(
              opacity: 0.2,
              child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                      height: 54.v,
                      width: 313.h,
                      decoration: BoxDecoration(
                          color: theme.colorScheme.primary.withOpacity(0.42),
                          borderRadius: BorderRadius.circular(4.h))))),
          _buildAddVehicle(context)
        ]));
  }

  /// Navigates to the previous screen.
  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
