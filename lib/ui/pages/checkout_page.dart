import 'package:flutter/material.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget headerRoute() {
      return Container();
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: defaultMargin),
        children: [headerRoute()],
      ),
    );
  }
}
