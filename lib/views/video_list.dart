import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/models.dart';
import 'package:flutter_application_1/Models/url.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/myString.dart';
import 'package:flutter_application_1/views/detail_view.dart';

class VideoList extends StatefulWidget {
  final int index;
  const VideoList({
    super.key,
    required this.index,
  });

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  @override
  Widget build(BuildContext context) {
    List data = [hijabContant, delNeveshteh, Shohada,eslam];

    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        //BackGround image
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/main.jpg"),
                  fit: BoxFit.fill)),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height/5,
          left:MediaQuery.of(context).size.width/2.5,
         
          child: Text("ویدیو ها",style: TextStyle(
            fontFamily: "dana",
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.black
          ),)),
          Positioned(
            top: MediaQuery.of(context).size.height/3.75,
            left: 100,
            child: SizedBox(
              height: MediaQuery.of(context).size.height,
              width: 200,
              child: ListView.builder(itemCount: 4,
              itemBuilder: (BuildContext context,int index){
                  return ElevatedButton(onPressed: (){
                      mylunchUrl(myUrl.URL[index]!);
                  }, child: Text("ویدیو ${index+1}"));
              }),
            ),
          )
      ]
    )));
  }
}
