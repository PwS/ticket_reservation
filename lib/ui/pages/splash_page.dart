import 'dart:async';

import 'package:flutter/material.dart';
import 'package:ticket_reservation/ui/pages/get_started_page.dart';
import '../../utils/utils.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    Timer(Duration(seconds: 3), () {
      Navigator.pushNamed(context, '/get_started');
      /* Navigator.push(
          context, MaterialPageRoute(builder: (context) => GetStartedPage()));*/
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Scaffold(
      backgroundColor: kPrimaryColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: _sizeScreen.sizeHeight(100),
              height: _sizeScreen.sizeWidth(100),
              margin: EdgeInsets.only(bottom: _sizeScreen.sizeHeight(25)),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/icon_airplane.png'))),
            ),
            Text(
              'AIRPLANE',
              style: kWhiteTextStyle.copyWith(
                  fontSize: 32, fontWeight: medium, letterSpacing: 10),
            )
          ],
        ),
      ),
    );
  }
}
