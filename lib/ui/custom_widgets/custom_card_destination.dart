part of 'custom_widgets.dart';

class CustomCardDestination extends StatelessWidget {
  final String tittleDestination;
  final String subTittleDestination;
  final String imageUrl;
  final double ratingDestination;

  CustomCardDestination(
      {Key? key,
      required this.tittleDestination,
      required this.subTittleDestination,
      required this.imageUrl,
      this.ratingDestination = 0})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => DetailPage()));
      },
      child: Container(
        width: 200,
        height: 323,
        margin: EdgeInsets.only(right: defaultMargin),
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(18), color: kWhiteColor),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 180,
              height: 220,
              margin: EdgeInsets.only(bottom: 20),
              decoration: BoxDecoration(
                  image: DecorationImage(image: AssetImage(imageUrl)),
                  borderRadius: BorderRadius.circular(18)),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
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
                                image:
                                    AssetImage('assets/icons/icon_star.png'))),
                      ),
                      Text(
                        ratingDestination.toString(),
                        style: txtBlackTextStyle.copyWith(
                            fontSize: 14, fontWeight: medium),
                      )
                    ],
                  ),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    tittleDestination,
                    style: txtBlackTextStyle.copyWith(
                        fontSize: 18, fontWeight: medium),
                  ),
                  SizedBox(
                    height: 5,
                  ),
                  Text(
                    subTittleDestination,
                    style: txtGreyTextStyle.copyWith(
                        fontSize: 14, fontWeight: light),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
