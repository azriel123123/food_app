part of 'pages.dart';

class DetailPage extends StatefulWidget {
  const DetailPage(
      {super.key, required this.onBackButtonPressed, required this.food});

  final Function onBackButtonPressed;
  final Food food;

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  int quantity = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            color: MainColor,
          ),
          SafeArea(
            child: Container(
              color: Colors.white,
            ),
          ),
          SafeArea(
            child: Container(
              width: double.infinity,
              height: 300,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(widget.food.picturePath ?? ''),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          SafeArea(
            child: ListView(
              children: <Widget>[
                // Back Button
                Container(
                  height: 100,
                  padding: EdgeInsets.symmetric(horizontal: DefaultMargin),
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: GestureDetector(
                      onTap: () {
                        widget.onBackButtonPressed();
                      },
                      child: Container(
                        padding: EdgeInsets.all(3),
                        width: 30,
                        height: 30,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.black12,
                        ),
                        child:
                            Image.asset('assets/images/back_arrow_white.png'),
                      ),
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.only(top: 180),
                  padding: EdgeInsets.symmetric(vertical: 26, horizontal: 16),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(50),
                      topRight: Radius.circular(50),
                    ),
                    color: Colors.white,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      // Food Name and Rating
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                widget.food.name ?? '',
                                style: blackFontStyle2,
                                maxLines: 2,
                              ),
                              SizedBox(
                                width: 24,
                              ),
                              RatingStars(
                                rate: widget.food.rate,
                              ),
                            ],
                          ),
                          // Quantity Controls
                          Row(
                            children: <Widget>[
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity = max(1, quantity - 1);
                                  });
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/btn_min.png'),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 50,
                                child: Text(
                                  quantity.toString(),
                                  style: blackFontStyle3,
                                  textAlign: TextAlign.center,
                                ),
                              ),
                              GestureDetector(
                                onTap: () {
                                  setState(() {
                                    quantity = min(999, quantity + 1);
                                  });
                                },
                                child: Container(
                                  width: 35,
                                  height: 35,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(
                                      image: AssetImage(
                                          'assets/images/btn_add.png'),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 16), // Spacing
                      // Food Description
                      Text(
                        'Description',
                        style: blackFontStyle2.copyWith(
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      SizedBox(height: 8),
                      Text(
                        widget.food.description ?? '',
                        style: blackFontStyle3,
                      ),

                      SizedBox(height: 16), // Spacing

                      // Food Ingredients
                      Row(
                        children: [
                          Text(
                            'Ingredients',
                            style: blackFontStyle2.copyWith(
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(
                            Icons.info,
                            color: MainColor,
                            size: 20,
                          ),
                        ],
                      ),
                      SizedBox(height: 8),
                      Text(
                        widget.food.ingradient ?? '',
                        style: blackFontStyle3,
                      ),
                      SizedBox(height: 16),
                      // Spacing// Food Price
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              Text(
                                'Price',
                                style: blackFontStyle2.copyWith(
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Icon(
                                Icons.attach_money,
                                color: Colors.green,
                                size: 20,
                              ),
                            ],
                          ),
                          Text(
                            NumberFormat.currency(
                              symbol: 'IDR',
                              decimalDigits: 0,
                              locale: 'id_ID',
                            ).format(
                              quantity * widget.food!.price!,
                            ),
                            style: blackFontStyle2,
                          ),
                        ],
                      ),
                      SizedBox(height: 25),
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                            backgroundColor: MainColor,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(15),
                            ),
                          ),
                          onPressed: () {},
                          child: Text(
                            'Order Now!!',
                            style: blackFontStyle3.copyWith(
                              color: Colors.white,
                              fontWeight: FontWeight.w800,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
