part of 'pages.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(bottom: 50),
          padding: EdgeInsets.only(bottom: 12),
          color: Colors.grey,
          child: Column(
            children: <Widget>[
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
              SizedBox(height: 12),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(mockUser.name!, style: blackFontStyle1),
                  Text(mockUser.email!, style: blackFontStyle2),
                ],
              ),
            ],
          ),
        ),
        Container(
          height: MediaQuery.of(context).size.height - 320,
          width: double.infinity,
          color: Colors.grey,
          child: Column(
            children: [
              CustomTabbar(
                selectedIndex: selectedIndex,
                titles: ['Account', 'FoodMarket'],
                onTap: (index) {
                  setState(() {
                    selectedIndex = index;
                  });
                },
              ),
              SizedBox(height: 20),
              if (selectedIndex == 0) AccountList() else FoodMarketList(),
            ],
          ),
        ),
      ],
    );
  }
}
