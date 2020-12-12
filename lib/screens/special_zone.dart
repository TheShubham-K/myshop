import 'package:flutter/material.dart';
import 'package:shop_app/widgets/app_drawer.dart';

class SpecialZone extends StatelessWidget {
  static const routeName = '/specialzone';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: AppDrawer(),
      appBar: AppBar(
        title: Text('Special Zone'),
      ),
      body: Center(
        child: Text(
          'Welcome to the special zone of MyShop App which is under Construction ... ',
          textAlign: TextAlign.center,
          style: TextStyle(
            fontSize: 18,
            fontFamily: 'Anton',
            fontWeight: FontWeight.w200,
          ),
        ),
      ),
    );
  }
}
