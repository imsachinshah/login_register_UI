import 'package:flutter/material.dart';
import 'signup.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login UI',
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
      routes: <String, WidgetBuilder>{
        '/signup': (BuildContext context) => SignUp()
      },
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePageState createState() => MyHomePageState();
}

class MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
              child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.only(top: 90.0, left: 25),
                    child: Text(
                      'Hey',
                      style: TextStyle(
                        fontSize: 80.0,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(top: 180.0, left: 25),
                    child: RichText(
                        text: TextSpan(
                            text: 'There',
                            style: TextStyle(
                                fontFamily: 'Montserrat',
                                color: Colors.black,
                                fontSize: 80.0,
                                fontWeight: FontWeight.bold),
                            children: [
                          TextSpan(
                              text: '!',
                              style: TextStyle(
                                  color: Colors.blue,
                                  fontFamily: 'Montserrat',
                                  fontWeight: FontWeight.bold,
                                  fontSize: 80.0))
                        ])),
                  ),
                ],
              ),
              SizedBox(
                height: 60,
              ),
              Container(
                padding: const EdgeInsets.only(left: 25, right: 25),
                child: TextField(
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
              ),
              SizedBox(
                height: 10,
              ),
              Container(
                padding: EdgeInsets.only(right: 25, left: 25),
                child: TextField(
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
              ),
              SizedBox(
                height: 25,
              ),
              Container(
                padding: EdgeInsets.only(right: 25),
                alignment: Alignment.topRight,
                child: InkWell(
                  highlightColor: Colors.green,
                  child: Text(
                    'Forget Password',
                    style: TextStyle(
                        color: Colors.blue,
                        fontSize: 16,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Montserrat',
                        decoration: TextDecoration.underline),
                  ),
                ),
              ),
              SizedBox(
                height: 45.0,
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
                        'LOGIN',
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
                        color: Colors.black, style: BorderStyle.solid, width: 1.5),
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
                        SizedBox(
                            height: 22,
                            child: Image(
                              image: AssetImage('assets/fb.png'),
                            )),
                        SizedBox(
                          width: 9.0,
                        ),
                        Text(
                          'Log in with Facebook',
                          style: TextStyle(
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold,
                              letterSpacing: 0,
                              fontSize: 15),
                        ),
                      ],
                    )),
                  ),
                ),
              ),
              SizedBox(
                height: 30.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'New Here? ',
                    style: TextStyle(
                      color: Colors.black,
                      fontFamily: 'Montserrat',
                      fontWeight: FontWeight.bold,
                      letterSpacing: 0,
                    ),
                  ),
                  InkWell(
                      onTap: () {
                        Navigator.of(context).pushNamed('/signup');
                      },
                      child: Text(
                        'Register',
                        style: TextStyle(
                          color: Colors.blue,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline,
                        ),
                      )),
                ],
              ),
            ],
          ),
      ),
      
    );
  }
}
