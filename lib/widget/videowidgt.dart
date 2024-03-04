import 'package:flutter/material.dart';  // Import the Flutter Material library for UI components
import 'package:video_player/video_player.dart';  // Import the video_player package for displaying videos

class VideoWidget extends StatefulWidget {  // Define a StatefulWidget called VideoWidget
  final String videoUrl;  // Define a property to store the URL of the video

  VideoWidget({required this.videoUrl});  // Constructor for VideoWidget to initialize videoUrl

  @override
  _VideoWidgetState createState() => _VideoWidgetState();  // Create and return an instance of _VideoWidgetState
}

class _VideoWidgetState extends State<VideoWidget> {  // Define the state class _VideoWidgetState
  late VideoPlayerController _controller;  // Declare a VideoPlayerController variable
  late Future<void> _initializeVideoPlayerFuture;  // Declare a Future variable to initialize the video player

  @override
  void initState() {  // Override the initState method to perform initialization tasks
    super.initState();  // Call the superclass initState method
    _controller = VideoPlayerController.asset(widget.videoUrl);  // Initialize the VideoPlayerController with the provided videoUrl
    _initializeVideoPlayerFuture = _controller.initialize();  // Initialize the Future to wait for video player initialization
  }

  @override
  void dispose() {  // Override the dispose method to perform cleanup tasks
    _controller.dispose();  // Dispose of the VideoPlayerController to release resources
    super.dispose();  // Call the superclass dispose method
  }

  @override
  Widget build(BuildContext context) {  // Override the build method to build the widget's UI

    return FutureBuilder(  // Return a FutureBuilder widget to handle asynchronous operations
      future: _initializeVideoPlayerFuture,  // Specify the future to wait for
      builder: (context, snapshot) {  // Define a builder callback to build the UI based on the future's state
        if (snapshot.connectionState == ConnectionState.done) {  // Check if the future has completed
          return AspectRatio(  // Return an AspectRatio widget to maintain video aspect ratio
            aspectRatio: _controller.value.aspectRatio,  // Set the aspect ratio based on the video's dimensions
            child: VideoPlayer(_controller),  // Display the VideoPlayer widget with the initialized controller
          );
        } else {  // If the future is still loading
          return Center(  // Return a Center widget to center its child
            child: CircularProgressIndicator(),  // Display a CircularProgressIndicator to indicate loading
          );
        }
      },
    );
  }
}