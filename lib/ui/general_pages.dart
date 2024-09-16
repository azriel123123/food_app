part of 'pages.dart';

class GeneralPages extends StatelessWidget {
  const GeneralPages({
    super.key,
    this.title = 'Title',
    this.subtitle = 'Subtitle',
    this.bgColor,
    this.onBackButtonPressed,
    this.child,
  });

  final String title;
  final String subtitle;
  final Color? bgColor;
  final Function? onBackButtonPressed;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: Colors.white,
          ),
          SafeArea(
            child: Container(
              color: bgColor ?? Colors.white,
            ),
          ),
          SafeArea(
            child: ListView(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      width: double.infinity,
                      height: 100,
                      color: Colors.white,
                      padding: EdgeInsets.symmetric(horizontal: 24.0),
                      child: Row(
                        children: <Widget>[
                          onBackButtonPressed != null
                              ? GestureDetector(
                                  onTap: () {
                                    if (onBackButtonPressed != null) {
                                      onBackButtonPressed!();
                                    }
                                    ;
                                  },
                                  child: Container(
                                    width: DefaultMargin,
                                    height: DefaultMargin,
                                    margin: EdgeInsets.only(right: 26.0),
                                    decoration: BoxDecoration(
                                      image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/back_arrow.png'),
                                      ),
                                    ),
                                  ),
                                )
                              : SizedBox(),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                title,
                                style: blackFontStyle1,
                              ),
                              Text(
                                subtitle,
                                style: blackFontStyle2,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Container(
                  height: DefaultMargin,
                  width: double.infinity,
                  color: "48CFCB".toColor(),
                ),
                child ?? SizedBox(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
