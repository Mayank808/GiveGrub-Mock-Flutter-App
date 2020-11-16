import 'package:flutter/material.dart';
import 'loginPage.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(home: HomePage());
}

class HomePage extends StatefulWidget {
  HomePage({Key key, this.title}) : super(key: key);
  final String title;
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF57BD8C),
      body: Column(
        children: [
          Stack(children: <Widget>[
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                width: double.infinity,
                height: 405,
                decoration: BoxDecoration(
                  color: Colors.white,
                ),
              ),
            ),
            ClipPath(
              clipper: MyClipper(),
              child: Container(
                width: double.infinity,
                height: 400,
                decoration: BoxDecoration(
                  color: Color(0xFF50A87E),
                ),
                padding: EdgeInsets.only(top: 35.0),
                child: Column(
                  children: [
                    Hero(
                      tag: 'givegrubLogo',
                      child: Image.asset('assets/givegrubLogo.jpg',
                          height: 200, width: 200),
                    ),
                    Text(
                      'Give Grub',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 50,
                          color: Colors.white),
                    ),
                  ],
                ),
              ),
            ),
          ]),
          Container(
            child: Column(
              children: [
                RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => loginPage()));
                  },
                  textColor: Colors.white,
                  color: Color(0xFF50A87E),
                  child: Container(
                    height: 125,
                    width: 350,
                    child: Row (
                      children: [
                        SizedBox(width: 15),
                        Text (
                            'Volunteer',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                        ),
                        SizedBox(width: 115),
                        Align(
                          child: Icon(
                            Icons.directions_car,
                            size: 80.0,
                          ),
                        )
                      ],
                    ),
                  )
                ),
                SizedBox(height: 30),
                RaisedButton(
                    onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (BuildContext context) => loginPage()));
                    },
                    textColor: Colors.white,
                    color: Color(0xFF50A87E),
                    child: Container(
                      height: 125,
                      width: 350,
                      child: Row (
                        children: [
                          SizedBox(width: 15),
                          Text (
                            'Restaurant \n Associate',
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 25,
                                color: Colors.white),
                          ),
                          SizedBox(width: 90),
                          Align(
                            child: Icon(
                              Icons.fastfood,
                              size: 80.0,
                            ),
                          )
                        ],
                      ),
                    )
                ),
              ],
            ),
          ),
          Expanded(child: SizedBox()),
          Container(
            width: (MediaQuery.of(context).size.width),
            height: 50,
            color: Color(0xFF50A87E),
            alignment: Alignment.bottomCenter,
          ),
        ],
      ),
    );
  }
}


