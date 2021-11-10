import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

import '../../constants.dart';

class BannerSection extends StatelessWidget {
  const BannerSection({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: kPrimaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15.0),
      ),
      child: MediaQuery.of(context).size.width >= 650
          ? Row(
              children: const [
                Expanded(
                  child: InfoBanner(),
                ),
                Expanded(
                  child: RatingBanner(),
                ),
              ],
            )
          : Column(
              children: [
                InfoBanner(),
                SizedBox(
                  height: 20,
                ),
                RatingBanner(),
              ],
            ),
    );
  }
}

class InfoBanner extends StatelessWidget {
  const InfoBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const AutoSizeText(
            "Find the best UI/UX\nDesigners jobs",
            maxLines: 2,
            style: TextStyle(
                height: 0.8,
                fontSize: 56,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "It takes just one job to develop a successful relationship that can propel your career forward.",
            style: TextStyle(fontSize: 25, color: Colors.white),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              MaterialButton(
                color: kPrimaryColor,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                onPressed: () {},
                child: const Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15, vertical: 5),
                  child: Text(
                    "Find Work",
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 15.0,
              ),
              // now we autotext sized packeg
              Expanded(
                child: const Text(
                  "Want to hire a Web Designer?",
                  style: TextStyle(
                    height: 1.5,
                    fontSize: 25,
                    fontWeight: FontWeight.w500,
                    color: kPrimaryColor,
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}

class RatingBanner extends StatelessWidget {
  const RatingBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          decoration: BoxDecoration(
              color: kPrimaryColor, borderRadius: BorderRadius.circular(15.0)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Professional on\nTalentHunt rate clients",
                style: TextStyle(
                  height: 0.8,
                  fontSize: 56,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: const [
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  Icon(Icons.star),
                  SizedBox(
                    width: 30,
                  ),
                  Text(
                    "4.5/5",
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "on average from 2M+ reviews",
                style: TextStyle(
                  fontSize: 23,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
