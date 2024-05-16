import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';

class Myhome extends StatefulWidget {
  const Myhome({super.key});

  @override
  State<Myhome> createState() => _MyhomeState();
}

class _MyhomeState extends State<Myhome> {
  late VideoPlayerController _controller;

  bool showpopup = false;
  bool iscorrect(String selectedoption) {
    return options == selectedoption;
  }

  bool isanswercorrect = false;
  bool _isPlaying = false;
  late ChewieController _chewieController;

  List<String> options = [
    'A',
    'B',
    'C',
    'D',
  ];

  @override
  void initState() {
    super.initState();
    _controller = VideoPlayerController.asset('assets/v1.mp4')
      ..initialize().then((value) {
        setState(() {});
        _controller.play();
        _controller.addListener(checkvideotime);
      });
    _chewieController = ChewieController(
      videoPlayerController: _controller,
      autoPlay: false,
      looping: false,
      allowMuting: true,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromARGB(255, 1, 29, 71),
        ),
        body: Center(
          child: Chewie(controller: _chewieController),
        ));
  }

  void _togglePlayPause() {
    if (_controller.value.isPlaying) {
      _controller.pause();
    } else {
      _controller.play();
    }
    setState(() {
      _isPlaying = _controller.value.isPlaying;
    });
  }

  void checkvideotime() {
    if (_controller.value.isPlaying && !showpopup) {
      Duration currentduration = _controller.value.position;
      if (currentduration >= Duration(seconds: 126)) {
        Showpopup();
        _controller.pause();
      }
    }
  }

  void Showpopup() {
    setState(() {
      showpopup = true;
    });
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Question'),
          content: Column(mainAxisSize: MainAxisSize.min, children: [
            TextButton(
              onPressed: () {
                if (iscorrect('B')) {
                  isanswercorrect = true;
                  Navigator.of(context).pop();
                  _playFromSpecificTime(Duration(seconds: 165));
                } else {
                  isanswercorrect = false;
                  Navigator.of(context).pop();
                  _playFromSpecificTime(Duration(seconds: 140));
                }
              },
              child: Text('Sanatoriums'),
            ),
            TextButton(
              onPressed: () {
                if (iscorrect('B')) {
                  isanswercorrect = true;
                  Navigator.of(context).pop();
                  _playFromSpecificTime(Duration(seconds: 140));
                } else {
                  // Handle wrong answer
                  isanswercorrect = false;
                  Navigator.of(context).pop();
                  _playFromSpecificTime(Duration(seconds: 165));
                }
              },
              child: Text('Sanatoria'),
            ),
            TextButton(
              onPressed: () {
                if (iscorrect('B')) {
                  isanswercorrect = true;
                  Navigator.of(context).pop();
                  _playFromSpecificTime(Duration(seconds: 165));
                } else {
                  isanswercorrect = false;
                  Navigator.of(context).pop();
                  _playFromSpecificTime(Duration(seconds: 140));
                }
              },
              child: Text('Sanatoriom'),
            ),
            TextButton(
              onPressed: () {
                if (iscorrect('B')) {
                  isanswercorrect = true;
                  Navigator.of(context).pop();
                  _playFromSpecificTime(Duration(seconds: 165));
                } else {
                  isanswercorrect = false;
                  Navigator.of(context).pop();
                  _playFromSpecificTime(Duration(seconds: 140));
                }
              },
              child: Text('Sanatorium '),
            ),
          ]),
        );
      },
    );
  }

  void _playFromSpecificTime(Duration duration) {
    _controller.seekTo(duration);
    _controller.play();
  }
}
