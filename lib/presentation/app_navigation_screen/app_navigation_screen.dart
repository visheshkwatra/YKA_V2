import 'bloc/app_navigation_bloc.dart';
import 'models/app_navigation_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  static Widget builder(BuildContext context) {
    return BlocProvider<AppNavigationBloc>(
      create: (context) => AppNavigationBloc(AppNavigationState(
        appNavigationModelObj: AppNavigationModel(),
      ))
        ..add(AppNavigationInitialEvent()),
      child: AppNavigationScreen(),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AppNavigationBloc, AppNavigationState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: Color(0XFFFFFFFF),
            body: SizedBox(
              width: 375.h,
              child: Column(
                children: [
                  _buildAppNavigation(context),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Container(
                        decoration: BoxDecoration(
                          color: Color(0XFFFFFFFF),
                        ),
                        child: Column(
                          children: [
                            _buildScreenTitle(
                              context,
                              screenTitle:
                                  "iPhone 15 Pro Portrait Mockup label - Container"
                                      .tr,
                              onTapScreenTitle: () => onTapScreenTitle(AppRoutes
                                  .iphone15ProPortraitMockupLabelContainerScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VAR TwentyEight".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.varTwentyeightScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VAR TwentySix".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.varTwentysixScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Landing Page".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.landingPageScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Two".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileTwoScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Three".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileThreeScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Four".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileFourScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Five".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.profileFiveScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "VAR Fifty".tr,
                              onTapScreenTitle: () =>
                                  onTapScreenTitle(AppRoutes.varFiftyScreen),
                            ),
                            _buildScreenTitle(
                              context,
                              screenTitle: "Profile Seven".tr,
                              onTapScreenTitle: () => onTapScreenTitle(
                                  AppRoutes.profileSevenScreen),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    NavigatorService.pushNamed(routeName);
  }
}
