import 'package:flutter/material.dart';

class AppInput extends StatefulWidget {
  AppInput({super.key, required this.hintText, required this.obscureText});

  String hintText = '';
  bool obscureText = false;
  @override
  State<AppInput> createState() => _AppInputState();
}

class _AppInputState extends State<AppInput> {
  @override
  void initState() {
    isPassword = widget.obscureText;
    _obscureText = widget.obscureText;
    super.initState();
  }

  bool isPassword = false;
  bool _obscureText = false;

  @override
  Widget build(BuildContext context) => TextField(
        keyboardType: TextInputType.emailAddress,
        obscureText: _obscureText,
        cursorColor: Theme.of(context).primaryColor,
        decoration: InputDecoration(
          hintText: widget.hintText,
          suffixIcon: isPassword
              ? IconButton(
                  onPressed: () {
                    setState(() {
                      _obscureText = !_obscureText;
                    });
                  },
                  icon: const Icon(Icons.remove_red_eye_outlined))
              : null,
        ),
      );
}
