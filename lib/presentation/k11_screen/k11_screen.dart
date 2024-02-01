import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:kronuss23_s_application1/core/app_export.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kronuss23_s_application1/widgets/custom_pin_code_text_field.dart';

class K11Screen extends StatelessWidget {
  const K11Screen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 51.h,
            vertical: 2.v,
          ),
          child: Column(
            children: [
              AnotherStepper(
                stepperDirection: Axis.horizontal,
                activeIndex: 0,
                barThickness: 1,
                inverted: true,
                stepperList: [
                  StepperData(),
                  StepperData(),
                  StepperData(),
                ],
              ),
              SizedBox(height: 27.v),
              Text(
                "Подтверждение",
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 20.v),
              Container(
                width: 261.h,
                margin: EdgeInsets.only(
                  left: 5.h,
                  right: 6.h,
                ),
                child: Text(
                  "Введите код, который мы отправили в SMS на +7(966) 666 66 66",
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.center,
                  style: theme.textTheme.bodyMedium!.copyWith(
                    height: 1.33,
                  ),
                ),
              ),
              SizedBox(height: 61.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 4.h,
                  right: 5.h,
                ),
                child: CustomPinCodeTextField(
                  context: context,
                  onChanged: (value) {},
                ),
              ),
              SizedBox(height: 43.v),
              Text(
                "60 сек до повтора отправки кода",
                style: theme.textTheme.bodyMedium,
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      leadingWidth: 374.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgVector,
        margin: EdgeInsets.fromLTRB(18.h, 10.v, 341.h, 11.v),
      ),
    );
  }
}
