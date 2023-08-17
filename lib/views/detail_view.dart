import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailView extends StatelessWidget{
  final int index;
  const DetailView({super.key, 

    required this.index,
  });

  @override
  Widget build(BuildContext context) {

        return SafeArea(child: Scaffold(
          body: Text("test"),
        ));
  }

}