part of 'pages.dart';

class PaymentPage extends StatelessWidget {
  const PaymentPage({super.key, required this.transaction});

  final Transaction transaction;

  @override
  Widget build(BuildContext context) {
    return GeneralPages(
      title: 'Payment',
      subtitle: 'You Deserve Better Meal',
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            margin: EdgeInsets.symmetric(horizontal: 12),
            padding: EdgeInsets.symmetric(vertical: 12),
            color: Colors.white,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  'Item Orders',
                  style: blackFontStyle1,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: <Widget>[
                    Container(
                      width: 60,
                      height: 60,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        image: DecorationImage(
                          image: NetworkImage(transaction.food!.picturePath!),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        SizedBox(
                          width: MediaQuery.of(context).size.width - 189,
                          child: Text(
                            transaction.food!.name!,
                            style: blackFontStyle3,
                            maxLines: 1,
                            overflow: TextOverflow.clip,
                          ),
                        ),
                        Text(
                          NumberFormat.currency(
                                  symbol: 'IDR ',
                                  decimalDigits: 0,
                                  locale: 'id-ID')
                              .format(
                            transaction.food!.price,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        '${transaction.quantity} item(s)',
                        style: greyFontStyle.copyWith(fontSize: 13),
                        textAlign: TextAlign.end,
                      ),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.black,
                  height: 15,
                ),
                Text(
                  'Detail Transaction',
                  style: blackFontStyle1.copyWith(fontSize: 16),
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: <Widget>[
                    Text(transaction.food!.name!),
                    Spacer(),
                    Text(
                      NumberFormat.currency(
                              symbol: 'IDR ', decimalDigits: 0, locale: 'id_ID')
                          .format(transaction.food!.price),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: <Widget>[
                    Text('Quantity'),
                    Spacer(),
                    Text(
                      '${transaction.quantity.toString()} item(s)',
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: <Widget>[
                    Text('Sub Total'),
                    Spacer(),
                    Text(
                      NumberFormat.currency(
                        symbol: 'IDR ',
                        decimalDigits: 0,
                        locale: 'id_ID',
                      ).format(
                          transaction.food!.price! * transaction.quantity!),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.black,
                  height: 15,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: <Widget>[
                    Text('Tax 10%'),
                    Spacer(),
                    Text(
                      NumberFormat.currency(
                        symbol: 'IDR ',
                        decimalDigits: 0,
                        locale: 'id_ID',
                      ).format(transaction.food!.price! *
                          transaction.quantity! *
                          0.1),
                    ),
                  ],
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: <Widget>[
                    Text('Driver'),
                    Spacer(),
                    Text(
                      NumberFormat.currency(
                        symbol: 'IDR ',
                        decimalDigits: 0,
                        locale: 'id_ID',
                      ).format(50000),
                    ),
                  ],
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.black,
                  height: 15,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: <Widget>[
                    Text(
                      'Total',
                      style: blackFontStyle2,
                    ),
                    Spacer(),
                    Text(
                      NumberFormat.currency(
                        symbol: 'IDR ',
                        decimalDigits: 0,
                        locale: 'id_ID',
                      ).format(
                        transaction.total!,
                      ),
                      style: blackFontStyle2,
                    ),
                  ],
                ),
                SizedBox(
                  height: DefaultMargin,
                ),
                Divider(
                  thickness: 0.5,
                  color: Colors.black,
                  height: 15,
                ),
                Text(
                  'Deliver To :',
                  style: blackFontStyle3,
                ),
                SizedBox(
                  height: 12,
                ),
                Row(
                  children: [
                    Text('Nama Penerima :'),
                    Spacer(),
                    Text(transaction.user!.name!),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('Email Penerima :'),
                    Spacer(),
                    Text(transaction.user!.email!),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('Phone Number :'),
                    Spacer(),
                    Text(transaction.user!.phoneNumber!),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('Addres :'),
                    Spacer(),
                    Text(transaction.user!.address!),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('House Number :'),
                    Spacer(),
                    Text(transaction.user!.houseNumber!),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('City :'),
                    Spacer(),
                    Text(transaction.user!.city!),
                  ],
                ),
                Container(
                  width: double.infinity,
                  margin: EdgeInsets.only(top: 12),
                  height: 45,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        )),
                    onPressed: () {},
                    child: Text(
                      'Order Now',
                      style: blackFontStyle3.copyWith(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
