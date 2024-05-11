import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:chewie/chewie.dart';

class Presenter extends StatefulWidget {
  const Presenter({super.key});

  @override
  State<Presenter> createState() => _PresenterState();
}

class _PresenterState extends State<Presenter> {

  @override
  late VideoPlayerController videoPlayerController;
  late ChewieController chewieController;
  bool isVideoInitialized = false;
  initState() {
    super.initState();
    // videoPlayerController = VideoPlayerController.networkUrl(Uri.parse(
    //     'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'));
    videoPlayerController = VideoPlayerController.asset('assets/videos/info.mp4');
    chewieController= ChewieController(videoPlayerController: videoPlayerController,
    autoPlay: true,
    looping: false,
      aspectRatio: 9 /16,
      zoomAndPan: true,
      allowFullScreen: false,


    );
    videoPlayerController.initialize().then((value){
      setState(() {
        isVideoInitialized=true;
      });

    });

  }
  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    if(isVideoInitialized){
    return Center(
      child: Padding(
        padding: const EdgeInsets.all( 20.0),
        child: Center(
          child:Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30),
              color: Color.fromRGBO(100, 100, 100, 80),
              boxShadow: const [BoxShadow(
                spreadRadius: 5.0,
                blurRadius: 7.0,
                color: Color.fromRGBO(60,60,60,80),
              ),],

            ),
            height: double.infinity,
            width: double.infinity,
            child: ClipRRect(
              borderRadius: BorderRadius.circular(25.0),
              child: Chewie(
                controller: chewieController,

              ),
            ),
          ),
          ),
        ),
      );
    }else{
      return Center(
        child: Container(
            width: double.infinity,
            height: 80,
            color: Colors.red,
            child: Center(
                child: Text('Error loading Rahhal!',
                style: TextStyle(
                color: Colors.white,
                fontSize: 20,
              ),
            ),
          ),
        ),
      );
    }

  }
}
