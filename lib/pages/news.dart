import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:gebya_clone_app/pages/Events.dart';
import 'package:gebya_clone_app/widgets/bloges.dart';

class BlogHomeOnePage extends StatelessWidget {
  final Color primaryColor = Color(0xffFD6592);
  final Color bgColor = Color(0xffF9E0E3);
  final Color secondaryColor = Color(0xff324558);

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      initialIndex: 0,
      length: 3,
      child: Scaffold(
        appBar: AppBar(
            bottom: TabBar(
              tabs: <Widget>[
                Text(
                  "Bolgs",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                Text(
                  "Events",
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
                Text(
                  "Announcments",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontSize: 19,
                  ),
                ),
              ],
            ),
            title: Text("News"),
            automaticallyImplyLeading: false,
            actions: [
              IconButton(
                icon: Icon(Icons.notifications),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.more_vert),
                onPressed: () {},
              ),
            ]),
        body: TabBarView(
          children: <Widget>[
            Bloges(),
            Events(),
            Container(
              child: Center(child: Text("Announcment")),
            ),
          ],
        ),
      ),
    );
  }
}
