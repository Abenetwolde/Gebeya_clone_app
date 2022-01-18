import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gebya_clone_app/pages/applicationStatus.dart';
import 'package:gebya_clone_app/pages/home.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.all(30),
        child: Column(children: [
          Center(
            child: Container(
              height: MediaQuery.of(context).size.height / 1.3,
              child: Stack(children: [
                Positioned(
                  top: MediaQuery.of(context).size.height / 4.5,
                  left: 10,
                  child: Column(
                    children: [
                      Container(
                        height: MediaQuery.of(context).size.height / 7.5,
                        child: Image(
                          image: AssetImage(
                            "assets/signinicon.jpg",
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                      Text(
                        "Sign in",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 35,
                            color: Colors.purple,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Container(
                        width: MediaQuery.of(context).size.width / 1.3,
                        child: OutlinedButton(
                          style: OutlinedButton.styleFrom(
                            side: BorderSide(color: Colors.grey, width: 1),
                            shape: const RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(
                                Radius.circular(25),
                              ),
                            ),
                          ),
                          onPressed: () {
                            Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (BuildContext context) =>
                                      MyNavigationBar(),
                                ));
                          },
                          child: Padding(
                            padding: EdgeInsets.all(12),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Container(
                                    height: 30,
                                    width: 30,
                                    decoration: BoxDecoration(
                                        image: DecorationImage(
                                            image: AssetImage("assets/goo.jpg"),
                                            fit: BoxFit.cover)),
                                  ),
                                  SizedBox(
                                    width: 10,
                                  ),
                                  Text(
                                    "Sign in with google",
                                    style: TextStyle(
                                        color: Colors.black54, fontSize: 19),
                                  ),
                                ]),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Text(
                        "No account? join Gebeya as aTALENT",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            fontSize: 16,
                            color: Colors.black54,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
              ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Column(
            children: [
              Container(
                height: 50,
                decoration: BoxDecoration(
                    image: DecorationImage(image: AssetImage("assets/g.png"))),
              ),
              Text("V5.0.0")
            ],
          )
        ]),
      ),
    );
  }
}
