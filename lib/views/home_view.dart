import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/models.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/views/list_view.dart';
import 'package:flutter_application_1/views/video_list.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
  var _selectedIndex;

}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var size=MediaQuery.of(context).size;
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
              left: MediaQuery.of(context).size.width / 2.70,
              child:  Text(
                "سنگر عشق",
                style: Theme.of(context).textTheme.headline3,
              )),
          ListView.builder(
            
              physics: NeverScrollableScrollPhysics(),
            
              itemCount: HomeViewData.length,
              itemBuilder: (BuildContext context, int index) {
                return Padding(
                  padding:  EdgeInsets.fromLTRB(size.width/13,index==0?size.height/2.4:20, 25, 50),
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
                         
                        ],
                      ),
                    ),
                  ),
                );
              }),

            Positioned(
              bottom: 10,
              left: 5,
              child: Container(
                height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10000000)
                ),
                child: ElevatedButton(
                
                style: ElevatedButton.styleFrom(
              elevation: 0.0,
              primary: Colors.red.withOpacity(0),
              shape:RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100),
                side: BorderSide(color: Colors.white,)
              )
  
                ),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (BuildContext context){

                    return VideoList(index: 1,);
                  }));       
                }, child: Container(
                  height: MediaQuery.of(context).size.height/10,
                  width: MediaQuery.of(context).size.width/5,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(0, 16, 196, 127),
                    borderRadius: BorderRadius.circular(200)
                  ),
                  child:Icon(Icons.movie,size: 50,color: Colors.white,),
                )),
              ),
            ),

          
        ],
      ),
    );
  }
}
