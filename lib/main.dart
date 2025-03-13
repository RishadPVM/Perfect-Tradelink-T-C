import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:hardware_t_c/firebase_options.dart';
import 'package:hardware_t_c/pages/about_app/about.dart';
import 'package:hardware_t_c/pages/about_app/privacy_policy.dart';
import 'package:hardware_t_c/pages/about_app/terms_and_conditions.dart';
import 'package:hardware_t_c/pages/deleteRequst/delete_requst.dart';



Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform,);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Perfect Tradelink',
      initialRoute: '/',
      routes: {
        '/': (context) => PrivacyPolicyPage(),
        '/about': (context) => AboutPage(),
        '/terms-and-conditions': (context) => TermsAndConditionsPage(),
        '/delete-account-request':(context)=> DeleteRequestPage()
      },
    );
  }
}
