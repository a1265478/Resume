import 'package:flutter/material.dart';

import '../../../const.dart';

class ExperienceCard extends StatelessWidget {
  const ExperienceCard({Key key, this.numOfExp}) : super(key: key);
  final String numOfExp;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: kDefaultPadding),
      padding: EdgeInsets.all(kDefaultPadding),
      width: 255,
      height: 240,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        borderRadius: BorderRadius.circular(10),
      ),
      child: DecoratedBox(
        decoration: BoxDecoration(
            color: Color(0xFFEDD2FC),
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Color(0xFFA600FF).withOpacity(0.25),
                offset: Offset(0, 3),
                blurRadius: 6,
              )
            ]),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              numOfExp,
              style: TextStyle(
                fontSize: 100,
                fontWeight: FontWeight.bold,
                color: Colors.white,
              ),
            ),
            SizedBox(
              height: kDefaultPadding,
            ),
            Text(
              'Years of Experience',
              style: TextStyle(
                color: Color(0xFFA600FF),
              ),
            )
          ],
        ),
      ),
    );
  }
}
