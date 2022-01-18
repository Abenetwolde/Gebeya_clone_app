import 'package:flutter/material.dart';

class PlaceList1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return (Lists());
  }
}

class Item {
  final String title;

  final String image;

  Item({required this.title, required this.image});
}

class Lists extends StatelessWidget {
  final List<Item> _data = [
    Item(
        title:
            'All roads are convening in Nairobi for the fourth edition of the Africa Tech Summit from 23rd to 24th February.',
        image: "assets/event1.jpg"),
    Item(
        title: 'What a way to end the year!'
            "More than 4bn of funding has been raised by startups in Africa"
            "through 754 deals of 100k and over this year!",
        image: "assets/event2.jpg"),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      // padding: EdgeInsets.all(6),
      itemCount: _data.length,
      itemBuilder: (BuildContext context, int index) {
        Item item = _data[index];
        return Card(
          elevation: 3,
          child: Row(
            children: <Widget>[
              Container(
                  height: 125,
                  width: 110,
                  padding:
                      EdgeInsets.only(left: 0, top: 10, bottom: 70, right: 20),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(item.image), fit: BoxFit.cover)),
                  child: null),
              Expanded(
                child: Padding(
                  padding:
                      const EdgeInsets.only(left: 18, bottom: 70, right: 1),
                  child: Text(
                    item.title,
                    style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: 17),
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
