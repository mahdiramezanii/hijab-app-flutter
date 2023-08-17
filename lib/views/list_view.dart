import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/models.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/views/detail_view.dart';

class ListArticleView extends StatefulWidget {
  final int index;
  const ListArticleView({
    super.key,
    required this.index,
  });

  @override
  State<ListArticleView> createState() => _ListArticleViewState();
}

class _ListArticleViewState extends State<ListArticleView> {
  @override
  Widget build(BuildContext context) {
    
    List data = [
      hijabContant,
    ];

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
            itemCount: data[widget.index].length,
            itemBuilder: (BuildContext context, int value) {
              return Padding(
                padding: EdgeInsets.fromLTRB(25, 75, 25, 0),
                child: InkWell(
                  onTap: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (BuildContext context) {
                      return DetailView(index: value);
                    }));
                  },
                  child: Container(
                    height: MediaQuery.of(context).size.height / 14,
                    width: MediaQuery.of(context).size.width / 24,
                    decoration: const BoxDecoration(
                        borderRadius:
                            const BorderRadius.all(Radius.circular(10)),
                        color: Color.fromARGB(255, 140, 198, 213)
                        // gradient: LinearGradient(colors: [
                        //   const Color.fromRGBO(10, 182, 246, 1),
                        //   Color.fromARGB(97, 255, 255, 255),
                        //   const Color.fromRGBO(10, 182, 246, 1),
                        // ], begin: Alignment.bottomRight, end: Alignment.bottomLeft)
                        ),
                    child: Row(
                      children: [
                        Image(image: AssetImage(Assets.images.hijab.path)),
                        SizedBox(
                          width: 5,
                        ),
                        Text(
                          data[widget.index][value].title!,
                          style: Theme.of(context).textTheme.headline1,
                        )
                      ],
                    ),
                  ),
                ),
              );
            })
      ],
    )));
  }
}
