part of 'pages.dart';

class IllustrationPage extends StatelessWidget {
  const IllustrationPage(
      {super.key,
      required this.title,
      required this.subtitle,
      required this.picturePath,
      required this.buttonTitle1,
      this.buttonTitle2,
      required this.buttonTap1,
      this.buttonTap2});

  final String title;
  final String subtitle;
  final String picturePath;
  final String buttonTitle1;
  final String? buttonTitle2;
  final Function buttonTap1;
  final Function? buttonTap2;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              picturePath,
              width: 240,
            ),
            Text(
              title,
              style: blackFontStyle2.copyWith(
                fontSize: 20,
              ),
            ),
            Text(
              subtitle,
              style: greyFontStyle,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 12,
            ),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: MainColor,
              ),
              onPressed: () {},
              child: Text(buttonTitle1),
            ),
            (buttonTap2 == null)
                ? SizedBox()
                : ElevatedButton(onPressed: (){
                  buttonTap2!();
            }, child: Text('Go To Home Page'),),
          ],
        ),
      ),
    );
  }
}
