import 'package:flutter/material.dart';

class ProfileHeader extends StatelessWidget {
  final Color coverColor;
  final String avatar;
  final String title;
  final String subtitle;

  const ProfileHeader({
    Key? key,
    required this.coverColor,
    required this.avatar,
    required this.title,
    required this.subtitle,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: 10,
          top: 40,
          child: Text(
            "My Account",
            style: TextStyle(
                color: Colors.white, fontSize: 25, fontWeight: FontWeight.w600),
          ),
        ),
        Ink(
          height: MediaQuery.of(context).size.height / 3.5,
          decoration: BoxDecoration(color: coverColor),
        ),
        Ink(
          height: MediaQuery.of(context).size.height / 3.5,
          decoration: BoxDecoration(
              //color: Colors.black38,
              ),
        ),
        Container(
          width: double.infinity,
          height: 200,
          padding: const EdgeInsets.only(bottom: 0.0, right: 0.0),
          alignment: Alignment.bottomRight,
          child: Row(
            mainAxisSize: MainAxisSize.min,
          ),
        ),
        Container(
          width: double.infinity,
          margin: const EdgeInsets.only(top: 110),
          child: Column(
            children: <Widget>[
              Avatar(
                image: "assets/abman.jpg",
                radius: 90,
                backgroundColor: Colors.white,
                borderColor: Colors.grey.shade300,
                borderWidth: 4.0,
              ),
              Text(
                title,
                style: TextStyle(color: Colors.purple.shade800, fontSize: 30),
              ),
              if (subtitle != null) ...[
                const SizedBox(height: 5.0),
                Text(
                  subtitle,
                  style: Theme.of(context).textTheme.subtitle,
                ),
              ]
            ],
          ),
        ),
        Positioned(
          left: 220,
          top: 240,
          child: MaterialButton(
            color: Colors.orange,
            shape: CircleBorder(),
            elevation: 0,
            child: Icon(
              Icons.edit,
              color: Colors.white,
            ),
            onPressed: () {},
          ),
        ),
      ],
    );
  }
}

class Avatar extends StatelessWidget {
  final String image;
  final Color borderColor;
  final Color backgroundColor;
  final double radius;
  final double borderWidth;

  const Avatar(
      {Key? key,
      required this.image,
      this.borderColor = Colors.grey,
      required this.backgroundColor,
      this.radius = 30,
      this.borderWidth = 5})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius + borderWidth,
      backgroundColor: borderColor,
      child: CircleAvatar(
        radius: radius,
        backgroundColor: backgroundColor != null
            ? backgroundColor
            : Theme.of(context).primaryColor,
        child: CircleAvatar(
          radius: radius - borderWidth,
          backgroundImage: AssetImage(image),
        ),
      ),
    );
  }
}
