import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_workshop_tweet_app/app.dart';
import 'package:flutter_workshop_tweet_app/design/app_theme.dart';
import 'package:flutter_workshop_tweet_app/firebase_options.dart';
//import 'package:flutter_workshop_tweet_app/features/onboarding/ui/onboarding_screen.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: AppTheme.darkTheme,
      home: const DecidePage(),
    );
  }
}
