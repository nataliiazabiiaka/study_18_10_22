import 'package:flutter/material.dart';

import '../../../components/filled_outline_button.dart';
import '../../../models/chat.dart';
import '../../constants.dart';
import '../../messages/message_screen.dart';
import 'chat_card.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.fromLTRB(
            kDefaultPadding,
            0,
            kDefaultPadding,
            kDefaultPadding,
          ),
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
            itemBuilder: (context, index) {
              final data = chatsData[index];
              return ChatCard(
                chat: data,
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) =>
                        MessagesScreen(photo: data.image, name: data.name),
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
