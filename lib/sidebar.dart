import 'package:flutter/material.dart';

class NavBar extends StatelessWidget {
  const NavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          UserAccountsDrawerHeader(
            accountName: Text('Акиева Айпери'),
            accountEmail: Text('id123456789'),
            currentAccountPicture: CircleAvatar(
              child: ClipOval(
                child: Image.asset('assets/img.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}
