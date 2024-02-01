import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:kronuss23_s_application1/core/app_export.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kronuss23_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class K5Screen extends StatelessWidget {
  K5Screen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primary,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 24.v),
                child: Column(children: [
                  SizedBox(
                      height: 79.v,
                      width: 78.h,
                      child: Stack(alignment: Alignment.topLeft, children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgClose,
                            height: 59.adaptSize,
                            width: 59.adaptSize,
                            alignment: Alignment.centerLeft,
                            margin: EdgeInsets.only(left: 6.h)),
                        Align(
                            alignment: Alignment.topLeft,
                            child: Container(
                                height: 76.v,
                                width: 73.h,
                                decoration: BoxDecoration(
                                    image: DecorationImage(
                                        image: fs.Svg(ImageConstant.imgGroup2),
                                        fit: BoxFit.cover)),
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgEllipse8,
                                    height: 76.v,
                                    width: 73.h,
                                    radius: BorderRadius.circular(38.h),
                                    alignment: Alignment.center))),
                        CustomImageView(
                            imagePath: ImageConstant.imgClosePrimary,
                            height: 31.v,
                            width: 32.h,
                            alignment: Alignment.bottomRight,
                            onTap: () {
                              onTapImgClose(context);
                            })
                      ])),
                  SizedBox(height: 13.v),
                  Text("apollon@gmail.com",
                      style: CustomTextStyles.labelLargeSFProTextGray600_1),
                  SizedBox(height: 27.v),
                  _buildRow(context, lastName: "Имя", firstName: "Софья",
                      onTapRow: () {
                    onTapRow(context);
                  }),
                  SizedBox(height: 5.v),
                  _buildRow(context,
                      lastName: "Фамилия", firstName: "Аполлонова")
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 43.v,
        leadingWidth: 28.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowRight,
            margin: EdgeInsets.only(left: 8.h, top: 9.v, bottom: 12.v)),
        title: Padding(
            padding: EdgeInsets.only(left: 2.h),
            child: Row(children: [
              AppbarSubtitle(
                  text: "Мой аккаунт", margin: EdgeInsets.only(bottom: 1.v)),
              AppbarTitle(text: "Аккаунт", margin: EdgeInsets.only(left: 26.h))
            ])),
        styleType: Style.bgShadow);
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {});
  }

  /// Common widget
  Widget _buildRow(
    BuildContext context, {
    required String lastName,
    required String firstName,
    Function? onTapRow,
  }) {
    return GestureDetector(
        onTap: () {
          onTapRow!.call();
        },
        child: Container(
            padding: EdgeInsets.fromLTRB(16.h, 13.v, 16.h, 12.v),
            decoration: AppDecoration.outlineGray,
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Text(lastName,
                  style: CustomTextStyles.bodyLargeOnPrimary
                      .copyWith(color: theme.colorScheme.onPrimary)),
              Spacer(),
              Text(firstName,
                  style: CustomTextStyles.bodyLargeGray600
                      .copyWith(color: appTheme.gray600)),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRightGray400,
                  height: 21.v,
                  width: 20.h,
                  margin: EdgeInsets.only(left: 11.h))
            ])));
  }

  /// Navigates to the k1Screen when the action is triggered.
  onTapImgClose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k1Screen);
  }

  /// Navigates to the containerScreen when the action is triggered.
  onTapRow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.containerScreen);
  }
}
