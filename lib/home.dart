import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:upai/pages/chat.dart';
import 'package:upai/pages/dashboard.dart';
import 'package:upai/pages/profile.dart';
import 'package:upai/pages/settings.dart';
import 'package:upai/sidebar.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int currentTab = 0; // to keep track of active tab index
  final List<Widget> screens = [
    Dashboard(),
    Chat(),
    Profile(),
    Settings(),
  ]; // to store nested tabs
  final PageStorageBucket bucket = PageStorageBucket();
  Widget currentScreen = Dashboard(); // Our first view in viewport

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: IconButton(
          onPressed: () {
            Navigator.push(
                context, MaterialPageRoute(builder: (context) => NavBar()));
          },
          icon: Icon(
            Icons.menu,
            size: 30,
            color: Colors.black54,
          ),
        ),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.search,
              size: 30,
              color: Colors.black54,
            ),
          )
        ],
      ),
      body: PageStorage(
        child: currentScreen,
        bucket: bucket,
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Color(0xffBFF6B00),
        child: Image(image: AssetImage('assets/vector.png'), fit: BoxFit.cover),
        onPressed: () {},
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomAppBar(
        shape: CircularNotchedRectangle(),
        notchMargin: 10,
        child: Container(
          height: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Dashboard(); // if user taps on this dashboard tab will be active
                        currentTab = 0;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.home,
                          color: currentTab == 0 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Dashboard',
                          style: TextStyle(
                            color: currentTab == 0 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Chat(); // if user taps on this dashboard tab will be active
                        currentTab = 1;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.bell,
                          color: currentTab == 1 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Chats',
                          style: TextStyle(
                            color: currentTab == 1 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),

              // Right Tab bar icons

              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Profile(); // if user taps on this dashboard tab will be active
                        currentTab = 2;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.clock,
                          color: currentTab == 2 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'History',
                          style: TextStyle(
                            color: currentTab == 2 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  ),
                  MaterialButton(
                    minWidth: 40,
                    onPressed: () {
                      setState(() {
                        currentScreen =
                            Settings(); // if user taps on this dashboard tab will be active
                        currentTab = 3;
                      });
                    },
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Icon(
                          FontAwesomeIcons.user,
                          color: currentTab == 3 ? Colors.blue : Colors.grey,
                        ),
                        Text(
                          'Profile',
                          style: TextStyle(
                            color: currentTab == 3 ? Colors.blue : Colors.grey,
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
