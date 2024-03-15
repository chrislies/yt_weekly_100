import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:yt_weekly_100/views/auth/login_or_register.dart';
import 'package:yt_weekly_100/views/home/layout_template/layout_template.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // utilize stream to listen to authentication
      body: StreamBuilder(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          // user is logged in
          if (snapshot.hasData) {
            return const LayoutTemplate();
          } else {
            return const LoginOrRegister();
          }
        },
      ),
    );
  }
}
