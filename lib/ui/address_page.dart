part of 'pages.dart';

class AddressPage extends StatefulWidget {
  const AddressPage({super.key});

  @override
  State<AddressPage> createState() => _AddressPageState();
}

class _AddressPageState extends State<AddressPage> {
  TextEditingController addressController = TextEditingController();
  TextEditingController phoneNumberController = TextEditingController();
  TextEditingController houseNumberController = TextEditingController();
  bool isLoading = false;
  @override
  Widget build(BuildContext context) {
    return GeneralPages(
      title: 'Address',
      subtitle: "Make Sure It's Valid",
      onBackButtonPressed: () {
        Get.back();
      },
      child: Column(
        children: <Widget>[
          // Gambar
          Container(
            width: 110,
            height: 110,
            margin: EdgeInsets.only(top: 26.0),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/images/photo_border.png'),
              ),
            ),
            child: Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                image: DecorationImage(
                  image: NetworkImage(
                      'https://i.pinimg.com/736x/45/03/1d/45031d731b1038a6a1726201cb2c0eec.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          // Text Address
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              DefaultMargin,
              26.0,
              DefaultMargin,
              6,
            ),
            child: Text(
              'Address',
              style: blackFontStyle2,
            ),
          ),
          // Text Field
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: TextField(
              controller: addressController,
              decoration: InputDecoration(
                  border: InputBorder.none,
                  hintText: 'Type Your Address',
                  hintStyle: greyFontStyle),
            ),
          ),
          // Phone Number
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              DefaultMargin,
              10.0,
              DefaultMargin,
              6,
            ),
            child: Text(
              'Phone Number',
              style: blackFontStyle2,
            ),
          ),
          // Field Phone Number
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: TextField(
              controller: phoneNumberController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type Your Phone Number',
                hintStyle: greyFontStyle,
              ),
            ),
          ),
          // House Number
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              DefaultMargin,
              10.0,
              DefaultMargin,
              6,
            ),
            child: Text(
              'House Number',
              style: blackFontStyle2,
            ),
          ),
          // Field House Number
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: TextField(
              controller: houseNumberController,
              decoration: InputDecoration(
                border: InputBorder.none,
                hintText: 'Type Your House Number',
                hintStyle: greyFontStyle,
              ),
            ),
          ),
          // City Number
          Container(
            width: double.infinity,
            margin: EdgeInsets.fromLTRB(
              DefaultMargin,
              10.0,
              DefaultMargin,
              6,
            ),
            child: Text(
              'City',
              style: blackFontStyle2,
            ),
          ),
          // Field House Number
          Container(
            width: double.infinity,
            margin: EdgeInsets.symmetric(
              horizontal: 10,
            ),
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
              border: Border.all(
                color: Colors.black,
              ),
            ),
            child: DropdownButton(
              items: [
                DropdownMenuItem(
                  child: Text(
                    'Batam',
                  ),
                  value: 'Batam',
                ),
                DropdownMenuItem(
                  child: Text(
                    'Palembang',
                  ),
                  value: 'Palembang',
                ),
                DropdownMenuItem(
                  child: Text(
                    'Padang Pariaman',
                  ),
                  value: 'Padang Pariaman',
                ),
                DropdownMenuItem(
                  child: Text(
                    'Bekasi',
                  ),
                  value: 'Bekasi',
                ),
                DropdownMenuItem(
                  child: Text(
                    'Cirebon',
                  ),
                  value: 'Cirebon',
                ),
                DropdownMenuItem(
                  child: Text(
                    'Bandung',
                  ),
                  value: 'Bandung',
                ),
              ],
              onChanged: (item) {},
              isExpanded: true,
              underline: SizedBox(),
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
                Get.to(() => MainPage());
              },
              child: Text(
                'Click Account',
                style: blackFontStyle3,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
