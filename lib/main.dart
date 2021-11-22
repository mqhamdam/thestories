// ignore_for_file: avoid_void_async

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:thestories/presentation/my_app.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  //re run build
  await Firebase.initializeApp();
  // ! ACTIVE WHEN IN PROD
  // await FirebaseAppCheck.instance
  //     .activate(webRecaptchaSiteKey: 'recaptcha-v3-site-key');
  runApp(MyApp());
}
