part of 'shared.dart';

const double DefaultMargin = 24;

Color MainColor = "FFC700".toColor();
Color greyColor = "8D92A3".toColor();

Widget loadingIndicator = SpinKitFadingCircle(
  size: 45,
  color: MainColor,
);

TextStyle greyFontStyle = GoogleFonts.poppins().copyWith(color: greyColor);
TextStyle blackFontStyle1 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 22, fontWeight: FontWeight.w500);
TextStyle blackFontStyle2 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 16, fontWeight: FontWeight.w500);
TextStyle blackFontStyle3 = GoogleFonts.poppins()
    .copyWith(color: Colors.black, fontSize: 14, fontWeight: FontWeight.w300);
