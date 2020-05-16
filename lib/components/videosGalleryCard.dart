import 'dart:async';

import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class VideoGalleryCard extends StatefulWidget {
  final String videoName, videoPath;
  VideoGalleryCard({this.videoName,this.videoPath});
  @override
  _VideoGalleryCardState createState() => _VideoGalleryCardState();
}

class _VideoGalleryCardState extends State<VideoGalleryCard> {
  VideoPlayerController _controller;
  Future<void> _initializeVideoPlayerFuture;
  String videoName, videoPath;
  @override
  void initState() {
    _controller = VideoPlayerController.network(
      'https://images.all-free-download.com/footage_preview/webm/dead_trees_146.webm',
    );


      videoPath = widget.videoPath;
      videoName = widget.videoName;
//      _controller = VideoPlayerController.asset('assets/$filePath');
    _initializeVideoPlayerFuture = _controller.initialize();

    // Use the controller to loop the video.
    _controller.setLooping(true);
    _controller.setVolume(100.0);
    super.initState();
  }

  @override
  void dispose() {
    // Ensure disposing of the VideoPlayerController to free up resources.
    _controller.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: FutureBuilder(

        future: _initializeVideoPlayerFuture,
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return AspectRatio(
              aspectRatio: _controller.value.aspectRatio,
              // Use the VideoPlayer widget to display the video.
              child: Column(
                children: <Widget>[
                  Expanded(child: VideoPlayer(_controller)),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Text(
                        videoName,
                        style: TextStyle(
                            fontFamily: 'Arial, Helvetica, sans-serif',
                            fontSize: 20.0),
                      ),
                      FlatButton(
                        onPressed: () {
                          setState(() {
                            // If the video is playing, pause it.
                            if (_controller.value.isPlaying) {
                              _controller.pause();
                            } else {
                              // If the video is paused, play it.
                              _controller.play();
                            }
                          });
                        },
                        child: Icon(
                          _controller.value.isPlaying
                              ? Icons.pause
                              : Icons.play_arrow,
                          size: 50.0,
                        ),
                      ),
                    ],
                  )
                ],
              ),
            );
          } else {
            // If the VideoPlayerController is still initializing, show a
            // loading spinner.
            return Center(child: CircularProgressIndicator());
          }
        },
      ),
    );
  }
}
