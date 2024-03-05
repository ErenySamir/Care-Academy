import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoWidget extends StatefulWidget {
  final String videoUrl;

  VideoWidget({required this.videoUrl});

  @override
  _VideoWidgetState createState() => _VideoWidgetState();
}
class _VideoWidgetState extends State<VideoWidget> {
  late VideoPlayerController _controller;
  late bool isPlaying;

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset(widget.videoUrl)
      ..initialize().then((_) {
        setState(() {});
      });
    isPlaying = false;
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          if (_controller.value.isPlaying) {
            _controller.pause();
            isPlaying = false;
          } else {
            _controller.play();
            isPlaying = true;
          }
        });
      },
      child: ClipRRect(
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(10.0),
          bottomRight: Radius.circular(10.0),
        ),
        child: AspectRatio(
          aspectRatio: _controller.value.aspectRatio,
          child: Stack(
            alignment: Alignment.center,
            children: [
              VideoPlayer(_controller),
              if (!isPlaying)
                Icon(
                  Icons.play_arrow,
                  size: 50,
                  color: Colors.white12,
                ),
              if (isPlaying)
                Icon(
                  Icons.pause,
                  size: 50,
                  color: Colors.white12,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
