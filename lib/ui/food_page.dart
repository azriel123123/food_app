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
                      (context.read<UserCubit>().state as UserLoaded)
                              .user
                              .picturePath ??
                          'https://i.pinimg.com/474x/59/f0/d0/59f0d0067c5d04c5db5f92f517767002.jpg${(context.read<UserCubit>().state as UserLoaded).user.name}',
                    ),
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
          child: BlocBuilder<FoodCubit, FoodState>(
            builder: (_, state) => (state is FoodLoaded)
                ? ListView(
                    scrollDirection: Axis.horizontal,
                    children: mockFoods
                        .map((food) => Padding(
                              padding: EdgeInsets.only(
                                  left: (food == mockFoods.first)
                                      ? DefaultMargin
                                      : 0,
                                  right: DefaultMargin),
                              child: GestureDetector(
                                onTap: () {
                                  Get.to(
                                    DetailPage(
                                        onBackButtonPressed: () {
                                          Get.back();
                                        },
                                        transaction: Transaction(
                                            food: food,
                                            user: (context
                                                    .read<UserCubit>()
                                                    .state as UserLoaded)
                                                .user)),
                                  );
                                },
                                child: FoodCard(
                                  food: food,
                                ),
                              ),
                            ))
                        .toList(),
                  )
                : Center(),
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
          BlocBuilder<FoodCubit, FoodState>(
            builder: (_, state) {
              if (state is FoodLoaded) {
                List<Food> foods = state.foods
                    .where((e) => e.types!.contains((selectedIndex != 0)
                    ? FoodType.new_food
                    : (selectedIndex != 1)
                    ? FoodType.popular
                    : FoodType.recommended))
                    .toList();

                return Column(
                  children: foods
                      .map((food) => Padding(
                    padding: EdgeInsets.all(8.0),
                    child: GestureDetector(
                      onTap: () {
                        Get.to(
                          DetailPage(
                            onBackButtonPressed: () {
                              Get.back();
                            },
                            transaction: Transaction(
                              food: food,
                              user: (context.read<UserCubit>().state as UserLoaded)
                                  .user,
                            ),
                          ),
                        );
                      },
                      child: FoodListItem(
                        food: food,
                        itemWidth: listItemWidth,
                      ),
                    ),
                  ))
                      .toList(),
                );
              } else {
                return Center(
                  child: loadingIndicator,
                );
              }
            },
          ),
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
