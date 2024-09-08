import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({super.key});

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: () {
          print('Sign in button pressed!');
        },
        child: Container(
          height: 50,
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
            borderRadius: BorderRadius.circular(20),
          ),
          child: const Center(
            child: Text(
              'SIGN IN',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
        ),
      );
}
