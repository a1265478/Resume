import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:resume/components/section_title.dart';
import 'package:resume/const.dart';
import 'package:resume/models/service.dart';

import 'components/service_card.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(maxWidth: 1110),
      child: Column(
        children: [
          SectionTitle(
            title: 'Service Offerings',
            subTitle: 'My Strong Arena',
            color: Color(0XFFFF0000),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              services.length,
              (index) => ServiceCard(
                index: index,
              ),
            ),
          )
        ],
      ),
    );
  }
}
