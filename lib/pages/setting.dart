import 'package:flutter/material.dart';
import 'package:gebya_clone_app/widgets/profileHeader.dart';

class Profile extends StatelessWidget {
  static final String path = "lib/src/pages/profile/profile8.dart";

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          ProfileHeader(
            avatar: "assets/abman.jpg",
            coverColor: Colors.purple,
            title: "Abnet Wolde",
            subtitle: "Software Engineer",
          ),
          const SizedBox(height: 10.0),
          UserInfo(),
        ],
      ),
    );
  }
}

class UserInfo extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10),
      child: Column(
        children: <Widget>[
          SizedBox(
            height: 1,
          ),
          Container(
            alignment: Alignment.topLeft,
            padding: EdgeInsets.all(1),
            child: Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    SizedBox(
                      height: 4,
                    ),
                    ...ListTile.divideTiles(
                      color: Colors.black,
                      tiles: [
                        ListTile(
                          contentPadding:
                              EdgeInsets.symmetric(horizontal: 12, vertical: 4),
                          leading: Icon(Icons.person,
                              size: 30, color: Colors.purple),
                          title: Text(
                            "My Profile",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.settings,
                              size: 30, color: Colors.purple),
                          title: Text(
                            "How it Works",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.support,
                              size: 30, color: Colors.purple),
                          title: Text(
                            "Support",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                        ListTile(
                          leading: Icon(Icons.legend_toggle_sharp,
                              size: 30, color: Colors.purple),
                          title: Text(
                            "Legal",
                            style: TextStyle(
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
