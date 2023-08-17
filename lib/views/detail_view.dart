import 'package:flutter/material.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';

class DetailView extends StatelessWidget {
  final int index;
  const DetailView({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    print("${index} mahdi");

    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        //BackGround image
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.images.homebg.path),
                  fit: BoxFit.fill)),
        ),
        //ListView
        ListView.builder(
          itemCount: 15,
          itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.fromLTRB(25,70,25,0),
            child: Container(
                height: MediaQuery.of(context).size.height / 18,
                width: MediaQuery.of(context).size.width / 24,
                decoration: const BoxDecoration(
                    borderRadius: const BorderRadius.all(Radius.circular(1000)),
                    gradient: LinearGradient(colors: [
                      const Color.fromRGBO(10, 182, 246, 1),
                      Color.fromARGB(98, 145, 8, 147),
                      const Color.fromRGBO(10, 182, 246, 1),
                    ], begin: Alignment.bottomRight, end: Alignment.bottomLeft))),
          );
        })
      ],
    )));
  }
}
