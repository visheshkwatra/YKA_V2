import 'bloc/iphone_15_pro_portrait_mockup_label_container_bloc.dart';
import 'models/iphone_15_pro_portrait_mockup_label_container_model.dart';
import 'package:flutter/material.dart';
import 'package:yka_v2/core/app_export.dart';
import 'package:yka_v2/presentation/iphone_15_pro_portrait_mockup_label_page/iphone_15_pro_portrait_mockup_label_page.dart';
import 'package:yka_v2/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class Iphone15ProPortraitMockupLabelContainerScreen extends StatelessWidget {
  Iphone15ProPortraitMockupLabelContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<Iphone15ProPortraitMockupLabelContainerBloc>(
        create: (context) => Iphone15ProPortraitMockupLabelContainerBloc(
            Iphone15ProPortraitMockupLabelContainerState(
                iphone15ProPortraitMockupLabelContainerModelObj:
                    Iphone15ProPortraitMockupLabelContainerModel()))
          ..add(Iphone15ProPortraitMockupLabelContainerInitialEvent()),
        child: Iphone15ProPortraitMockupLabelContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<Iphone15ProPortraitMockupLabelContainerBloc,
            Iphone15ProPortraitMockupLabelContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.onPrimary.withOpacity(1),
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.iphone15ProPortraitMockupLabelPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: _buildBottomBar(context)));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.iphone15ProPortraitMockupLabelPage;
      case BottomBarEnum.Findus:
        return "/";
      case BottomBarEnum.Services:
        return "/";
      case BottomBarEnum.Profile:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.iphone15ProPortraitMockupLabelPage:
        return Iphone15ProPortraitMockupLabelPage();
      default:
        return DefaultWidget();
    }
  }
}
