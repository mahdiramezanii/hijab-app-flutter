import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

import 'home_view.dart';

class SplashScrean extends StatefulWidget {
  @override
  State<SplashScrean> createState() => _SplashScreanState();
}

class _SplashScreanState extends State<SplashScrean> {
  @override
  void initState() {
    Future.delayed(Duration(seconds: 3)).then((value) {
      Navigator.pushReplacement(context,
          MaterialPageRoute(builder: (BuildContext) {
        return HomePage();
      }));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: Stack(children: [
          SizedBox(
            height: MediaQuery.of(context).size.height,
            child: Container(
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                image: AssetImage(Assets.images.splashImage.path),
                fit: BoxFit.cover,
              )),
            ),
          ),
          SpinKitFadingCircle(
            color: Colors.white,
            size: 50.0,
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: SizedBox(
              height: size.height / 12,
              child: Container(
                height: size.height / 10,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                        topRight: Radius.circular(20),
                        topLeft: Radius.circular(20)),
                    gradient: LinearGradient(colors: [
                      Color.fromARGB(150, 17, 66, 212),
                      Color.fromARGB(255, 115, 145, 213)
                    ])),
                child: Center(
                    child: Text(
                  "ساخته شده توسط فاطمه عباسی",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                )),
              ),
            ),
          )
        ]),
      ),
    );
  }
}
