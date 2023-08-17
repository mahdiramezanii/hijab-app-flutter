import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/models.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.images.homebg.path),
                  fit: BoxFit.fill)),
        ),
        Positioned(
          top: MediaQuery.of(context).size.height/25,
          left: MediaQuery.of(context).size.width/2.5,
          

          child: Text("حجاب و عفاف",style: TextStyle(color: Colors.white),)),
        ListView.builder(
            scrollDirection: Axis.vertical,
            itemCount: HomeViewData.length,
            itemBuilder: (BuildContext context,int index) {
              return Padding(
                padding: const EdgeInsets.fromLTRB(25, 70, 25, 3),
                child: Container(
                  height: MediaQuery.of(context).size.height / 18,
                  width: MediaQuery.of(context).size.width / 24,
                  decoration: BoxDecoration(
                      borderRadius: const BorderRadius.all(Radius.circular(1000)),
                      gradient: LinearGradient(colors: [
                        const Color.fromRGBO(10, 182, 246, 1),
                        Color.fromARGB(98, 145, 8, 147),
                        Colors.teal.shade400
                      ],begin: Alignment.bottomRight,
                      end: Alignment.bottomLeft)),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(HomeViewData[index].name!,style: const TextStyle(
                        fontFamily: "dana",
                        fontSize: 20,
                        color: Colors.white,
                        fontWeight: FontWeight.w900
                      ),),
                    ],
                  ),
                ),
              );
            })
      ],
    ));
  }
}
