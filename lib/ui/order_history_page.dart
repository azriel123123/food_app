part of 'pages.dart';

class OrderHistoryPage extends StatefulWidget {
  const OrderHistoryPage({super.key});

  @override
  State<OrderHistoryPage> createState() => _OrderHistoryPageState();
}

class _OrderHistoryPageState extends State<OrderHistoryPage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<TransactionCubit, TransactionState>(
      builder: (_, state) {
        if (state is TransactionLoaded) {
          if (state.transactions.length == 0) {
            return IllustrationPage(
              title: 'Ouch! Hungry',
              subtitle: 'Seems like you have not\nordered any food yet',
              picturePath: 'assets/images/food_wishes.png',
              buttonTitle1: 'Find Foods',
              buttonTap1: () {},
            );
          } else {
            double listItemWidth =
                MediaQuery.of(context).size.width - 2 * DefaultMargin;
            return ListView(
              children: <Widget>[
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(
                    bottom: DefaultMargin,
                  ),
                  padding: EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: DefaultMargin,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        'Your Order',
                        style: blackFontStyle2,
                      ),
                      Text(
                        'Wait For The Best Meal',
                        style: blackFontStyle3,
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Container(
                        width: double.infinity,
                        color: Colors.white,
                        child: Column(
                          children: [
                            CustomTabbar(
                              selectedIndex: selectedIndex,
                              titles: ['in Progress', 'Past Orders'],
                              onTap: (index) {
                                setState(() {
                                  selectedIndex = index;
                                });
                              },
                            ),
                            SizedBox(
                              height: 16,
                            ),
                            Builder(builder: (_) {
                              List<Transaction> transactions = (selectedIndex ==
                                      0
                                  ? state.transactions
                                      .where((e) =>
                                          e.status ==
                                              TransactionStatus.on_delivery ||
                                          e.status == TransactionStatus.pending)
                                      .toList()
                                  : state.transactions
                                      .where((e) =>
                                          e.status ==
                                              TransactionStatus.delivered ||
                                          e.status == TransactionStatus.cancel)
                                      .toList());
                              return Column(
                                children: transactions
                                    .map((e) => Padding(
                                          padding: const EdgeInsets.all(8.0),
                                          child: OrderListItem(
                                            transaction: e,
                                            itemWidth: listItemWidth,
                                          ),
                                        ))
                                    .toList(),
                              );
                            })
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            );
          }
        } else {
          return Center(
            child: loadingIndicator,
          );
        }
      },
    );
  }
}
