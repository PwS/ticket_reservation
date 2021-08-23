import 'package:flutter/material.dart';
import 'package:ticket_reservation/ui/custom_widgets/custom_widgets.dart';
import 'package:ticket_reservation/ui/pages/home_page.dart';
import 'package:ticket_reservation/ui/pages/setting_page.dart';
import 'package:ticket_reservation/ui/pages/transaction_page.dart';
import 'package:ticket_reservation/ui/pages/wallet_page.dart';
import '../../utils/utils.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';

///DASHBOARD
class Dashboard extends StatelessWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);

    Widget customBottomNavigation() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: _sizeScreen.hp(8),
          margin: EdgeInsets.only(
              bottom: _sizeScreen.hp(4),
              left: _sizeScreen.wp(6),
              right: _sizeScreen.wp(6)),
          decoration: BoxDecoration(
              color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              CustomButtonNavigationItem(
                imageUrl: 'assets/icons/icon_home.png',
                isSelected: true,
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icons/icon_booking.png',
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icons/icon_card.png',
              ),
              CustomButtonNavigationItem(
                imageUrl: 'assets/icons/icon_settings.png',
              ),
            ],
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: Stack(
        children: [HomePage(), customBottomNavigation()],
      ),
    );
  }
}
