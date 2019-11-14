import 'package:flutter/material.dart';
import 'package:test_app/services/AuthService.dart';

class LoginButton extends StatelessWidget {
  const LoginButton(this.email, this.password, this.checkForLoginErrors);

  final String email;
  final String password;
  final Function checkForLoginErrors;

  @override
  Widget build(BuildContext context) {
    return RaisedButton(
      child: const Text('Login'),
      color: const Color(0xffb2bec3),
      onPressed: () async {
        final bool loginSuccess = await AuthService.signIn(email, password, checkForLoginErrors);

        if (loginSuccess == true) {
          Navigator.pushNamed(context, '/home');
        }
      },
    );
  }
}