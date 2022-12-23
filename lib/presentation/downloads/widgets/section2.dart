import 'package:flutter/material.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/downloads/widgets/downloads_image_widget.dart';
import '../../../core/colors/colors.dart';

class Section2 extends StatelessWidget {
  Section2({super.key});
  final List imagelist = [
    "https://www.themoviedb.org/t/p/w220_and_h330_face/daSFbrt8QCXV2hSwB0hqYjbj681.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/1Hie7gCDsvt7wtPRuUAk4ZzaoQa.jpg",
    "https://www.themoviedb.org/t/p/w220_and_h330_face/jRXYjXNq0Cs2TcJjLkki24MLp7u.jpg",
  ];

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        const Text(
          "Introducing Downloads for you",
          textAlign: TextAlign.center,
          style: TextStyle(
            color: kwhitecolor,
            fontSize: 23,
            fontWeight: FontWeight.bold,
          ),
        ),
        kheight,
        const Text(
          "We wil download a personlaized selection of\nmovies and shows for you, so there's\n is always something to watch on your\ndevice.  ",
          textAlign: TextAlign.center,
          style: TextStyle(color: Colors.grey, fontSize: 16),
        ),
        SizedBox(
          height: size.width,
          width: size.width,
          // color: Colors.white,
          child: Stack(
            alignment: Alignment.center,
            children: [
              Center(
                child: CircleAvatar(
                  backgroundColor: Colors.grey.withOpacity(0.4),
                  radius: size.width * .40,
                ),
              ),
              DownloadsImageWidget(
                  imagelist: imagelist[0],
                  margin: const EdgeInsets.only(
                      right: 170,
                      // bottom: 5,
                      top: 40),
                  angle: -20,
                  size: Size(size.width * 0.4, size.height * 0.28)),
              DownloadsImageWidget(
                  imagelist: imagelist[1],
                  margin: const EdgeInsets.only(
                      left: 170,
                      // bottom: 5,
                      top: 40),
                  angle: 20,
                  size: Size(size.width * 0.4, size.height * 0.28)),
              DownloadsImageWidget(
                  imagelist: imagelist[2],
                  margin: EdgeInsets.only(
                    top: 20,
                    left: 0,
                  ),
                  radius: 8,
                  size: Size(size.width * 0.46, size.height * 0.33))
            ],
          ),
        ),
      ],
    );
  }
}
