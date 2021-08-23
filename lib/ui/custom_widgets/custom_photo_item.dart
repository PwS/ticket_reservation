part of 'custom_widgets.dart';

class CustomPhotoItem extends StatelessWidget {
  final String imageUrl;

  const CustomPhotoItem({Key? key, required this.imageUrl}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var _sizeScreen = Screen(MediaQuery.of(context).size);
    return Container(
      height: _sizeScreen.hp(10),
      width: _sizeScreen.wp(20),
      margin: EdgeInsets.only(right: _sizeScreen.wp(2)),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18),
          image:
              DecorationImage(fit: BoxFit.cover, image: AssetImage(imageUrl))),
    );
  }
}
