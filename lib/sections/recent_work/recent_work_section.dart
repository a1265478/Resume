import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/components/default_button.dart';
import 'package:resume/components/hire_me_card.dart';
import 'package:resume/components/section_title.dart';
import 'package:resume/const.dart';
import 'package:resume/models/recent_work.dart';

import 'components/recent_work_card.dart';

class RecentWorkSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      // height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF).withOpacity(0.3),
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/recent_work_bg.png'),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          SectionTitle(
            title: 'Recent Works',
            subTitle: 'My Strong Arena',
            color: Color(0xFFFFB100),
          ),
          SizedBox(
            height: kDefaultPadding * 1.5,
          ),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                  recentWorks.length,
                  (index) => RecentWorkCard(
                        index: index,
                        press: () {},
                      )),
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 5,
          )
        ],
      ),
    );
  }
}
