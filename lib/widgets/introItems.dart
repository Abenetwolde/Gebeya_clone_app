import 'package:flutter/material.dart';

class IntroItem extends StatelessWidget {
  final String title;
  final String subtitle;

  final String imageUrl;

  const IntroItem(
      {Key? key,
      required this.title,
      required this.subtitle,
      required this.imageUrl})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(0.0),
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 2,
              //margin: const EdgeInsets.only(bottom: 70),
              width: double.infinity,
              child: ClipRRect(
                // borderRadius: BorderRadius.circular(20.0),
                child: Container(
                  // height: MediaQuery.of(context).size.height / 2.5,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: AssetImage(imageUrl),
                    fit: BoxFit.cover,
                  )),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Text(
              title,
              textAlign: TextAlign.center,
              style: TextStyle(
                  fontWeight: FontWeight.w400,
                  fontSize: 30.0,
                  color: Colors.purple),
            ),
            // ignore: unnecessary_null_comparison
            if (subtitle != null) ...[
              const SizedBox(height: 20.0),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 12),
                child: Text(
                  subtitle,
                  style: TextStyle(color: Colors.black54, fontSize: 18.0),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(height: 10.0)
            ],
          ],
        ),
      ),
    );
  }
}
