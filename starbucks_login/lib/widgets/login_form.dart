import 'package:flutter/material.dart';
import 'package:starbucks_login/widgets/app_input.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({super.key});

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Log in with Email',
            style: _textStyle(context),
          ),
          const SizedBox(
            height: 10,
          ),
          AppInput(
            hintText: 'Email',
            obscureText: false,
          ),
          const SizedBox(
            height: 10,
          ),
          AppInput(
            hintText: 'Password',
            obscureText: true,
          ),
          const SizedBox(
            height: 5,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              TextButton(
                onPressed: () {},
                child: Text(
                  'Forgot?',
                  style: _textStyle(context),
                ),
              ),
            ],
          )
        ],
      );

  TextStyle _textStyle(BuildContext context) {
    return TextStyle(
      color: Theme.of(context).primaryColor,
    );
  }
}
