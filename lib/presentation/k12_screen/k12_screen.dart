import 'package:another_stepper/dto/stepper_data.dart';
import 'package:another_stepper/widgets/another_stepper.dart';
import 'package:flutter/material.dart';
import 'package:kronuss23_s_application1/core/app_export.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kronuss23_s_application1/widgets/custom_elevated_button.dart';
import 'package:kronuss23_s_application1/widgets/custom_text_form_field.dart';

class K12Screen extends StatelessWidget {
  K12Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController sofiaController = TextEditingController();

  TextEditingController apolloController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 16.h,
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
                "Регистрация",
                style: theme.textTheme.displaySmall,
              ),
              SizedBox(height: 24.v),
              _buildColumn1(context),
              SizedBox(height: 12.v),
              _buildColumn2(context),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                width: 218.h,
                text: "Сохранить",
                buttonStyle: CustomButtonStyles.fillAmber,
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
        imagePath: ImageConstant.imgVectorAmber600,
        margin: EdgeInsets.fromLTRB(18.h, 10.v, 341.h, 11.v),
      ),
    );
  }

  /// Section Widget
  Widget _buildColumn1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Имя",
          style: theme.textTheme.labelLarge,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: sofiaController,
          hintText: "Софья ",
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildColumn2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Фамилия",
          style: theme.textTheme.labelLarge,
        ),
        SizedBox(height: 6.v),
        CustomTextFormField(
          controller: apolloController,
          hintText: "Аполло",
          textInputAction: TextInputAction.done,
        ),
      ],
    );
  }
}
