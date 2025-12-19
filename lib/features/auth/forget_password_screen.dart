import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:go_router/go_router.dart';
import 'package:new_learn/core/routing/app_routes.dart';
import 'package:new_learn/core/styling/app_styles.dart';
import 'package:new_learn/core/widgets/back_button_widget.dart';
import 'package:new_learn/core/widgets/custom_text_filed.dart';
import 'package:new_learn/core/widgets/primay_button_widget.dart';

class ForgetPasswordScreen extends StatefulWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  State<ForgetPasswordScreen> createState() => _ForgetPasswordScreenState();
}

class _ForgetPasswordScreenState extends State<ForgetPasswordScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF5F5F5),
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(horizontal: 24.w, vertical: 12.h),
        child: Form(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 32.h),

              Container(
                alignment: Alignment.topLeft,

                child: const BackButtonWidget(),
              ),
              SizedBox(height: 32.h),

              Text(
                "Forgot Password?",
                style: TextStyle(
                  fontSize: 28.sp,
                  fontWeight: FontWeight.w700,
                  color: const Color(0xFF617AFD),
                ),
              ),
              SizedBox(height: 12.h),

              Text(
                "Don't worry! It occurs. Please enter the email address linked with your account.",
                style: TextStyle(
                  fontSize: 15.sp,
                  color: const Color(0xFF8391A1),
                  height: 1.6,
                ),
              ),
              SizedBox(height: 32.h),

              CustomTextFiled(hintText: 'Email address'),
              SizedBox(height: 32.h),

              PrimayButtonWidget(
                buttonText: "Send Code",
                onPressed: () {
                  context.pushNamed(AppRoutes.createNewPasswordScreen);
                },
              ),

              SizedBox(height: 330.h),

              Center(
                child: RichText(
                  text: TextSpan(
                    text: "Remember Password? ",
                    style: TextStyle(
                      fontSize: 15.sp,
                      color: const Color(0xFF617AFD),
                      fontWeight: FontWeight.w500,
                    ),
                    children: [
                      TextSpan(
                        text: "Login",
                        style: AppStyles.black15boldStyles,
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            context.pushNamed(AppRoutes.loginScreen);
                          },
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
