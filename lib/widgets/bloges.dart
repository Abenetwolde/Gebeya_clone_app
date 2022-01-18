/**
 * Author: Ambika Dulal
 * profile: https://github.com/Ambikadulal
  */
import 'package:flutter/material.dart';
import 'package:gebya_clone_app/data/blogs.dart';
import 'package:gebya_clone_app/widgets/list.dart';

class Bloges extends StatefulWidget {
  @override
  _BlogesState createState() => _BlogesState();
}

class _BlogesState extends State<Bloges> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1.7,
            width: double.infinity,
            child: ListView.builder(
              padding: EdgeInsets.symmetric(horizontal: 10),
              scrollDirection: Axis.horizontal,
              itemCount: bloges.length,
              itemBuilder: (BuildContext context, index) {
                return Container(
                  width: MediaQuery.of(context).size.width / 1.25,
                  decoration: BoxDecoration(
                      // color: Colors.blue,
                      ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Container(
                        height: MediaQuery.of(context).size.height / 2.3,
                        width: MediaQuery.of(context).size.width / 1.3,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                            image: AssetImage(bloges[index].imageUrl),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10, top: 10),
                        child: Text(
                          bloges[index].title,
                          style: TextStyle(
                              fontSize: 15.0, fontWeight: FontWeight.bold),
                        ),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          bloges[index].description,
                          style:
                              TextStyle(fontSize: 13.0, color: Colors.black87),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 10),
                        child: Text(
                          bloges[index].date,
                          style: TextStyle(fontSize: 13.0, color: Colors.grey),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 40, bottom: 1),
            child: Text(
              "Recent articles",
              style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.w600),
            ),
          ),
          Divider(
            height: 10,
            color: Colors.black,
          ),
          PlaceList1(),
        ],
      ),
    );
  }
}
