import 'package:flutter/material.dart';
import 'package:kronuss23_s_application1/core/app_export.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_leading_image.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_subtitle.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/appbar_title.dart';
import 'package:kronuss23_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:kronuss23_s_application1/widgets/custom_bottom_bar.dart';
import 'package:kronuss23_s_application1/widgets/custom_text_form_field.dart';

class K6Screen extends StatelessWidget {
  K6Screen({Key? key})
      : super(
          key: key,
        );

  TextEditingController yourLastNameController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: theme.colorScheme.primary,
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 24.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 8.h,
                  right: 9.h,
                ),
                child: CustomTextFormField(
                  controller: yourLastNameController,
                  hintText: "Ваша Фамилия",
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
        bottomNavigationBar: _buildBottomBar(context),
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
              text: "Ваша Фамилия",
              margin: EdgeInsets.only(left: 32.h),
            ),
          ],
        ),
      ),
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(
      onChanged: (BottomBarEnum type) {},
    );
  }
}
