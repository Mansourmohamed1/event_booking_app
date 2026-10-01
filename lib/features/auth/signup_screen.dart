import 'package:event_booking_app/core/constants/app_images.dart';
import 'package:event_booking_app/core/styles/app_colors.dart';
import 'package:event_booking_app/core/styles/text_styles.dart';
import 'package:event_booking_app/core/widgets/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gap/gap.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () => Navigator.pop(context),
        ),
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('Sign up', style: TextStyles.headline2),
              const Gap(20),
              CustomTextField(
                prefixIcon: Padding(
                  padding: EdgeInsets.all(10),
                  child: SvgPicture.asset(
                    AppImages.userSvg,
                    height: 24,
                    width: 24,
                    colorFilter: const ColorFilter.mode(
                      AppColors.greyColor,
                      BlendMode.srcIn,
                    ),
                  ),
                ),
                hintText: 'Full name',
              ),

              const Gap(16),
              CustomTextField(
                hintText: 'abc@gmail.com',
                prefixIcon: Icon(
                  Icons.email_outlined,
                  color: AppColors.greyColor,
                ),
              ),

              const Gap(16),
              CustomTextField(
                hintText: 'Your password',
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: AppColors.greyColor,
                ),
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: AppColors.greyColor,
                ),
              ),

              const Gap(16),
              CustomTextField(
                hintText: 'Confirm password',
                prefixIcon: Icon(
                  Icons.lock_outline,
                  color: AppColors.greyColor,
                ),
                suffixIcon: Icon(
                  Icons.visibility_off,
                  color: AppColors.greyColor,
                ),
              ),

              const Gap(32),

              Center(
                child: SizedBox(
                  width: 271,
                  height: 58,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: AppColors.blueColor,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(16),
                      ),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const SizedBox(width: 24),
                        Text(
                          'SIGN UP',
                          style: TextStyles.title1.copyWith(
                            color: Colors.white,
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(6),
                          decoration: BoxDecoration(
                            color: Colors.white.withOpacity(0.2),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                            size: 18,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(24),
              Center(
                child: Text(
                  'OR',
                  style: TextStyles.body.copyWith(color: AppColors.greyColor),
                ),
              ),
              const Gap(20),

              Center(
                child: SizedBox(
                  width: 273,
                  height: 56,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      side: BorderSide(color: AppColors.borderColor),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppImages.googleSvg, height: 24),
                        const Gap(12),
                        Text(
                          'Login with Google',
                          style: TextStyles.body.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(12),

              Center(
                child: SizedBox(
                  width: 275,
                  height: 56,
                  child: OutlinedButton(
                    style: OutlinedButton.styleFrom(
                      backgroundColor: Colors.white,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                      side: BorderSide(color: AppColors.borderColor),
                    ),
                    onPressed: () {},
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(AppImages.facebookSvg, height: 24),
                        const Gap(12),
                        Text(
                          'Login with Facebook',
                          style: TextStyles.body.copyWith(
                            color: AppColors.blackColor,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const Gap(16),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Already have an account?",
                    style: TextStyles.body.copyWith(
                      color: AppColors.blackColor,
                    ),
                  ),
                  TextButton(
                    onPressed: () => Navigator.pop(context),
                    child: Text(
                      'Sign in',
                      style: TextStyles.body.copyWith(
                        color: AppColors.primaryColor,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
