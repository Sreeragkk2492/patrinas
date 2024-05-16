// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';

// class Homevideo extends StatefulWidget {
//   const Homevideo({super.key});

//   @override
//   State<Homevideo> createState() => _HomevideoState();
// }

// class _HomevideoState extends State<Homevideo> { 
//   late VideoPlayerController _controller;

// bool showpopup=false;
// bool iscorrect(String selectedoption){
//   return options==selectedoption;
// }
// bool isanswercorrect=false;

// List<String> options=[
//   'option 1',
//   'option 2',
//   'option 3',
//   'option 4',
// ];

// @override
//   void initState() {
   
//     super.initState();
//     _controller=VideoPlayerController.asset('assets/v1.mp4').initialize().then((value){
//       setState(() {
//       });
//       _controller.play();
//       _controller.addListener(checkvideotime);
//     }) as VideoPlayerController;
    
//     }
    
   
    
   
//   }

  

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(),
//       body: .value.isInitialized
//           ? AspectRatio(
//               aspectRatio: _controller.value.aspectRatio,
//               child: VideoPlayer(_controller),
//             )
//           : Center(child: CircularProgressIndicator()),
//     );
    
//   }

//   void checkvideotime() {
//     if(_controller.value.isPlaying && !showpopup){
//       Duration currentduration=_controller.value.position;
//       if(currentduration>=Duration(seconds: 126)){
//         Showpopup();
//       }
//     }
//   }
  
//   void Showpopup() {
//        setState(() {
//       showpopup = true;
//     });
//     showDialog(
//       context: context,
//       builder: (BuildContext context) {
//         return AlertDialog(
//           title: Text('Question'),
//           content: Column(
//             mainAxisSize: MainAxisSize.min,
//             children: [
//               TextButton(
//             onPressed: () {
//               // Check if the answer is correct
//               if (iscorrect('option 1')) {
//                 isanswercorrect = true;
//                 Navigator.of(context).pop();
//                 _playFromSpecificTime(Duration(seconds: 165));
//               } else {
//                 // Handle wrong answer
//                 isanswercorrect = false;
//                 Navigator.of(context).pop();
//                 _playFromSpecificTime(Duration(seconds: 140));
//               }
//             },
//             child: Text('Option 1'),
//             ), 
//               TextButton(
//             onPressed: () {
//               // Check if the answer is correct
//               if (iscorrect('option 2')) {
//                 isanswercorrect = true;
//                 Navigator.of(context).pop();
//                 _playFromSpecificTime(Duration(seconds: 165));
//               } else {
//                 // Handle wrong answer
//                 isanswercorrect = false;
//                 Navigator.of(context).pop();
//                 _playFromSpecificTime(Duration(seconds: 140));
//               }
//             },
//             child: Text('Option 2'),
//             ), 
//               TextButton(
//             onPressed: () {
//               // Check if the answer is correct
//               if (iscorrect('option 3')) {
//                 isanswercorrect = true;
//                 Navigator.of(context).pop();
//                 _playFromSpecificTime(Duration(seconds: 165));
//               } else {
//                 // Handle wrong answer
//                 isanswercorrect = false;
//                 Navigator.of(context).pop();
//                 _playFromSpecificTime(Duration(seconds: 140));
//               }
//             },
//             child: Text('Option 3'),
//             ), 
//               TextButton(
//             onPressed: () {
//               // Check if the answer is correct
//               if (iscorrect('option 4')) {
//                 isanswercorrect = true;
//                 Navigator.of(context).pop();
//                 _playFromSpecificTime(Duration(seconds: 165));
//               } else {
//                 // Handle wrong answer
//                 isanswercorrect = false;
//                 Navigator.of(context).pop();
//                 _playFromSpecificTime(Duration(seconds: 140));
//               }
//             },
//             child: Text('Option 4'),
//             ),  ]
//           ),
         
//         );
//       },
//     );
//   }
  
//   void _playFromSpecificTime(Duration duration) {
//     _controller.seekTo(duration);
//     _controller.play();

// }
