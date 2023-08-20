import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';

class DetailView extends StatelessWidget {
  final int index;
  var listVeiws;

  DetailView({
    super.key,
    required this.index,
    required this.listVeiws,
  });

  @override
  Widget build(BuildContext context) {
   
    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.images.main.path),
                  fit: BoxFit.fill)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 170),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  listVeiws[index].title!,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(10,20,10,20),
                  child: SizedBox(
                    
                      height: MediaQuery.of(context).size.height / 5,
                      width: MediaQuery.of(context).size.height / 3,
                      child: Image(image: AssetImage(listVeiws[index].image!),fit: BoxFit.fill,)),
                ),
                Container(
                  height: MediaQuery.of(context).size.height/3,
                  width: MediaQuery.of(context).size.width/1.2,
                  decoration: BoxDecoration(color: Colors.transparent),
                  child: SingleChildScrollView(
                      child: Text(listVeiws[index].text!,
                      style: Theme.of(context).textTheme.bodyText1,)),
                )
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
