import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/widgets/forums/forum_popular_topic_card_widget.dart';
import 'package:ouditor_design_system/widgets/messaging_plateform_components/message_count_component_widget.dart';
import 'package:ouditor_design_system/components/search_bar/white_background_search_bar.dart';
import '../utilities/constant.dart';
import '../widgets/appbar_widget.dart';
import 'app_drawer.dart';
import 'message_detail_screen.dart';

class MessageScreen extends StatelessWidget {
  const MessageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
          logoUrl: 'lib/asset/images/logo.png',
          pageTitle: 'Sale Analytics',
          icon: Icons.notifications,
          onPressed: () {}),
      drawer: const SafeArea(child: AppDrawer()),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text('Messages ', style: kMediumLargeSemibold),
              const SizedBox(height: 16),
              const WhiteBackgroungSearchBarWidget(
                labelText: 'Search Message',
              ),
              const SizedBox(height: 20),
              InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const MessageDetailScreen(),
                    ),
                  );
                },
                child: const ForumPopularTopicCardWidget(
                  avatarBackgroundColor: kOffLineColor,
                  avatarImageUrl: 'lib/asset/images/profle.png',
                  title: 'Bernard Cooper',
                  subtitle: '10 min ago',
                  labelButton: Padding(
                    padding: EdgeInsets.only(top: 16),
                    child: MessageCountComponentWidget(
                      messagesCount: '2',
                    ),
                  ),
                ),
              ),
              const Divider(),
              const ForumPopularTopicCardWidget(
                avatarBackgroundColor: kOffLineColor,
                avatarImageUrl: 'lib/asset/images/profle.png',
                title: 'Jane Cooper',
                subtitle: '10 min ago',
                labelButton: Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: MessageCountComponentWidget(
                    messagesCount: '2',
                  ),
                ),
              ),
              const Divider(),
              const ForumPopularTopicCardWidget(
                avatarBackgroundColor: kOffLineColor,
                avatarImageUrl: 'lib/asset/images/profle.png',
                title: 'Bernard Cooper',
                subtitle: '10 min ago',
                labelButton: Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: MessageCountComponentWidget(
                    messagesCount: '2',
                  ),
                ),
              ),
              const Divider(),
              const ForumPopularTopicCardWidget(
                avatarBackgroundColor: kOffLineColor,
                avatarImageUrl: 'lib/asset/images/profle.png',
                title: 'Wade Warren',
                subtitle: '10 min ago',
                labelButton: Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: MessageCountComponentWidget(
                    messagesCount: '2',
                  ),
                ),
              ),
              const Divider(),
              const ForumPopularTopicCardWidget(
                avatarBackgroundColor: kOffLineColor,
                avatarImageUrl: 'lib/asset/images/profle.png',
                title: 'Cameron Williamson',
                subtitle: '10 min ago',
                labelButton: Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: MessageCountComponentWidget(
                    messagesCount: '2',
                  ),
                ),
              ),
              const Divider(),
              const ForumPopularTopicCardWidget(
                avatarBackgroundColor: kOffLineColor,
                avatarImageUrl: 'lib/asset/images/profle.png',
                title: 'Jane Cooper',
                subtitle: '10 min ago',
                labelButton: Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: MessageCountComponentWidget(
                    messagesCount: '2',
                  ),
                ),
              ),
              const Divider(),
              const ForumPopularTopicCardWidget(
                avatarBackgroundColor: kOffLineColor,
                avatarImageUrl: 'lib/asset/images/profle.png',
                title: 'Randy Mark',
                subtitle: '10 min ago',
                labelButton: Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: MessageCountComponentWidget(
                    messagesCount: '2',
                  ),
                ),
              ),
              const Divider(),
              const ForumPopularTopicCardWidget(
                avatarBackgroundColor: kOffLineColor,
                avatarImageUrl: 'lib/asset/images/profle.png',
                title: 'Kristin Watson',
                subtitle: '10 min ago',
                labelButton: Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: MessageCountComponentWidget(
                    messagesCount: '2',
                  ),
                ),
              ),
              const Divider(),
              const ForumPopularTopicCardWidget(
                avatarBackgroundColor: kOffLineColor,
                avatarImageUrl: 'lib/asset/images/profle.png',
                title: 'Ralph Edwards',
                subtitle: '10 min ago',
                labelButton: Padding(
                  padding: EdgeInsets.only(top: 16),
                  child: MessageCountComponentWidget(
                    messagesCount: '+99',
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
