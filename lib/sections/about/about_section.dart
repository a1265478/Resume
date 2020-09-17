import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/components/default_button.dart';
import 'package:resume/components/my_outline_button.dart';
import 'package:resume/const.dart';

import 'component/about_and_sign.dart';
import 'component/about_section_text.dart';
import 'component/experience_card.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutAndSign(),
              Expanded(
                child: AboutSectionText(
                  content:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eros urna, interdum id felis in, euismod ornare nisi. Vestibulum tristique.",
                ),
              ),
              ExperienceCard(
                numOfExp: '01',
              ),
              Expanded(
                child: AboutSectionText(
                  content:
                      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Maecenas eros urna, interdum id felis in, euismod ornare nisi. Vestibulum tristique.",
                ),
              )
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlineButton(
                imageSrc: 'assets/images/hand.png',
                text: 'Hire Me!',
                press: () {},
              ),
              SizedBox(
                width: kDefaultPadding * 1.5,
              ),
              DefaultButton(
                imageSrc: "assets/images/download.png",
                text: 'Download CV',
                press: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
