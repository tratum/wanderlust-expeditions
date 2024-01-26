// import 'package:flutter/material.dart';
// import 'package:video_player/video_player.dart';
//
// import '../../common/ui_helpers.dart';
//
// class BackgroundVideo extends StatefulWidget {
//   const BackgroundVideo({super.key});
//
//   @override
//   State<BackgroundVideo> createState() => _BackgroundVideoState();
// }
//
// class _BackgroundVideoState extends State<BackgroundVideo> {
//   late VideoPlayerController _controller;
//
//   @override
//   void initState() {
//     super.initState();
//     _controller = VideoPlayerController.asset('assets/video/video.mp4')
//       ..initialize().then((_) {
//         setState(() {});
//       })
//       ..setLooping(true)
//       ..setVolume(0.0)
//       ..play();
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return Positioned.fill(
//       child: FittedBox(
//         fit: BoxFit.contain,
//         child: SizedBox(
//           width: MediaQuery.of(context).size.width,
//           height: MediaQuery.of(context).size.height,
//           child: VideoPlayer(_controller),
//         ),
//       ),
//     );
//   }
//
//   @override
//   void dispose() {
//     super.dispose();
//     _controller.dispose();
//   }
// }
