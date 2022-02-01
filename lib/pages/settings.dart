import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            padding: EdgeInsets.only(left: 20, top: 15, right: 0),
            child: Stack(
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    boxShadow: [
                      BoxShadow(
                        spreadRadius: 2,
                        blurRadius: 10,
                        color: Colors.black.withOpacity(0.1),
                      )
                    ],
                    image: DecorationImage(
                      fit: BoxFit.cover,
                      image: AssetImage('assets/prof.png'),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 110,
                  right: 5,
                  child: Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.deepOrange,
                        border: Border.all(width: 4, color: Colors.white)),
                    child: Icon(
                      Icons.edit,
                      color: Colors.white,
                    ),
                  ),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(14),
            child: Center(
                child: Text(
              'Акиева Айпери',
              style: TextStyle(fontSize: 20),
            )),
          ),
          Container(
            width: 343,
            height: 80,
            decoration: BoxDecoration(
              color: Color(0xffB313131),
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text('14', style: TextStyle(color: Colors.white, fontSize: 20)),
                Text('21 834',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
                Text('1520',
                    style: TextStyle(color: Colors.white, fontSize: 20)),
              ],
            ),
          ),
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(18),
                child: Text(
                  'Мои покупки',
                  style: TextStyle(color: Color(0xffB313131), fontSize: 20),
                ),
              ),
            ],
          ),
          Column(children: [
            Padding(
              padding: const EdgeInsets.only(left: 18.0),
              child: Column(children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesomeIcons.facebook,
                        size: 50,
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(minimumSize: Size(380, 99)),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesomeIcons.ebay,
                        size: 50,
                        color: Colors.pinkAccent,
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(minimumSize: Size(380, 99)),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Icon(
                        FontAwesomeIcons.paypal,
                        size: 50,
                        color: Colors.yellow,
                      ),
                    ],
                  ),
                  style: OutlinedButton.styleFrom(minimumSize: Size(380, 99)),
                ),
              ]),
            ),
          ]),
        ],
      ),
    );
  }
}
