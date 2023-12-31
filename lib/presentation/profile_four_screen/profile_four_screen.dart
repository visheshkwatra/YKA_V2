import 'bloc/profile_four_bloc.dart';
import 'models/profile_four_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:yka_v2/widgets/app_bar/custom_app_bar.dart';
import 'package:yka_v2/widgets/custom_elevated_button.dart';

class ProfileFourScreen extends StatelessWidget {
  const ProfileFourScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ProfileFourBloc>(
        create: (context) => ProfileFourBloc(
            ProfileFourState(profileFourModelObj: ProfileFourModel()))
          ..add(ProfileFourInitialEvent()),
        child: ProfileFourScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProfileFourBloc, ProfileFourState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              appBar: _buildAppBar(context),
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 36.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                            width: 164.h,
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "lbl_confirm_pin".tr,
                                      style: CustomTextStyles
                                          .headlineSmallRegular_1),
                                  TextSpan(
                                      text: "lbl_to_get_started".tr,
                                      style: theme.textTheme.headlineSmall)
                                ]),
                                textAlign: TextAlign.left)),
                        SizedBox(height: 7.v),
                        Container(
                            width: 337.h,
                            margin: EdgeInsets.only(right: 15.h),
                            child: Text("msg_create_a_4_digit".tr,
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.titleSmall!
                                    .copyWith(height: 1.57))),
                        SizedBox(height: 83.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgGroup1171275192,
                            height: 16.v,
                            width: 238.h,
                            alignment: Alignment.center),
                        Spacer(flex: 33),
                        _buildSetPin(context),
                        Spacer(flex: 66)
                      ])),
              bottomNavigationBar: _buildFifteen(context)));
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
  Widget _buildSetPin(BuildContext context) {
    return SizedBox(
        height: 68.v,
        width: 353.h,
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
          CustomElevatedButton(
              width: 353.h,
              text: "lbl_set_pin".tr,
              alignment: Alignment.topCenter)
        ]));
  }

  /// Section Widget
  Widget _buildFifteen(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 139.h, right: 151.h, bottom: 26.v),
        decoration: AppDecoration.fillOnPrimary1,
        child: Text("msg_app_version_4_4_9".tr.toUpperCase(),
            style: theme.textTheme.labelMedium));
  }

  /// Navigates to the previous screen.
  onTapClose(BuildContext context) {
    NavigatorService.goBack();
  }
}
