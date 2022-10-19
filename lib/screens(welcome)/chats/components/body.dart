import 'package:flutter/material.dart';
import 'package:study_18_10_22/screens(welcome)/constants.dart';
import 'package:study_18_10_22/components/filled_outline_button.dart';
import 'package:study_18_10_22/models/Chat.dart';
import 'package:study_18_10_22/screens(welcome)/chats/components/chat_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
              kDefaultPadding, 0, kDefaultPadding, kDefaultPadding),
          color: kPrimaryColor,
          child: Row(
            children: [
              FillOutlineButton(press: () {}, text: 'Recent Message'),
              const SizedBox(width: kDefaultPadding),
              FillOutlineButton(
                press: () {},
                text: 'Active',
                isFilled: false,
              ),
            ],
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: chatsData.length,
            itemBuilder: (context, index) => ChatCard(
              chat: chatsData[index],
              press: () {},),
          ),
        ),
      ],
    );
  }
}