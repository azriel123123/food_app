part of 'widgets.dart';

class FoodListItem extends StatelessWidget {
  const FoodListItem({super.key, this.food, this.itemWidth});

  final Food? food;
  final double? itemWidth;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Container(
          height: 80,
          width: 80,
          margin: EdgeInsets.only(right: 12.0),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
          image: DecorationImage(
              image: NetworkImage(food?.picturePath ??
                  'https://i.pinimg.com/474x/36/23/11/362311f4d489fdfdf84a45cb7540236b.jpg${food?.name}'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        SizedBox(
          width: (itemWidth ?? 0) - 182,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                food?.name ?? 'No Name',
                style: blackFontStyle2,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Text(
                NumberFormat.currency(
                        symbol: 'IDR', decimalDigits: 0, locale: 'id-ID')
                    .format(food?.price),
              ),
            ],
          ),
        ),
        RatingStars(rate: food?.rate,),
      ],
    );
  }
}
