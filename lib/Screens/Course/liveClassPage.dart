import 'package:chewie/chewie.dart';
import 'package:flutter/material.dart';
import 'package:video_player/video_player.dart';
import 'package:get/get.dart';

class LiveClassPage extends StatefulWidget {
  const LiveClassPage({
    Key? key,
  }) : super(key: key);

  @override
  State<LiveClassPage> createState() =>
      _LiveClassPageState();
}

class _LiveClassPageState
    extends State<LiveClassPage> {
  late VideoPlayerController
      videoPlayerController;
  ChewieController? chewieController;

  @override
  void initState() {
    super.initState();
    _initPlayer();
  }

  void _initPlayer() async {
    videoPlayerController = VideoPlayerController
        .networkUrl(Uri.parse(
            'https://flutter.github.io/assets-for-api-docs/assets/videos/butterfly.mp4'));
    await videoPlayerController.initialize();

    chewieController = ChewieController(
        videoPlayerController:
            videoPlayerController,
        autoPlay: true,
        looping: false,
        aspectRatio: videoPlayerController
            .value.aspectRatio,
        placeholder: const Center(
            child: CircularProgressIndicator())

        // additionalOptions: (context) {
        //   return <OptionItem>[
        //     OptionItem(
        //       onTap: () =>
        //           debugPrint('Option 1 pressed!'),
        //       iconData: Icons.chat,
        //       title: 'Option 1',
        //     ),
        //     OptionItem(
        //       onTap: () =>
        //           debugPrint('Option 2 pressed!'),
        //       iconData: Icons.share,
        //       title: 'Option 2',
        //     ),
        //   ];
        // },
        );
  }

  @override
  void dispose() {
    videoPlayerController.dispose();
    chewieController?.dispose();
    super.dispose();
  }

  Widget _classinfo() {
    return Expanded(
      child: Container(
        color: const Color(0xFF3C3F41),
        child: Card(
          elevation: 2,
          shape: const RoundedRectangleBorder(
            side: BorderSide(width: 2),
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20),
                topLeft: Radius.circular(20)),
          ),
          margin: EdgeInsets.zero,
          child: Padding(
            padding: const EdgeInsets.only(
                left: 15, top: 10, right: 10),
            child: Column(
              crossAxisAlignment:
                  CrossAxisAlignment.start,
              children: [
                Row(children: const [
                  Text(
                    "Course chapter",
                    style: TextStyle(
                      fontFamily: "Quicksand",
                      fontSize: 1,
                      fontWeight: FontWeight.w600,
                      color: Color(0xff777272),
                      height: 1.5,
                    ),
                    textAlign: TextAlign.left,
                  )
                ]),
                const Text(
                  "Class title :  course description name",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                    color: Color(0xff2d2d2d),
                    height: 2,
                  ),
                  textAlign: TextAlign.left,
                ),
                const Text(
                  "Class Subtitle",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2d2d2d),
                    height: 1.5,
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 7,
                ),
                const Text(
                  "Class Description :",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 14,
                    fontWeight: FontWeight.w700,
                    color: Color(0xff2d2d2d),
                  ),
                  textAlign: TextAlign.left,
                ),
                const SizedBox(
                  height: 5,
                ),
                const Text(
                  "Flutter is an open-source UI software development kit used to create cross-platform applications for iOS, Android, Windows, Mac, and more.",
                  style: TextStyle(
                    fontFamily: "Quicksand",
                    fontSize: 13,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff2d2d2d),
                  ),
                  textAlign: TextAlign.left,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 1,
        backgroundColor: const Color(0xffffffff),
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () => Get.back(),
        ),
        centerTitle: true,
        title: const Text(
          "Live Class",
          style: TextStyle(
            fontFamily: "Quicksand",
            fontSize: 16,
            fontWeight: FontWeight.w700,
            color: Color(0xff2d2d2d),
          ),
          textAlign: TextAlign.left,
        ),
      ),
      body: Container(
        color: const Color(0xFF3C3F41),
        child: Column(
          children: [
            SizedBox(
              height: Get.height * 0.4,
              child: chewieController != null
                  ? Chewie(
                      controller:
                          chewieController!,
                    )
                  : const Center(
                      child:
                          CircularProgressIndicator(),
                    ),
            ),
            _classinfo()
          ],
        ),
      ),
    );
  }
}
