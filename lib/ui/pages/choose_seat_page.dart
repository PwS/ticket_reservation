import 'package:flutter/material.dart';
import 'package:ticket_reservation/ui/custom_widgets/custom_seat_item.dart';
import 'package:ticket_reservation/ui/custom_widgets/custom_widgets.dart';
import 'package:ticket_reservation/ui/pages/checkout_page.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';

class ChooseSeatPage extends StatelessWidget {
  const ChooseSeatPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget title() {
      return Container(
        margin: EdgeInsets.only(top: 50),
        child: Text('Select Your \nFavorite Seat',
            style:
                txtBlackTextStyle.copyWith(fontSize: 24, fontWeight: semiBold)),
      );
    }

    Widget seatStatus() {
      return Container(
        margin: EdgeInsets.only(top: 30),
        child: Row(
          children: [
            ///NOTE : Available
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/icon_available.png'))),
            ),
            Text(
              'Available',
              style: txtBlackTextStyle,
            ),

            ///NOTE : Selected
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/icon_selected.png'))),
            ),
            Text(
              'Selected',
              style: txtBlackTextStyle,
            ),

            ///NOTE : Unavailable
            Container(
              width: 16,
              height: 16,
              margin: EdgeInsets.only(left: 10, right: 6),
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/icons/icon_unavailable.png'))),
            ),
            Text(
              'Unavailable',
              style: txtBlackTextStyle,
            )
          ],
        ),
      );
    }

    Widget selectedSeat() {
      return Container(
        width: double.infinity,
        margin: EdgeInsets.only(top: 30),
        padding: EdgeInsets.symmetric(horizontal: 22, vertical: 30),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(
          children: [
            ///Note : Seat Indicator
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                      child: Text('A',
                          style: txtGreyTextStyle.copyWith(fontSize: 16))),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                      child: Text('B',
                          style: txtGreyTextStyle.copyWith(fontSize: 16))),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                      child: Text('',
                          style: txtGreyTextStyle.copyWith(fontSize: 16))),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                      child: Text('C',
                          style: txtGreyTextStyle.copyWith(fontSize: 16))),
                ),
                Container(
                  height: 48,
                  width: 48,
                  child: Center(
                      child: Text('D',
                          style: txtGreyTextStyle.copyWith(fontSize: 16))),
                ),
              ],
            ),

            ///Note : Seat 1
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    status: 2,
                  ),
                  CustomSeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text('1',
                            style: txtGreyTextStyle.copyWith(fontSize: 16))),
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            ///Note : Seat 2
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text('2',
                            style: txtGreyTextStyle.copyWith(fontSize: 16))),
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 2,
                  ),
                ],
              ),
            ),

            ///Note : Seat 3
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    status: 1,
                  ),
                  CustomSeatItem(
                    status: 1,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text('3',
                            style: txtGreyTextStyle.copyWith(fontSize: 16))),
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            ///Note : Seat 4
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 2,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text('4',
                            style: txtGreyTextStyle.copyWith(fontSize: 16))),
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            ///Note : Seat 5
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  CustomSeatItem(
                    status: 0,
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                  Container(
                    width: 48,
                    height: 48,
                    child: Center(
                        child: Text('5',
                            style: txtGreyTextStyle.copyWith(fontSize: 16))),
                  ),
                  CustomSeatItem(
                    status: 2,
                  ),
                  CustomSeatItem(
                    status: 0,
                  ),
                ],
              ),
            ),

            ///Note : Selected Seat
            Container(
              margin: EdgeInsets.only(top: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Your Seat',
                    style: txtGreyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'A3 , B3',
                    style: txtBlackTextStyle.copyWith(
                        fontSize: 16, fontWeight: medium),
                  )
                ],
              ),
            ),

            ///Note : Total Price
            Container(
              margin: EdgeInsets.only(top: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total',
                    style: txtGreyTextStyle.copyWith(fontWeight: light),
                  ),
                  Text(
                    'IDR 540.000.000',
                    style: txtPurpleTextStyle.copyWith(
                        fontSize: 16, fontWeight: semiBold),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    Widget checkoutButton() {
      return CustomButton(
          margin: EdgeInsets.only(top: 30, bottom: 46),
          textButton: 'Continue To Checkout',
          onPressed: () => Navigator.push(context,
              MaterialPageRoute(builder: (context) => CheckoutPage())));
    }

    return Scaffold(
      backgroundColor: kBackgroundColor,
      body: ListView(
        padding: EdgeInsets.symmetric(horizontal: 24),
        children: [title(), seatStatus(), selectedSeat(), checkoutButton()],
      ),
    );
  }
}
