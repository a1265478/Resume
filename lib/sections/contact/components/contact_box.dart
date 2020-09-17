import 'package:flutter/material.dart';
import 'package:resume/components/default_button.dart';
import 'package:resume/sections/contact/components/socal_card.dart';

import '../../../const.dart';

class ContactBox extends StatelessWidget {
  const ContactBox({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      padding: EdgeInsets.all(kDefaultPadding * 3),
      margin: EdgeInsets.only(top: kDefaultPadding * 2),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SocalCard(
                iconSrc: "assets/images/skype.png",
                name: "Skype",
                color: Color(0xFFD9FFFC),
                press: () {},
              ),
              SocalCard(
                iconSrc: "assets/images/whatsapp.png",
                name: "What's App",
                color: Color(0xFFE4FFC7),
                press: () {},
              ),
              SocalCard(
                iconSrc: "assets/images/messanger.png",
                name: "Messanger",
                color: Color(0xFFE8F0F9),
                press: () {},
              ),
              SizedBox(
                height: kDefaultPadding * 2,
              ),
            ],
          ),
          SizedBox(height: kDefaultPadding * 2),
          ContactForm(),
        ],
      ),
    );
  }
}

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2.5,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Your Name",
                hintText: "Enter your name",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Email Address",
                hintText: "Enter your email address",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Project Type",
                hintText: "Select project type",
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Project Budget",
                hintText: "Select project budget",
              ),
            ),
          ),
          SizedBox(
            //height: 300,
            child: TextFormField(
              decoration: InputDecoration(
                labelText: "Description",
                hintText: "Write some description",
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          Center(
            child: FittedBox(
              child: DefaultButton(
                imageSrc: "assets/images/contact_icon.png",
                text: "Contact Me!",
                press: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
