import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:kronuss23_s_application1/core/app_export.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kronuss23_s_application1/widgets/custom_elevated_button.dart';
import 'package:kronuss23_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class K8Screen extends StatelessWidget {
  K8Screen({Key? key}) : super(key: key);

  TextEditingController smsCodeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 16.h, vertical: 2.v),
                child: Column(children: [
                  AnotherStepper(
                      stepperDirection: Axis.horizontal,
                      activeIndex: 0,
                      barThickness: 1,
                      inverted: true,
                      stepperList: [
                        StepperData(),
                        StepperData(),
                        StepperData()
                      ]),
                  SizedBox(height: 27.v),
                  Text("Регистрация", style: theme.textTheme.displaySmall),
                  SizedBox(height: 21.v),
                  SizedBox(
                      width: 181.h,
                      child: Text("Введите номер телефона для регистрации",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyMedium!
                              .copyWith(height: 1.33))),
                  SizedBox(height: 42.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Text("Номер телефона",
                          style: theme.textTheme.labelLarge)),
                  SizedBox(height: 5.v),
                  CustomTextFormField(
                      controller: smsCodeController,
                      hintText: "+7(",
                      textInputAction: TextInputAction.done),
                  Spacer(flex: 33),
                  CustomElevatedButton(
                      text: "Отправить смс-код",
                      margin: EdgeInsets.symmetric(horizontal: 29.h),
                      onPressed: () {
                        onTaptf(context);
                      }),
                  SizedBox(height: 8.v),
                  SizedBox(
                      width: 228.h,
                      child: Text(
                          "Нажимая на данную кнопку, вы даете согласие на обработку персональных данных",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodySmall!
                              .copyWith(height: 1.20))),
                  Spacer(flex: 66)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 374.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgVector,
            margin: EdgeInsets.fromLTRB(18.h, 10.v, 341.h, 11.v)));
  }

  /// Navigates to the k11Screen when the action is triggered.
  onTaptf(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.k11Screen);
  }
}
