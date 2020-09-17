import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:resume/components/section_title.dart';
import 'package:resume/const.dart';
import 'package:resume/models/feedback.dart';

import 'components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2.5),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: 'Feedback Receive',
            subTitle: "Client's testimonials that inspire me a lot",
            color: Color(0xFF00B1FF),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(
                index: index,
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
