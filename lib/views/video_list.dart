import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/models.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/views/detail_view.dart';

class VideoList extends StatelessWidget {
  final int index;
  const VideoList({
    super.key,
    required this.index,
  });

  @override
  Widget build(BuildContext context) {
    List data = [hijabContant, delNeveshteh, Shohada,eslam];

    return SafeArea(
        child: Scaffold(
          body: Text("mahdi")
        ));
  }
}

