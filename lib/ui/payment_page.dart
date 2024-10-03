part of 'pages.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key, required this.transaction});

  final Transaction transaction;

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {

  bool isLoading = false;

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
                          image: NetworkImage(widget.transaction.food!.picturePath!),
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
                            widget.transaction.food!.name!,
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
                            widget.transaction.food!.price,
                          ),
                        ),
                      ],
                    ),
                    Expanded(
                      child: Text(
                        '${widget.transaction.quantity} item(s)',
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
                    Text(widget.transaction.food!.name!),
                    Spacer(),
                    Text(
                      NumberFormat.currency(
                              symbol: 'IDR ', decimalDigits: 0, locale: 'id_ID')
                          .format(widget.transaction.food!.price),
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
                      '${widget.transaction.quantity.toString()} item(s)',
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
                          widget.transaction.food!.price! * widget.transaction.quantity!),
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
                      ).format(widget.transaction.food!.price! *
                          widget.transaction.quantity! *
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
                        widget.transaction.total! + (widget.transaction.food!.price! * widget.transaction.quantity! * 0.1) + 50000,
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
                    Text(widget.transaction.user!.name!),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('Email Penerima :'),
                    Spacer(),
                    Text(widget.transaction.user!.email!),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('Phone Number :'),
                    Spacer(),
                    Text(widget.transaction.user!.phoneNumber!),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('Addres :'),
                    Spacer(),
                    Text(widget.transaction.user!.address!),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('House Number :'),
                    Spacer(),
                    Text(widget.transaction.user!.houseNumber!),
                  ],
                ),
                SizedBox(
                  height: 6,
                ),
                Row(
                  children: [
                    Text('City :'),
                    Spacer(),
                    Text(widget.transaction.user!.city!),
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
                    onPressed: () async {
                      setState(() {
                        isLoading = true;
                      });
                      
                      bool result = await context.read<TransactionCubit>().submitTransaction(widget.transaction
                      .copyWith(dateTime: DateTime.now(),total: widget.transaction.total! * 1.1.toInt() + 50000,),);

                      if(result){
                        Get.to(SuccessOrderPage());
                      } else{
                        Get.snackbar(
                          "",
                          "",
                          backgroundColor: "D9435E".toColor(),
                          icon: Icon(
                            MdiIcons.closeCircleOutline,
                            color: Colors.white,
                          ),
                          titleText: Text(
                            'Sign In Failed',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          messageText: Text(
                            'Please Try Again Later',
                            style: GoogleFonts.poppins(
                              color: Colors.white,
                            ),
                          ),
                        );
                      }
                    },
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
