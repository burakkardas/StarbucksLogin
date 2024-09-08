import 'package:flutter/material.dart';
import 'package:starbucks_login/constants/app_images.dart';
import 'package:starbucks_login/widgets/app_button.dart';
import 'package:starbucks_login/widgets/login_form.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    Size _size = MediaQuery.of(context).size;
    return Scaffold(
      body: Container(
        width: _size.width,
        height: _size.height,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(AppImages.loginBackground),
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 50,
            ),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Image.asset(
                  AppImages.logo,
                  height: 80,
                ),
                const LoginForm(),
                const AppButton(),
                const SizedBox(
                  height: 120,
                ),
                RichText(
                  text: const TextSpan(
                      style: TextStyle(
                        color: Colors.white,
                      ),
                      children: <TextSpan>[
                        TextSpan(text: 'Not a member? '),
                        TextSpan(
                            text: 'Sign up now',
                            style: TextStyle(fontWeight: FontWeight.w700))
                      ]),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
