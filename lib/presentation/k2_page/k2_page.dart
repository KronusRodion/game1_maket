import 'package:flutter/material.dart';
import 'package:kronuss23_s_application1/core/app_export.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kronuss23_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class K2Page extends StatelessWidget {
  K2Page({Key? key})
      : super(
          key: key,
        );

  TextEditingController yourNameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillPrimary,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  right: 9.h,
                ),
                child: CustomTextFormField(
                  controller: yourNameController,
                  hintText: "Ваше Имя",
                  textInputAction: TextInputAction.done,
                  borderDecoration:
                      TextFormFieldStyleHelper.fillOnPrimaryContainer,
                  filled: true,
                  fillColor: theme.colorScheme.onPrimaryContainer,
                ),
              ),
              Spacer(),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 43.v,
      leadingWidth: 28.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowRight,
        margin: EdgeInsets.only(
          left: 8.h,
          top: 9.v,
          bottom: 12.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 2.h),
        child: Row(
          children: [
            AppbarSubtitle(
              text: "Аккаунт",
              margin: EdgeInsets.only(top: 1.v),
            ),
            AppbarTitle(
              text: "Ваше Имя",
              margin: EdgeInsets.only(left: 53.h),
            ),
          ],
        ),
      ),
      styleType: Style.bgShadow,
    );
  }
}
