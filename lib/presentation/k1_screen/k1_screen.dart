import 'package:flutter/material.dart';
import 'package:kronuss23_s_application1/core/app_export.dart';
import 'package:kronuss23_s_application1/widgets/custom_elevated_button.dart';

class K1Screen extends StatelessWidget {
  const K1Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 8.h, vertical: 19.v),
                child: Column(children: [
                  SizedBox(height: 35.v),
                  Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadiusStyle.roundedBorder13),
                      child: Column(children: [
                        _buildActionSheetAction(context),
                        Divider(),
                        CustomElevatedButton(
                            height: 60.v,
                            text: "Камера",
                            buttonStyle: CustomButtonStyles.fillPrimary,
                            buttonTextStyle: theme.textTheme.titleLarge!),
                        _buildOne(context),
                        CustomElevatedButton(
                            height: 60.v,
                            text: "Галерея Фото",
                            buttonStyle: CustomButtonStyles.fillPrimary1,
                            buttonTextStyle: theme.textTheme.titleLarge!,
                            onPressed: () {
                              onTaptf(context);
                            })
                      ])),
                  SizedBox(height: 8.v),
                  CustomElevatedButton(
                      height: 60.v,
                      text: "Закрыть",
                      buttonStyle: CustomButtonStyles.fillPrimaryTL13,
                      buttonTextStyle: CustomTextStyles.titleLargeSemiBold,
                      onPressed: () {
                        onTaptf1(context);
                      })
                ]))));
  }

  /// Section Widget
  Widget _buildActionSheetAction(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 129.h, vertical: 11.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 2.v),
          Text("Выберите фото",
              style: CustomTextStyles.labelLargeSFProTextGray600)
        ]));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return SizedBox(
        height: 1.v,
        width: 359.h,
        child: Stack(alignment: Alignment.center, children: [
          Align(
              alignment: Alignment.center,
              child: SizedBox(width: 359.h, child: Divider())),
          Align(
              alignment: Alignment.center,
              child: SizedBox(width: 359.h, child: Divider()))
        ]));
  }

  /// Navigates to the k5Screen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k5Screen);
  }

  /// Navigates to the k4Screen when the action is triggered.
  onTaptf1(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k4Screen);
  }
}
