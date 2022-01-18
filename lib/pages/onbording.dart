import 'package:flutter/material.dart';
// ignore: import_of_legacy_library_into_null_safe
import 'package:flutter_swiper/flutter_swiper.dart';
import 'package:gebya_clone_app/data/onboardingdata.dart';
import 'package:gebya_clone_app/pages/login.dart';
import 'package:gebya_clone_app/widgets/introItems.dart';

class Onboard extends StatefulWidget {
  @override
  _OnboardState createState() => _OnboardState();
}

class _OnboardState extends State<Onboard> {
  SwiperController _controller = SwiperController();
  int _currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      extendBody: true,
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 1.25,
            child: Swiper(
              loop: false,
              index: _currentIndex,
              onIndexChanged: (index) {
                setState(() {
                  _currentIndex = index;
                });
              },
              controller: _controller,
              pagination: SwiperPagination(
                builder: DotSwiperPaginationBuilder(
                  activeColor: Colors.orange,
                  color: Colors.grey,
                  activeSize: 20.0,
                ),
              ),
              itemCount: 4,
              itemBuilder: (context, index) {
                return IntroItem(
                  title: titles[index],
                  subtitle: subtitles[index],
                  imageUrl: imageUrl[index],
                );
              },
            ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 15, right: 15, top: 20, bottom: 1),
            child: ElevatedButton(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
                child: Text("Sign in", style: TextStyle(fontSize: 22)),
              ),
              style: ButtonStyle(
                  foregroundColor:
                      MaterialStateProperty.all<Color>(Colors.white),
                  backgroundColor:
                      MaterialStateProperty.all<Color>(Colors.purple),
                  shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                      RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ))),
              onPressed: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (BuildContext context) => LoginPage(),
                  )),
            ),
          ),
          TextButton(
              onPressed: () {},
              child: Text(
                "Dont you have an account? Sign up",
                style: TextStyle(color: Colors.purple.shade400, fontSize: 16),
              ))
        ],
      ),
    );
  }
}
