import 'package:flutter/material.dart';
import 'package:netflix/core/colors/colors.dart';
import 'package:netflix/core/constants.dart';
import 'package:netflix/presentation/home_page/widgets/custon_button_widget.dart';
import 'package:netflix/presentation/new_and_hot/widgets/video_widget.dart';

class CommingSoon extends StatelessWidget {
  const CommingSoon({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Row(
      children: [
        SizedBox(
          width: 50,
          height: 400,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            children: const [
              Text(
                "FEB",
                style: TextStyle(
                  fontSize: 16,
                  color: kGreyColor,
                ),
              ),
              Text(
                "11",
                style: TextStyle(
                  letterSpacing: 5,
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ],
          ),
        ),
        SizedBox(
          width: size.width - 50,
          height: 450,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              VideoWidget(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "TALL GIRl 2",
                    style: TextStyle(fontSize: 35, fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  Row(
                    children: const [
                      CustomButtom(
                        icon: Icons.notifications,
                        title: "Remind me",
                        fontSize: 12,
                        iconSize: 20,
                      ),
                      kwidth,
                      CustomButtom(
                        icon: Icons.info,
                        title: "Info",
                        fontSize: 13,
                        iconSize: 20,
                      ),
                      kwidth
                    ],
                  )
                ],
              ),
              kheight,
              const Text("Comming on Friday"),
              kheight,
              const Text(
                "Tall Girl 2",
                style: TextStyle(
                    fontSize: 18,
                    color: kwhitecolor,
                    fontWeight: FontWeight.bold),
              ),
              kheight,
              const Text(
                "Landing the lead in the school musical is a dream come true for Jodi, until the pressure sends her confidence - and her relationship - into a tailspin.",
                style: TextStyle(
                  fontSize: 16,
                  color: kGreyColor,
                ),
              )
            ],
          ),
        ),
      ],
    );
  }
}
