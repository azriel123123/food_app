part of 'pages.dart';

class PaymentMethodPage extends StatelessWidget {
  const PaymentMethodPage({super.key, required this.paymentURL});

  final String paymentURL;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: IllustrationPage(
        title: 'Finish Your Payment',
        subtitle: 'Please Select Your Favorite\nPayment Method',
        picturePath: 'assets/images/Payment.png',
        buttonTitle1: 'Payment Method',
        buttonTap1: () async {
          await launch(paymentURL);
        },
        buttonTap2: (){
          Get.to(SuccessOrderPage());
        },
        buttonTitle2: 'Continue',
      ),
    );
  }
}
