import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/models.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/views/detail_view.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
  var _selectedIndex;
}

class _HomePageState extends State<HomePage> {
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
              top: MediaQuery.of(context).size.height / 25,
              left: MediaQuery.of(context).size.width / 2.5,
              child: const Text(
                "حجاب و عفاف",
                style: TextStyle(color: Colors.white),
              )),
          ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: HomeViewData.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:  EdgeInsets.fromLTRB(25,index==0?50:20, 25, 3),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return DetailView(
                          index: index,
                        );
                      }));
                    },
                    child: Container(
                      height: MediaQuery.of(context).size.height / 18,
                      width: MediaQuery.of(context).size.width / 24,
                      decoration: const BoxDecoration(
                          borderRadius:
                              const BorderRadius.all(Radius.circular(1000)),
                          gradient: LinearGradient(
                              colors: [
                                const Color.fromRGBO(10, 182, 246, 1),
                                Color.fromARGB(98, 145, 8, 147),
                                const Color.fromRGBO(10, 182, 246, 1),
                              ],
                              begin: Alignment.bottomRight,
                              end: Alignment.bottomLeft)),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ImageIcon(
                            AssetImage(Assets.images.flowers.path),
                            size: 45,
                            color: Colors.white,
                          ),
                          Text(
                            HomeViewData[index].name!,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          ImageIcon(
                            AssetImage(Assets.images.flowers.path),
                            size: 45,
                            color: Colors.white,
                          )
                        ],
                      ),
                    ),
                  ),
                );
              }),

          // Positioned(
          //   bottom: 0,
          //   left: 10,
          //   right: 10,
          //   child: Container(

          //         height: MediaQuery.of(context).size.height/8,
          //         decoration: const BoxDecoration(
          //           borderRadius: BorderRadius.only(topRight: Radius.circular(30),topLeft: Radius.circular(30)),
          //           gradient: LinearGradient(colors:[
          //                 Color.fromARGB(255, 10, 143, 226),
          //                 Color.fromARGB(255, 180, 20, 55),
          //                 Color.fromARGB(255, 10, 143, 226),
          //               ],
          //               begin: Alignment.bottomRight,
          //               end: Alignment.bottomLeft)
          //         ),

          //   ),
          // )
        ],
      ),
    );
  }
}
