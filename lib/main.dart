import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:yt_weekly_100/constants/app_colors.dart';
import 'package:yt_weekly_100/firebase_options.dart';
import 'package:yt_weekly_100/locator.dart';
import 'package:yt_weekly_100/views/account/account_view.dart';
import 'package:yt_weekly_100/views/auth/auth_view.dart';
import 'package:yt_weekly_100/views/auth/login_or_register.dart';
import 'package:yt_weekly_100/views/favorites/favorites_view.dart';
import 'package:yt_weekly_100/views/home/home_view.dart';
import 'package:yt_weekly_100/views/videos/videos_view.dart';

Future main() async {
  // For setting up Firebase.
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  setUpLocator();
  await dotenv.load(
      fileName: ".env"); // Load/Initialize the dotenv file in the Main Function
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Youtube Weekly 100',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: primaryColor),
        useMaterial3: true,
      ),
      routes: {
        '/auth': (context) => const LoginOrRegister(),
        '/home': (context) => const HomeView(),
        '/videos': (context) => const VideosView(),
        '/favorites': (context) => const FavoritesView(),
        '/account': (context) => AccountView(),
      },
      home: const AuthView(),
    );
  }
}
