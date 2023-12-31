import 'bloc/profile_seven_bloc.dart';
import 'models/profile_seven_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/core/utils/validation_functions.dart';
import 'package:yka_v2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_v2/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_v2/widgets/custom_elevated_button.dart';
import 'package:yka_v2/widgets/custom_floating_text_field.dart';

// ignore_for_file: must_be_immutable
class ProfileSevenScreen extends StatelessWidget {
  ProfileSevenScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileSevenBloc>(
        create: (context) => ProfileSevenBloc(
            ProfileSevenState(profileSevenModelObj: ProfileSevenModel()))
          ..add(ProfileSevenInitialEvent()),
        child: ProfileSevenScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileSevenBloc, ProfileSevenState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              resizeToAvoidBottomInset: false,
              appBar: _buildAppBar(context),
              body: Form(
                  key: _formKey,
                  child: Container(
                      width: double.maxFinite,
                      padding: EdgeInsets.symmetric(
                          horizontal: 20.h, vertical: 36.v),
                      child: Column(children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: SizedBox(
                                width: 132.h,
                                child: RichText(
                                    text: TextSpan(children: [
                                      TextSpan(
                                          text: "lbl_create_your".tr,
                                          style: CustomTextStyles
                                              .headlineSmallRegular_1),
                                      TextSpan(
                                          text: "lbl_profile2".tr,
                                          style: theme.textTheme.headlineSmall)
                                    ]),
                                    textAlign: TextAlign.left))),
                        SizedBox(height: 13.v),
                        Text("msg_let_us_know_about".tr,
                            style: theme.textTheme.titleSmall),
                        SizedBox(height: 39.v),
                        _buildFirstNameField(context),
                        SizedBox(height: 16.v),
                        _buildLastNameField(context),
                        SizedBox(height: 16.v),
                        _buildZipcodeField(context),
                        SizedBox(height: 16.v),
                        _buildCarDetailValueField(context),
                        SizedBox(height: 16.v),
                        _buildAddAnotherCarRow(context),
                        SizedBox(height: 5.v)
                      ]))),
              bottomNavigationBar: _buildRegisterStack(context)));
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
  Widget _buildFirstNameField(BuildContext context) {
    return BlocSelector<ProfileSevenBloc, ProfileSevenState,
            TextEditingController?>(
        selector: (state) => state.firstNameFieldController,
        builder: (context, firstNameFieldController) {
          return CustomFloatingTextField(
              controller: firstNameFieldController,
              labelText: "lbl_first_name".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_first_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildLastNameField(BuildContext context) {
    return BlocSelector<ProfileSevenBloc, ProfileSevenState,
            TextEditingController?>(
        selector: (state) => state.lastNameFieldController,
        builder: (context, lastNameFieldController) {
          return CustomFloatingTextField(
              controller: lastNameFieldController,
              labelText: "lbl_last_name".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_last_name".tr,
              validator: (value) {
                if (!isText(value)) {
                  return "err_msg_please_enter_valid_text".tr;
                }
                return null;
              });
        });
  }

  /// Section Widget
  Widget _buildZipcodeField(BuildContext context) {
    return BlocSelector<ProfileSevenBloc, ProfileSevenState,
            TextEditingController?>(
        selector: (state) => state.zipcodeFieldController,
        builder: (context, zipcodeFieldController) {
          return CustomFloatingTextField(
              controller: zipcodeFieldController,
              labelText: "lbl_142043".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_142043".tr,
              contentPadding: EdgeInsets.fromLTRB(20.h, 19.v, 20.h, 17.v));
        });
  }

  /// Section Widget
  Widget _buildCarDetailValueField(BuildContext context) {
    return BlocSelector<ProfileSevenBloc, ProfileSevenState,
            TextEditingController?>(
        selector: (state) => state.carDetailValueFieldController,
        builder: (context, carDetailValueFieldController) {
          return CustomFloatingTextField(
              controller: carDetailValueFieldController,
              labelText: "lbl_car_detail".tr,
              labelStyle: theme.textTheme.titleMedium!,
              hintText: "lbl_car_detail".tr,
              textInputAction: TextInputAction.done,
              suffix: IconButton(
                  onPressed: () {},
                  constraints: BoxConstraints(
                      minHeight: 37.adaptSize, minWidth: 37.adaptSize),
                  padding: EdgeInsets.all(0),
                  icon: Container(
                      width: 37.adaptSize,
                      height: 37.adaptSize,
                      decoration: BoxDecoration(
                          color: appTheme.red50001.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(18.h)),
                      padding: EdgeInsets.all(11.h),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgFi8358868))),
              suffixConstraints: BoxConstraints(maxHeight: 59.v));
        });
  }

  /// Section Widget
  Widget _buildAddAnotherCarRow(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 19.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder12),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("msg_add_another_car".tr,
              style: CustomTextStyles.titleSmallPrimary_1),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightPrimary,
              height: 12.v,
              width: 15.h,
              margin: EdgeInsets.only(top: 4.v, right: 12.h, bottom: 3.v))
        ]));
  }

  /// Section Widget
  Widget _buildRegister(BuildContext context) {
    return CustomElevatedButton(
        width: 353.h, text: "lbl_register2".tr, alignment: Alignment.topCenter);
  }

  /// Section Widget
  Widget _buildRegisterStack(BuildContext context) {
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
          _buildRegister(context)
        ]));
  }

  /// Navigates to the previous screen.
  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
