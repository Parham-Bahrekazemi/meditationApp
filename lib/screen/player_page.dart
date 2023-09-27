import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoPlayePage extends StatefulWidget {
  const VideoPlayePage({super.key});

  @override
  State<VideoPlayePage> createState() => _VideoPlayePageState();
}

class _VideoPlayePageState extends State<VideoPlayePage> {
  late VideoPlayerController videoPlayerController;

  ChewieController? chewieController;

  @override
  void initState() {
    videoPlayerController =
        VideoPlayerController.asset('assets/videos/vid-1.mp4');

    chewieController = ChewieController(
      videoPlayerController: videoPlayerController,
      autoPlay: true,
      looping: false,
      showControls: true,
      // aspectRatio: 0.5,
      fullScreenByDefault: true,
    );
    super.initState();
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: chewieController != null
          ? SafeArea(
              child: Chewie(controller: chewieController!),
            )
          : const Center(
              child: CircularProgressIndicator(),
            ),
    );
  }
}
