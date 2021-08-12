import 'package:flutter/material.dart';
import 'package:ticket_reservation/ui/pages/get_started_page.dart';
import 'package:ticket_reservation/ui/pages/main_page.dart';
import 'package:ticket_reservation/ui/pages/review_result_sign_up_page.dart';
import 'package:ticket_reservation/ui/pages/sign_up_page.dart';
import 'package:ticket_reservation/ui/pages/splash_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (context) => SplashPage(),
        '/get_started': (context) => GetStartedPage(),
        '/sign_up': (context) => SignUpPage(),
        '/review_result_sign_up': (context) => ReviewResultSignUpPage(),
        '/home': (context) => MainPage()
      },
    );
  }
}
