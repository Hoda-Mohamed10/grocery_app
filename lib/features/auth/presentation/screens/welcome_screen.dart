import 'package:flutter/material.dart';
import 'package:store_app/core/constants/app_colors.dart';
import 'package:store_app/features/auth/presentation/screens/sign_in_screen.dart';
import 'package:store_app/features/auth/presentation/screens/sign_up_screen.dart';
import 'package:store_app/core/widgets/custom_app_button.dart';
import 'package:store_app/core/constants/app_styles.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.white,
      body: Padding(
        padding: EdgeInsets.all(60),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.asset('assets/images/welcome.png',
              height: 365,
            ),
           SizedBox(height: 55),
            Text('Welcome to our app',
              textAlign: TextAlign.center,
              style: AppStyle.welcomeTitle,
            ),
            SizedBox(height: 17),
            Text('Shop online and get groceries\ndelivered from stores to your home\nin as fast as 1 hour.',
              textAlign: TextAlign.center,
              style: AppStyle.welcomeDescription,
            ),
            SizedBox(height: 25),
            CustomAppButton(
              text: 'Sign Up',
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignUpScreen(),
                  ),
                );
              },
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).push(
                  MaterialPageRoute(
                    builder: (context) => SignInScreen(),
                  ),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: AppColors.white,
                fixedSize: Size.fromHeight(50),
                side: BorderSide(
                  color: AppColors.primary,
                ),
              ),
              child: Text('Sign In',
                style: AppStyle.outlinedButtonText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}