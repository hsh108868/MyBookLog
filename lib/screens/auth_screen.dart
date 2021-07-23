import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/auth.jpg'),
                    fit: BoxFit.cover,
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.4), BlendMode.srcOver))),
            child: Align(
              child: Container(
                  width: MediaQuery.of(context).size.width / 2,
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.menu_book_rounded,
                              color: Color.fromRGBO(255, 255, 255, 0.8),
                              size: MediaQuery.of(context).size.width / 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'MyBookLog',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.cormorantGaramond(
                                textStyle: TextStyle(
                                    color: Color.fromRGBO(255, 255, 255, 0.8),
                                    fontSize:
                                        MediaQuery.of(context).size.width / 18),
                              ),
                            )
                          ]),
                      SizedBox(height: 200),
                      TextFormField(
                        style: TextStyle(color: Colors.white70),
                        decoration: InputDecoration(
                            labelText: 'ID',
                            labelStyle: TextStyle(color: Colors.white70),
                            enabledBorder: UnderlineInputBorder(
                              borderSide: BorderSide(color: Colors.white),
                            )),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextFormField(
                        style: TextStyle(color: Colors.white70),
                        decoration: InputDecoration(
                            labelText: 'Password',
                            labelStyle: TextStyle(color: Colors.white70),
                            enabledBorder: UnderlineInputBorder(
                                borderSide: BorderSide(color: Colors.white))),
                      ),
                      SizedBox(height: 20),
                      Container(
                          width: MediaQuery.of(context).size.width / 2,
                          height: 45,
                          child: ElevatedButton(
                              onPressed: () {},
                              child: Text('Login'),
                              style: ElevatedButton.styleFrom(
                                  primary: Color.fromRGBO(136, 114, 173, 1),
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25),
                                  )))),
                      SizedBox(height: 10),
                      TextButton(
                          onPressed: () {},
                          child: Text('Sign Up'),
                          style: TextButton.styleFrom(primary: Colors.white70)),
                    ],
                  )),
            )));
  }
}
