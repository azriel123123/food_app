part of 'pages.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  State<FoodPage> createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    double listItemWidth =
        MediaQuery.of(context).size.width - 2 * DefaultMargin;
    return ListView(
      children: <Widget>[
        Container(
          width: double.infinity,
          height: 100,
          color: Colors.white,
          padding: EdgeInsets.symmetric(horizontal: DefaultMargin),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'Food Market',
                    style: blackFontStyle2,
                  ),
                  Text(
                    "Let's Get Some Foods",
                    style: blackFontStyle2,
                  ),
                ],
              ),
              Container(
                width: 75,
                height: 75,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    image: NetworkImage(
                        'https://i.pinimg.com/564x/f8/79/02/f8790243808475fdeb1865ecda0baee8.jpg'),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 220,
          width: double.infinity,
          margin: EdgeInsets.symmetric(vertical: DefaultMargin),
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: mockFoods
                .map((food) => Padding(
                      padding: EdgeInsets.only(
                          left: (food == mockFoods.first) ? DefaultMargin : 0,
                          right: DefaultMargin),
                      child: FoodCard(
                        food: food,
                      ),
                    ))
                .toList(),
          ),
        ),
        Container(
          child: Column(
            children: [
              CustomTabbar(
                selectedIndex: selectedIndex,
                titles: [
                  'New Taste',
                  'Popular',
                  'Recommended',
                ],
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              SizedBox(
                height: 20,
              ),
              Builder(builder: (_) {
                List<Food> foods = (selectedIndex == 0)
                    ? mockFoods
                    : (selectedIndex == 1)
                        ? []
                        : [];
                return Column(
                  children: foods
                      .map((e) => Padding(
                          padding: EdgeInsets.all(8.0),
                          child: FoodListItem(
                            food: e,
                            itemWidth: listItemWidth,
                          )))
                      .toList(),
                );
              }),
              SizedBox(
                height: 80,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
