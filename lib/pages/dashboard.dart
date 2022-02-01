import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                width: 90,
                height: 90,
                child: Image.asset('assets/img.png'),
              ),
              Text(
                'Акиева Айпери',
                style: TextStyle(fontSize: 26),
              ),
              Padding(
                padding: const EdgeInsets.all(12),
                child: MaterialButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  child: Text(
                    '1520',
                    style: TextStyle(color: Colors.white),
                  ),
                  color: Colors.deepOrange,
                  onPressed: () {},
                ),
              ),
            ],
          ),
          Stack(
            children: [
              Container(
                height: 149,
                width: 380,
                clipBehavior: Clip.none,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            'Кэшбека много ',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0, bottom: 12),
                          child: Text(
                            'не бывает',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'Летай сколько угодно',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Text(
                            'получи за каждую покупку до 15%',
                            style: TextStyle(fontSize: 12, color: Colors.white),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
                decoration: BoxDecoration(
                    color: Color(0xffB313131),
                    borderRadius: BorderRadius.all(Radius.circular(10))),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Image.asset(
                  'assets/image 8.png',
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Категории',
                  style: TextStyle(fontSize: 16),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 18.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                OutlinedButton(
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.bicycle,
                  ),
                  style: OutlinedButton.styleFrom(minimumSize: Size(82, 80)),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.film,
                  ),
                  style: OutlinedButton.styleFrom(minimumSize: Size(82, 80)),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.meetup,
                  ),
                  style: OutlinedButton.styleFrom(minimumSize: Size(82, 80)),
                ),
                OutlinedButton(
                  onPressed: () {},
                  child: Icon(
                    FontAwesomeIcons.dog,
                  ),
                  style: OutlinedButton.styleFrom(minimumSize: Size(82, 80)),
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  'Аксессуары',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Кино и театры',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Кафе и рестораны',
                  style: TextStyle(fontSize: 12),
                ),
                Text(
                  'Для детей',
                  style: TextStyle(fontSize: 12),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Горящие кешбеки',
                  style: TextStyle(fontSize: 16),
                ),
                Icon(
                  FontAwesomeIcons.fire,
                  color: Color(0xffBFF0707),
                )
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/pick.png'), fit: BoxFit.cover),
                ),
              ),
              Container(
                width: 200,
                height: 100,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                  image: DecorationImage(
                      image: AssetImage('assets/pick1.png'), fit: BoxFit.cover),
                ),
              ),
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Text(
                'Walmart',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              Text(
                'REDs Barber shop',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
