import 'bloc/landing_page_bloc.dart';
import 'models/landing_page_model.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/widgets/custom_elevated_button.dart';
import 'package:yka_v2/widgets/custom_icon_button.dart';
import 'package:yka_v2/widgets/custom_phone_number.dart';
import 'package:yka_v2/widgets/custom_switch.dart';
import 'package:yka_v2/widgets/custom_text_form_field.dart';

class LandingPageScreen extends StatelessWidget {
  const LandingPageScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<LandingPageBloc>(
      create: (context) => LandingPageBloc(LandingPageState(
        landingPageModelObj: LandingPageModel(),
      ))
        ..add(LandingPageInitialEvent()),
      child: LandingPageScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildBanner(context),
              SizedBox(height: 38.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: "lbl_sign_in".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                        TextSpan(
                          text: "lbl_or".tr,
                          style: CustomTextStyles.headlineSmallSemiBold,
                        ),
                        TextSpan(
                          text: "lbl_register".tr,
                          style: theme.textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    textAlign: TextAlign.left,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 21.h),
                  child: Text(
                    "msg_continue_with_a".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 12.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 25.h,
                ),
                child: BlocBuilder<LandingPageBloc, LandingPageState>(
                  builder: (context, state) {
                    return CustomPhoneNumber(
                      country: state.selectedCountry ??
                          CountryPickerUtils.getCountryByPhoneCode('1'),
                      controller: state.phoneNumberController,
                      onTap: (Country value) {
                        context
                            .read<LandingPageBloc>()
                            .add(ChangeCountryEvent(value: value));
                      },
                    );
                  },
                ),
              ),
              SizedBox(height: 16.v),
              Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: BlocSelector<LandingPageBloc, LandingPageState,
                    TextEditingController?>(
                  selector: (state) => state.cprController,
                  builder: (context, cprController) {
                    return CustomTextFormField(
                      controller: cprController,
                      hintText: "lbl_cpr_optional".tr,
                      textInputAction: TextInputAction.done,
                    );
                  },
                ),
              ),
              SizedBox(height: 32.v),
              CustomElevatedButton(
                text: "lbl_continue".tr,
                margin: EdgeInsets.only(
                  left: 21.h,
                  right: 20.h,
                ),
                buttonStyle: CustomButtonStyles.fillIndigo,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
        bottomNavigationBar: _buildAppVersion(context),
      ),
    );
  }

  /// Section Widget
  Widget _buildBanner(BuildContext context) {
    return Container(
      decoration: AppDecoration.gradientRedAToRed,
      child: Container(
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              ImageConstant.imgGroup38,
            ),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            SizedBox(height: 8.v),
            SizedBox(
              height: 62.v,
              width: 359.h,
              child: Stack(
                alignment: Alignment.bottomRight,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imageNotFound,
                    height: 38.v,
                    width: 91.h,
                    alignment: Alignment.topLeft,
                  ),
                  Align(
                    alignment: Alignment.bottomRight,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 55.h,
                        top: 25.v,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(
                              top: 7.v,
                              bottom: 9.v,
                            ),
                            child: Text(
                              "lbl_9_41".tr,
                              style: CustomTextStyles.titleMediumSFProText,
                            ),
                          ),
                          Spacer(),
                          CustomImageView(
                            imagePath: ImageConstant.imgStatusbarDynamicisland,
                            height: 37.v,
                            width: 125.h,
                            radius: BorderRadius.circular(
                              18.h,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSettings,
                            height: 12.v,
                            width: 18.h,
                            margin: EdgeInsets.only(
                              left: 22.h,
                              top: 12.v,
                              bottom: 13.v,
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgSettingsBlack900,
                            height: 11.v,
                            width: 17.h,
                            margin: EdgeInsets.only(
                              left: 8.h,
                              top: 12.v,
                              bottom: 13.v,
                            ),
                          ),
                          BlocSelector<LandingPageBloc, LandingPageState,
                              bool?>(
                            selector: (state) => state.isSelectedSwitch,
                            builder: (context, isSelectedSwitch) {
                              return CustomSwitch(
                                margin: EdgeInsets.only(
                                  left: 8.h,
                                  top: 12.v,
                                  bottom: 12.v,
                                ),
                                value: isSelectedSwitch,
                                onChange: (value) {
                                  context
                                      .read<LandingPageBloc>()
                                      .add(ChangeSwitchEvent(value: value));
                                },
                              );
                            },
                          ),
                          Opacity(
                            opacity: 0.4,
                            child: CustomImageView(
                              imagePath: ImageConstant.imgBatteryEnd,
                              height: 4.v,
                              width: 1.h,
                              margin: EdgeInsets.only(
                                left: 1.h,
                                top: 17.v,
                                bottom: 15.v,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 41.v),
            SizedBox(
              height: 287.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.topCenter,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse3088,
                    height: 247.v,
                    width: 393.h,
                    alignment: Alignment.bottomCenter,
                  ),
                  Align(
                    alignment: Alignment.topCenter,
                    child: Padding(
                      padding: EdgeInsets.only(
                        left: 32.h,
                        right: 18.h,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(left: 34.h),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  height: 14.adaptSize,
                                  width: 14.adaptSize,
                                  margin: EdgeInsets.only(
                                    top: 16.v,
                                    bottom: 39.v,
                                  ),
                                  decoration: BoxDecoration(
                                    color: appTheme.orange300,
                                    borderRadius: BorderRadius.circular(
                                      7.h,
                                    ),
                                  ),
                                ),
                                CustomImageView(
                                  imagePath: ImageConstant.imgMaskGroup69x108,
                                  height: 69.v,
                                  width: 108.h,
                                  margin: EdgeInsets.only(left: 75.h),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(height: 29.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Padding(
                              padding: EdgeInsets.only(left: 52.h),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Expanded(
                                    child: SizedBox(
                                      width: 226.h,
                                      child: RichText(
                                        text: TextSpan(
                                          children: [
                                            TextSpan(
                                              text: "msg_discover_premium2".tr,
                                              style: CustomTextStyles
                                                  .bodyLargeOnPrimary,
                                            ),
                                            TextSpan(
                                              text: "lbl_exciting".tr,
                                              style: CustomTextStyles
                                                  .titleMediumOnPrimaryBold18,
                                            ),
                                            TextSpan(
                                              text: " ",
                                            ),
                                            TextSpan(
                                              text: "lbl_features".tr,
                                              style: CustomTextStyles
                                                  .titleMediumOnPrimaryBold18,
                                            ),
                                          ],
                                        ),
                                        textAlign: TextAlign.center,
                                      ),
                                    ),
                                  ),
                                  Container(
                                    height: 20.adaptSize,
                                    width: 20.adaptSize,
                                    margin: EdgeInsets.only(
                                      left: 43.h,
                                      bottom: 34.v,
                                    ),
                                    decoration: BoxDecoration(
                                      color: theme.colorScheme.primary,
                                      borderRadius: BorderRadius.circular(
                                        10.h,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          SizedBox(height: 24.v),
                          Container(
                            height: 2.v,
                            width: 41.h,
                            margin: EdgeInsets.only(left: 145.h),
                            decoration: BoxDecoration(
                              color: theme.colorScheme.onPrimary.withOpacity(1),
                            ),
                          ),
                          SizedBox(height: 30.v),
                          Padding(
                            padding: EdgeInsets.only(right: 15.h),
                            child: Row(
                              children: [
                                SizedBox(
                                  width: 96.h,
                                  child: Row(
                                    children: [
                                      CustomIconButton(
                                        height: 40.adaptSize,
                                        width: 40.adaptSize,
                                        padding: EdgeInsets.all(8.h),
                                        child: CustomImageView(
                                          imagePath: ImageConstant.imgFi846355,
                                        ),
                                      ),
                                      Container(
                                        width: 53.h,
                                        margin: EdgeInsets.only(
                                          left: 3.h,
                                          top: 5.v,
                                        ),
                                        child: Text(
                                          "lbl_sleek_servicing".tr,
                                          maxLines: 2,
                                          overflow: TextOverflow.ellipsis,
                                          style: CustomTextStyles
                                              .labelLargeOnPrimary
                                              .copyWith(
                                            height: 1.33,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 24.h),
                                  child: CustomIconButton(
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    padding: EdgeInsets.all(6.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgCar,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 48.h,
                                  margin: EdgeInsets.only(
                                    left: 4.h,
                                    top: 5.v,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    "lbl_multiple_brands".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.labelLargeOnPrimary
                                        .copyWith(
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 28.h),
                                  child: CustomIconButton(
                                    height: 40.adaptSize,
                                    width: 40.adaptSize,
                                    padding: EdgeInsets.all(9.h),
                                    child: CustomImageView(
                                      imagePath: ImageConstant.imgFi388531,
                                    ),
                                  ),
                                ),
                                Container(
                                  width: 43.h,
                                  margin: EdgeInsets.only(
                                    left: 4.h,
                                    top: 5.v,
                                    bottom: 2.v,
                                  ),
                                  child: Text(
                                    "lbl_secure_wheels".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.labelLargeOnPrimary
                                        .copyWith(
                                      height: 1.33,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppVersion(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        left: 147.h,
        right: 147.h,
        bottom: 26.v,
      ),
      decoration: AppDecoration.fillOnPrimary1,
      child: Text(
        "msg_app_version_1_1_0".tr.toUpperCase(),
        style: theme.textTheme.labelMedium,
      ),
    );
  }
}
