import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import '../screens/orders_screen.dart';
import '../screens/special_zone.dart';
import '../screens/user_products_screen.dart';
import '../providers/auth.dart';

class AppDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.zero,
        scrollDirection: Axis.vertical,
        children: <Widget>[
          AppBar(
            leading: Icon(Icons.home),
            title: Text('Hello, User'),
            automaticallyImplyLeading: false,
          ),
          ListTile(
            leading: Icon(Icons.add_chart),
            title: Text('My Shop Zone'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed(SpecialZone.routeName);
            },
          ),
          Divider(
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            leading: Icon(Icons.shop),
            title: Text('Shop'),
            onTap: () {
              Navigator.of(context).pushReplacementNamed('/');
            },
          ),
          ListTile(
            leading: Icon(Icons.shopping_cart),
            title: Text('My Orders'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(OrdersScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.edit_attributes_outlined),
            title: Text('Manage Products'),
            onTap: () {
              Navigator.of(context)
                  .pushReplacementNamed(UserProductsScreen.routeName);
            },
          ),
          ListTile(
            leading: Icon(Icons.article_sharp),
            title: Text('My Coupons'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.account_circle),
            title: Text('My Account'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.favorite),
            title: Text('My Wishlist'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.notifications_active),
            title: Text('My Notification'),
            onTap: () {},
          ),
          Divider(
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            leading: Icon(Icons.notification_important),
            title: Text('Notification Preferences'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.help_center),
            title: Text('Help Centre'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.privacy_tip),
            title: Text('Privacy Policy'),
            onTap: () {},
          ),
          ListTile(
            leading: Icon(Icons.library_add_check),
            title: Text('Legal'),
            onTap: () {},
          ),
          Divider(
            thickness: 1.5,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            leading: Icon(Icons.exit_to_app_sharp),
            title: Text('Log Out'),
            onTap: () {
              Navigator.of(context).pop();
              Navigator.of(context).pushReplacementNamed('/');
              Provider.of<Auth>(context, listen: false).logout();
            },
          ),
        ],
      ),
    );
  }
}
