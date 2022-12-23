import 'package:bordered_text/bordered_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';

class NumberCard extends StatelessWidget {
  const NumberCard({super.key, required this.index});
  final int index;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Row(
          children: [
            const SizedBox(
              width: 40,
              height: 150,
            ),
            Container(
              width: 150,
              height: 250,
              decoration: BoxDecoration(
                borderRadius: kRadius,
                image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: NetworkImage(
                      "https://www.themoviedb.org/t/p/w220_and_h330_face/9PFonBhy4cQy7Jz20NpMygczOkv.jpg"),
                ),
              ),
            ),
          ],
        ),
        Positioned(
          left: 12,
          bottom: -20,
          child: BorderedText(
            strokeWidth: 3,
            strokeColor: kwhitecolor,
            child: Text(
              (index + 1).toString(),
              style: const TextStyle(
                  color: kblackColor,
                  fontSize: 120,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
