part of 'widgets.dart';

class OrderListItem extends StatelessWidget {
  const OrderListItem({
    super.key,
    required this.itemWidth,
    required this.transaction,
  });

  final Transaction transaction;
  final double itemWidth;

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
              image: NetworkImage(transaction.food?.picturePath ??
                  'https://i.pinimg.com/474x/36/23/11/362311f4d489fdfdf84a45cb7540236b.jpg${transaction.food?.name}'),
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
                transaction.food?.name ?? 'No Name',
                style: blackFontStyle2,
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
              Row(
                children: [
                  Text(transaction.quantity.toString() + 'items(s) ~ '),
                  Text(
                    NumberFormat.currency(
                            symbol: 'IDR', decimalDigits: 0, locale: 'id-ID')
                        .format(transaction.total!),
                  ),
                ],
              ),
            ],
          ),
        ),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: <Widget>[
              Text(
                convertDateTimeDisplay(transaction.dateTime!),
                style: greyFontStyle.copyWith(
                  fontSize: 13,
                ),
              ),
              (transaction.status == TransactionStatus.delivered)
                  ? Text(
                      'Delivered',
                      style: blackFontStyle3.copyWith(
                        color: Colors.blue,
                        fontSize: 12,
                      ),
                    )
                  : (transaction.status == TransactionStatus.cancel)
                      ? Text(
                          'Cancel',
                          style: blackFontStyle3.copyWith(
                            color: Colors.red,
                            fontSize: 12,
                          ),
                        )
                      : (transaction.status == TransactionStatus.pending)
                          ? Text(
                              'Pending',
                              style: blackFontStyle3.copyWith(
                                color: Colors.yellow,
                                fontSize: 12,
                              ),
                            )
                          : Text(
                              'On Delivery',
                              style: blackFontStyle3.copyWith(
                                color: Colors.green,
                                fontSize: 12,
                              ),
                            ),
            ],
          ),
        ),
      ],
    );
  }
}
