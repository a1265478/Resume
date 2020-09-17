import 'package:flutter/material.dart';
import 'package:resume/const.dart';
import 'package:resume/sections/about/about_section.dart';
import 'package:resume/sections/contact/contact_section.dart';
import 'package:resume/sections/feedback/feedback_section.dart';
import 'package:resume/sections/recent_work/recent_work_section.dart';
import 'package:resume/sections/service/service_section.dart';
import 'package:resume/sections/top/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TopSection(),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            AboutSection(),
            ServiceSection(),
            RecentWorkSection(),
            FeedbackSection(),
            SizedBox(
              height: kDefaultPadding,
            ),
            ContactSection(),
            // SizedBox(
            //   height: 500,
            // ),
          ],
        ),
      ),
    );
  }
}
