import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ticket_reservation/ui/custom_widgets/custom_widgets.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';
import '../../utils/utils.dart';
import 'destination_tile.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);

    Widget headerHomePage() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
        child: Row(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Howdy,\nKezia Anne',
                    style: txtBlackTextStyle.copyWith(
                        fontSize: 24, fontWeight: semiBold),
                    overflow: TextOverflow.ellipsis,
                  ),
                  SizedBox(
                    height: 6,
                  ),
                  Text(
                    'Preview Your Destination',
                    style: txtGreyTextStyle.copyWith(
                        fontSize: 16, fontWeight: light),
                  )
                ],
              ),
            ),
            Container(
              height: 60,
              width: 60,
              decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage('assets/images/image_profile.png'))),
            )
          ],
        ),
      );
    }

    Widget popularDestination() {
      return Container(
        margin:
            EdgeInsets.only(left: defaultMargin, right: defaultMargin, top: 30),
        child: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              CustomCardDestination(
                tittleDestination: 'Lake Ciliwung',
                subTittleDestination: 'Tangerang',
                ratingDestination: 4.8,
                imageUrl: 'assets/images/image_destination1.png',
              ),
              CustomCardDestination(
                tittleDestination: 'White House',
                subTittleDestination: 'Spain',
                ratingDestination: 4.7,
                imageUrl: 'assets/images/image_destination2.png',
              ),
              CustomCardDestination(
                tittleDestination: 'Hill Heyo',
                subTittleDestination: 'Monaco',
                ratingDestination: 4.8,
                imageUrl: 'assets/images/image_destination3.png',
              ),
              CustomCardDestination(
                tittleDestination: 'Menarra',
                subTittleDestination: 'Japan',
                ratingDestination: 5.0,
                imageUrl: 'assets/images/image_destination4.png',
              ),
              CustomCardDestination(
                tittleDestination: 'Payung Teduh',
                subTittleDestination: 'Singapore',
                ratingDestination: 4.8,
                imageUrl: 'assets/images/image_destination5.png',
              ),
            ],
          ),
        ),
      );
    }

    Widget newDestinations() {
      return Container(
        margin: EdgeInsets.only(
            top: 30, left: defaultMargin, right: defaultMargin, bottom: 100),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'New This Year',
              style: txtBlackTextStyle.copyWith(
                  fontSize: 18, fontWeight: semiBold),
            ),
            DestinationTile(
              contentTittle: 'Danau Beratan',
              contentSubTittle: 'Singaraja',
              imageUrl: 'assets/images/image_destination6.png',
              ratingDestinationTile: 4.5,
            ),
            DestinationTile(
              contentTittle: 'Sydney Opera',
              contentSubTittle: 'Australia',
              imageUrl: 'assets/images/image_destination7.png',
              ratingDestinationTile: 4.7,
            ),
            DestinationTile(
              contentTittle: 'Roma',
              contentSubTittle: 'Italy',
              imageUrl: 'assets/images/image_destination8.png',
              ratingDestinationTile: 4.8,
            ),
            DestinationTile(
              contentTittle: 'Payung Teduh',
              contentSubTittle: 'Singapore',
              imageUrl: 'assets/images/image_destination9.png',
              ratingDestinationTile: 4.5,
            ),
            DestinationTile(
              contentTittle: 'Hill Key',
              contentSubTittle: 'Monaco',
              imageUrl: 'assets/images/image_destination10.png',
              ratingDestinationTile: 4.7,
            )
          ],
        ),
      );
    }

    return ListView(
      children: [headerHomePage(), popularDestination(), newDestinations()],
    );
  }
}
