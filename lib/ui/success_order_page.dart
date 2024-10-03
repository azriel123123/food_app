part of 'pages.dart';

class SuccessOrderPage extends StatelessWidget {
  const SuccessOrderPage({super.key});

  @override
  Widget build(BuildContext context) {
    return IllustrationPage(
        title: "You've Made Order",
        subtitle: 'Just Stay At Home While We Are\npreparing Your Best Food',
        picturePath: 'assets/images/bike.png',
        buttonTitle1: 'Order Other Foods',
        buttonTap1: (){
          Get.offAll(MainPage());
        },
        buttonTap2: (){
          Get.offAll(MainPage(initialPage: 1));
        },
        buttonTitle2: 'View My Order',
    );
  }
}
