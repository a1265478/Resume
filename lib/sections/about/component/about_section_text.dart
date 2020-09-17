import 'package:flutter/material.dart';

import '../../../const.dart';

class AboutSectionText extends StatelessWidget {
  const AboutSectionText({Key key, this.content}) : super(key: key);

  @override
  final String content;
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: kDefaultPadding,
      ),
      child: Text(
        content,
        style: TextStyle(
            fontWeight: FontWeight.w200, color: kTextColor, height: 2),
      ),
    );
  }
}
