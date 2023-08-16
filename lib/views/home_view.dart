import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';

class HomePage extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body:Stack(
        children: [
          Container(
        height: MediaQuery.of(context).size.height,
        decoration: BoxDecoration(image: DecorationImage(
        image: AssetImage(Assets.images.homebg.path),
        fit:BoxFit.fill)),
        ),
       
        ],)
    );
  }


}