import 'package:flutter/material.dart';

class SignUp extends StatefulWidget {
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            child: Stack(
              children: [
                Container(
                  padding: EdgeInsets.fromLTRB(15.0, 110, 0, 0),
                  child: Text(
                    'SignUp',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.black),
                  ),
                ),
                Container(
                  padding: EdgeInsets.fromLTRB(320.0, 110, 0, 0),
                  child: Text(
                    '.',
                    style: TextStyle(
                        fontSize: 80.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        color: Colors.blue),
                  ),
                ),
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.only(top: 35, left: 25, right: 25.0),
            child: Column(
              children: [
                TextField(
                  decoration: InputDecoration(
                    labelText: 'EMAIL',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.grey[800],
                    ),
                    focusColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  obscureText: true,
                  decoration: InputDecoration(
                    labelText: 'PASSWORD',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.grey[800],
                    ),
                    focusColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                TextField(
                  decoration: InputDecoration(
                    labelText: 'NICK NAME',
                    labelStyle: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 15,
                      color: Colors.grey[800],
                    ),
                    focusColor: Colors.black,
                  ),
                ),
                SizedBox(
                  height: 50,
                ),
                Container(
                  padding: EdgeInsets.only(left: 25, right: 25),
                  height: 50.0,
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    shadowColor: Colors.blueAccent,
                    color: Colors.blue,
                    elevation: 7.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                        child: Text(
                          'SIGNUP',
                          style: TextStyle(
                            color: Colors.white,
                            fontFamily: 'Montserrat',
                            fontWeight: FontWeight.bold,
                            letterSpacing: 2,
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Container(
                  margin: EdgeInsets.only(right: 25, left: 25),
                  height: 50.0,
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      border: Border.all(
                          color: Colors.black,
                          style: BorderStyle.solid,
                          width: 1.5),
                      borderRadius: BorderRadius.circular(25)),
                  child: Material(
                    borderRadius: BorderRadius.circular(25),
                    elevation: 0.0,
                    child: GestureDetector(
                      onTap: () {},
                      child: Center(
                          child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          InkWell(
                            onTap: () {
                              Navigator.of(context).pop();
                            },
                            child: Text(
                              'Go Back',
                              style: TextStyle(
                                  color: Colors.black,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  letterSpacing: 0,
                                  fontSize: 15),
                            ),
                          ),
                        ],
                      )),
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
