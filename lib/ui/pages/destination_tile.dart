import 'package:flutter/material.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';
import 'package:ticket_reservation/utils/utils.dart';

class DestinationTile extends StatelessWidget {
  final String contentTittle;
  final String contentSubTittle;
  final String imageUrl;
  final double ratingDestinationTile;

  const DestinationTile(
      {Key? key,
      required this.contentTittle,
      required this.contentSubTittle,
      required this.imageUrl,
      this.ratingDestinationTile = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 16),
      padding: EdgeInsets.all(10),
      decoration: BoxDecoration(
          color: kWhiteColor, borderRadius: BorderRadius.circular(18)),
      child: Row(
        children: [
          Container(
            width: 70,
            height: 70,
            margin: EdgeInsets.only(right: 16),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(imageUrl))),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  contentTittle,
                  style: txtBlackTextStyle.copyWith(
                      fontSize: 18, fontWeight: medium),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  contentSubTittle,
                  style: txtGreyTextStyle.copyWith(fontWeight: light),
                )
              ],
            ),
          ),
          Container(
            width: 55,
            height: 30,
            decoration: BoxDecoration(
                color: kWhiteColor,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(18))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 20,
                  height: 20,
                  margin: EdgeInsets.only(right: 2),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/icons/icon_star.png'))),
                ),
                Text(
                  ratingDestinationTile.toString(),
                  style: txtBlackTextStyle.copyWith(
                      fontSize: 14, fontWeight: medium),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
