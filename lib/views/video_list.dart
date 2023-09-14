import 'package:flutter/material.dart';
import 'package:flutter_application_1/Models/models.dart';
import 'package:flutter_application_1/gen/assets.gen.dart';
import 'package:flutter_application_1/views/detail_view.dart';

class VideoList extends StatefulWidget {
  final int index;
  const VideoList({
    super.key,
    required this.index,
  });

  @override
  State<VideoList> createState() => _VideoListState();
}

class _VideoListState extends State<VideoList> {
  @override
  Widget build(BuildContext context) {
    List data = [hijabContant, delNeveshteh, Shohada,eslam];

    return SafeArea(
        child: Scaffold(
            body: Stack(
      children: [
        //BackGround image
        Container(
          height: MediaQuery.of(context).size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/main.jpg"),
                  fit: BoxFit.fill)),
        ),
        //ListView
        Positioned(
          top: MediaQuery.of(context).size.height / 4.1,
          left: MediaQuery.of(context).size.width / 13,
          right: MediaQuery.of(context).size.width / 13,
          child: Container(
            height: MediaQuery.of(context).size.height / 1.6,
            child: ListView.builder(
                itemCount: data[widget.index].length,
                itemBuilder: (BuildContext context, int value) {
                  return InkWell(

                    onTap: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (BuildContext context) {
                        return DetailView(
                          index: value,
                          listVeiws: data[widget.index],
                        );
                      }));
                    },

                    
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 10),
                          child: Container(
                            height: MediaQuery.of(context).size.height / 14,
                            decoration: const BoxDecoration(
                                borderRadius:
                                    const BorderRadius.all(Radius.circular(10)),
                                color: Colors.transparent),
                            child: Row(
                              children: [
                                Image(
                                    image: AssetImage(data[widget.index][value].image!)),
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
                        if (value % 2 == 0)
                        Divider(
                          color: Color.fromARGB(255, 2, 2, 2),
                          thickness: 0.6,
                          indent: MediaQuery.of(context).size.width/2.7,
                          endIndent: 0,
                          
                        )
                        else Divider(
                          color: Colors.black,
                          indent: 0,
                          thickness: 0.6,
                          endIndent: MediaQuery.of(context).size.width/2.7,
                        )
                      ],
                    ),
                  );
                }),
          ),
        )
      ],
    )));
  }
}


// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// void main() => runApp(const VideoList());

// /// Stateful widget to fetch and then display video content.
// class VideoList extends StatefulWidget {
//   const VideoList({super.key});

//   @override
//   _VideoListState createState() => _VideoListState();
// }

// class _VideoListState extends State<VideoList> {
//   late VideoPlayerController _controller;

//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.networkUrl(Uri.parse(
//         'https://flutter.github.io/assets-for-api-docs/assets/videos/bee.mp4'))
//       ..initialize().then((_) {
//         // Ensure the first frame is shown after the video is initialized, even before the play button has been pressed.
//         setState(() {});
//       });
//   }

//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(
//       title: 'Video Demo',
//       home: Scaffold(
//         body: Center(
//           child: _controller.value.isInitialized
//               ? AspectRatio(
//                   aspectRatio: _controller.value.aspectRatio,
//                   child: VideoPlayer(_controller),
//                 )
//               : Container(),
//         ),
//         floatingActionButton: FloatingActionButton(
//           onPressed: () {
//             setState(() {
//               _controller.value.isPlaying
//                   ? _controller.pause()
//                   : _controller.play();
//             });
//           },
//           child: Icon(
//             _controller.value.isPlaying ? Icons.pause : Icons.play_arrow,
//           ),
//         ),
//       ),
//     );
//   }

//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }