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
    print(index);
    print(listVeiws);

    return SafeArea(
        child: Scaffold(
      body: Stack(children: [
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(Assets.images.homebg.path),
                  fit: BoxFit.fill)),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 50),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  listVeiws[index].title!,
                  style: Theme.of(context).textTheme.headline2,
                ),
                SizedBox(
                    height: MediaQuery.of(context).size.height / 3,
                    child: Image(image: AssetImage(listVeiws[index].image!))),
                    Container(
                      height: 200,
                      width: 300,
                      decoration: BoxDecoration(
                        color: Colors.amber
                      ),
                      child: SingleChildScrollView(child: Text(listVeiws[index].text!)),
                    )
              ],
            ),
          ),
        ),
      ]),
    ));
  }
}
