part of 'widgets.dart';

class FoodMarketList extends StatelessWidget {
  const FoodMarketList({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        ListTile(
          title: Text('Rate App'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
          },
        ),
        Divider(),
        ListTile(
          title: Text('Help Center'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
          },
        ),
        Divider(),
        ListTile(
          title: Text('Privacy & Policy'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
          },
        ),
        Divider(),
        ListTile(
          title: Text('Term & Conditions'),
          trailing: Icon(Icons.arrow_forward_ios),
          onTap: () {
          },
        ),
      ],
    );
  }
}
