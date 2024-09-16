part of 'pages.dart';

class SignUpPage extends StatefulWidget {
  const SignUpPage({super.key});

  @override
  State<SignUpPage> createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController passwordController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GeneralPages(
        title: "Sign Up",
        subtitle: "Find your best ever meal!",
        onBackButtonPressed: () {
          Get.back();
        },
        child: Column(
          children: <Widget>[
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(
                DefaultMargin,
                26.0,
                DefaultMargin,
                6.0,
              ),
              child: Text(
                'Name Addres',
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: DefaultMargin,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: TextField(
                controller: nameController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type Your Name Address',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.fromLTRB(
                DefaultMargin,
                26.0,
                DefaultMargin,
                6.0,
              ),
              child: Text(
                'Email Address',
                style: blackFontStyle2,
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: DefaultMargin,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: TextField(
                controller: emailController,
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your email address',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.symmetric(
                horizontal: DefaultMargin,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 10,
              ),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(
                  10.0,
                ),
              ),
              child: TextField(
                controller: passwordController,
                obscureText: true,
                keyboardType: TextInputType.visiblePassword,
                decoration: InputDecoration(
                  border: InputBorder.none,
                  hintStyle: greyFontStyle,
                  hintText: 'Type your password',
                ),
              ),
            ),
            Container(
              width: double.infinity,
              height: 45,
              margin: EdgeInsets.only(
                top: 24,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: DefaultMargin,
              ),
              child: isLoading
                  ? SpinKitFadingCircle(
                      size: 45,
                      color: MainColor,
                    )
                  : ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        backgroundColor: MainColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      onPressed: () {
                        Get.to(() => AddressPage());
                      },
                      child: Text(
                        'Continue',
                        style: blackFontStyle3,
                      ),
                    ),
            ),
          ],
        ),
      ),
    );
  }
}
