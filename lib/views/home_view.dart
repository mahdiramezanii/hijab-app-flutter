import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/models.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/views/list_view.dart';

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
              top: MediaQuery.of(context).size.height / 6,
              left: MediaQuery.of(context).size.width / 2.90,
              child:  Text(
                "حجاب و عفاف",
                style: Theme.of(context).textTheme.headline3,
              )),
          ListView.builder(
              scrollDirection: Axis.vertical,
              itemCount: HomeViewData.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:  EdgeInsets.fromLTRB(25,index==0?360:20, 25, 50),
                  child: InkWell(
                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return ListArticleView(
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
                          color: Colors.transparent),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          // ImageIcon(
                          //   AssetImage(Assets.images.flowers.path),
                          //   size: 45,
                          //   color: Colors.white,
                          // ),
                          Text(
                            HomeViewData[index].name!,
                            style: Theme.of(context).textTheme.headline2,
                          ),
                          // ImageIcon(
                          //   AssetImage(Assets.images.flowers.path),
                          //   size: 45,
                          //   color: Colors.white,
                          // )
                        ],
                      ),
                    ),
                  ),
                );
              }),

          
        ],
      ),
    );
  }
}
