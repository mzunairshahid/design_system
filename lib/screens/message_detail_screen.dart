import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';

import 'package:ouditor_design_system/widgets/forums/forum_popular_topic_card_widget.dart';
import 'package:ouditor_design_system/components/text_fields/message_send_text_field_widget.dart';

class MessageDetailScreen extends StatefulWidget {
  const MessageDetailScreen({super.key});

  @override
  State<MessageDetailScreen> createState() => _MessageDetailScreenState();
}

class _MessageDetailScreenState extends State<MessageDetailScreen> {
  final TextEditingController _controller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(70),
          child: AppBar(
            elevation: 5,
            leadingWidth: 30,
            title: Row(mainAxisSize: MainAxisSize.min, children: [
              Expanded(
                child: ForumPopularTopicCardWidget(
                  avatarBackgroundColor: kOffLineColor,
                  avatarImageUrl: 'lib/asset/images/profle.png',
                  title: 'Bernard Cooper',
                  subtitle: 'online',
                  labelButton: Padding(
                    padding: const EdgeInsets.only(top: 5),
                    child: PopupMenuButton<String>(
                      onSelected: (String choice) {},
                      itemBuilder: (BuildContext context) {
                        return <PopupMenuEntry<String>>[
                          const PopupMenuItem<String>(
                            value: 'Option 1',
                            child: Text('Option 1'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Option 2',
                            child: Text('Option 2'),
                          ),
                          const PopupMenuItem<String>(
                            value: 'Option 3',
                            child: Text('Option 3'),
                          ),
                        ];
                      },
                    ),
                  ),
                ),
              ),
            ]),
          )),
      body: Column(
        children: [
          const Spacer(),
          MessageSendTextfieldWidget(
              hintText: 'Message wade ',
              onPress: () {},
              controller: _controller,
              keyboardType: TextInputType.multiline),
        ],
      ),
    );
  }
}
