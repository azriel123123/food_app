part of 'widgets.dart';

class AccountList extends StatelessWidget {
  const AccountList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Edit Profile'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('Home Address'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('Security'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('Payment'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
        Divider(),
        ListTile(
          title: Text('Sign Out'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {},
        ),
      ],
    );
  }
}
