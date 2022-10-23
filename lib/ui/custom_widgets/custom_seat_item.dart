import 'package:flutter/material.dart';
import 'package:ticket_reservation/utils/theme/theme.dart';

class CustomSeatItem extends StatelessWidget {
  /// 1 : Available
  /// 2 : Selected
  /// 3 : Unavailable
  final int status;

  const CustomSeatItem({Key? key, required this.status}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color backgroundColor() {
      switch (status) {
        case 0:
          return kAvailableColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnAvailableColor;
        default:
          return kUnAvailableColor;
      }
    }

    Color borderColor() {
      switch (status) {
        case 0:
          return kPrimaryColor;
        case 1:
          return kPrimaryColor;
        case 2:
          return kUnAvailableColor;
        default:
          return kUnAvailableColor;
      }
    }

    Widget child() {
      switch (status) {
        case 0:
          return SizedBox();
        case 1:
          return Center(
              child: Text('You',
                  style: txtWhiteTextStyle.copyWith(fontWeight: semiBold)));
        case 2:
          return SizedBox();
        default:
          return SizedBox();
      }
    }

    return Container(
        width: 48,
        height: 48,
        decoration: BoxDecoration(
            color: backgroundColor(),
            border: Border.all(color: borderColor(),width: 2),
            borderRadius: BorderRadius.circular(15)),
        child: child());
  }
}
