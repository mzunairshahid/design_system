import 'package:flutter/material.dart';
import 'package:ouditor_design_system/screens/app_drawer.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/utilities/constant.dart';
import 'package:ouditor_design_system/widgets/button/label_button/normal_label_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/label_button/pending_label_button_widget.dart';
import 'package:ouditor_design_system/widgets/button/label_button/success_label_button_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/activity_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/card_class_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/card_kanban_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/class_card_list_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/forum_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/job_post_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/project_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/project_timeline_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/stat_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/story_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/task_card_widget.dart';
import 'package:ouditor_design_system/widgets/card_widget/video_material_card_widget.dart';
import 'package:ouditor_design_system/widgets/forums/forum_heading_widget.dart';
import 'package:ouditor_design_system/widgets/forums/forum_popular_topic_card_widget.dart';
import 'package:ouditor_design_system/widgets/forums/hit_user_card_widget.dart';
import 'package:ouditor_design_system/widgets/forums/latest_discussion_card_widget.dart';
import 'package:ouditor_design_system/widgets/forums/replies_card_widget.dart';
import 'package:ouditor_design_system/widgets/label/downward_polygon_label_widget.dart';
import 'package:ouditor_design_system/widgets/lists/ongoing_list_widget.dart';
import 'package:ouditor_design_system/widgets/lists/wide_list_widget.dart';
import 'package:ouditor_design_system/widgets/lists/wide_project_list_widget.dart';
import 'package:ouditor_design_system/widgets/messaging_plateform_components/attachment_chat_widget.dart';
import 'package:ouditor_design_system/widgets/messaging_plateform_components/bubble_chat_component_widget.dart';
import 'package:ouditor_design_system/widgets/messaging_plateform_components/client_meeting_card_widget.dart';
import 'package:ouditor_design_system/widgets/messaging_plateform_components/dribble_attachment_widget.dart';
import 'package:ouditor_design_system/widgets/messaging_plateform_components/image_attachment_chat_widget.dart';
import 'package:ouditor_design_system/widgets/messaging_plateform_components/profile_pop_up_widget.dart';
import 'package:ouditor_design_system/widgets/responsive/four_widgets_responsive.dart';
import 'package:ouditor_design_system/widgets/responsive/three_widgets_responsive.dart';
import 'package:ouditor_design_system/widgets/responsive/two_widgets_responsive.dart';
import '../widgets/label/upward_polygon_label_widget.dart';
import '../widgets/messaging_plateform_components/download_msg_file_widget.dart';
import '../widgets/tab_block/tab_line_widget.dart';

class WideListScreen extends StatelessWidget {
  const WideListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'components and Widget',
          style: kMediumMedium,
        ),
      ),
      drawer: const AppDrawer(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const ThreeWidgetsResponsive(
                w1: AtttachmentChatWidget(
                  upperText: 'Pinterest.com',
                  mainTitle: 'Pinterest',
                  description:
                      'Discover recipes, home ideas, style inspiration and other ideas to try.',
                ),
                w2: ImageAttachmentChatWidget(
                  upperText: 'Medium.com',
                  mainTitle:
                      'Create a beautiful water painting with just a 30 minutes.',
                  description:
                      'Painting is not just about the art, we should have to earn it with patient and relax. Water painting needs to be more then water and color...',
                  imageUrl: 'lib/asset/images/attachment_chat_image.png',
                ),
                w3: DribbleAttachmentWidget(
                    upperText: 'Dribble.com',
                    title: 'Redesign Website Dashboard',
                    imageUrl: 'lib/asset/images/attachment_chat_imag2.png'),
              ),
              const DownloadMsgFileWidget(
                  pdfImage: 'lib/asset/images/pdf_icon.png',
                  title: 'Edit_Photo_Uwu',
                  subtitle: '20.1 MB'),
              const BubbleChatComponentWidget(
                avatarImage: 'lib/asset/images/profle.png',
                avatarBackgroundColor: kOffLineColor,
                name: 'Mark Wazauiski',
                time: '12:50 PM',
                messageText: 'Dude i can’t beat lunastra alone 😨',
              ),
              const ProfilePopUpCardWidget(
                avatarImageurl: 'lib/asset/images/profle.png',
                avatarBackgroundColor: kSuccessButtonBackgroundColor,
                name: 'Trantiono Sasongko',
                subName: '@tantriono',
                buttonText: 'Send Message',
                tabBlockText1: 'Basic Info',
                tabBlockText2: 'Mutual Servers',
                tabBlockText3: 'Mutual Friends',
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(24.0),
                  child: Column(
                    children: [
                      WideListWidget(
                          title: 'UI Iteration',
                          date: '7 Oct',
                          imageUrl: 'lib/asset/images/hard_level_flag.png',
                          levelTitle: 'Hard',
                          objective: '3 Objective',
                          status: 'Ongoing',
                          appTitle: 'Bookum App'),
                      SizedBox(height: 10),
                      WideListWidget(
                          title: 'UI Iteration',
                          date: '7 Oct',
                          imageUrl: 'lib/asset/images/hard_level_flag.png',
                          levelTitle: 'Hard',
                          objective: '3 Objective',
                          status: 'Ongoing',
                          appTitle: 'Bookum App'),
                      SizedBox(height: 10),
                      WideListWidget(
                          title: 'UI Iteration',
                          date: '7 Oct',
                          imageUrl: 'lib/asset/images/hard_level_flag.png',
                          levelTitle: 'Hard',
                          objective: '3 Objective',
                          status: 'Ongoing',
                          appTitle: 'Bookum App'),
                      SizedBox(height: 10),
                      WideListWidget(
                          title: 'UI Iteration',
                          date: '7 Oct',
                          imageUrl: 'lib/asset/images/hard_level_flag.png',
                          levelTitle: 'Hard',
                          objective: '3 Objective',
                          status: 'Ongoing',
                          appTitle: 'Bookum App'),
                    ],
                  ),
                ),
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Column(
                    children: [
                      WideProjectListWidget(
                        title: 'UI Iteration',
                        date: '7 Oct',
                        imageUrl: 'lib/asset/images/hard_level_flag.png',
                        levelTitle: 'Hard',
                        objective: 'Objective',
                        status: 'Ongoing',
                        avatarBackgroung: kSecondaryClickButtonColor,
                        imageUrl1: 'lib/asset/images/profle.png',
                        imageUrl2: 'lib/asset/images/profle.png',
                        imageUrl3: 'lib/asset/images/profle.png',
                      ),
                      WideProjectListWidget(
                        title: 'UI Iteration',
                        date: '7 Oct',
                        imageUrl: 'lib/asset/images/hard_level_flag.png',
                        levelTitle: 'Hard',
                        objective: 'Objective',
                        status: 'Ongoing',
                        avatarBackgroung: kSecondaryClickButtonColor,
                        imageUrl1: 'lib/asset/images/profle.png',
                        imageUrl2: 'lib/asset/images/profle.png',
                        imageUrl3: 'lib/asset/images/profle.png',
                      ),
                      WideProjectListWidget(
                        title: 'UI Iteration',
                        date: '7 Oct',
                        imageUrl: 'lib/asset/images/hard_level_flag.png',
                        levelTitle: 'Hard',
                        objective: 'Objective',
                        status: 'Ongoing',
                        avatarBackgroung: kSecondaryClickButtonColor,
                        imageUrl1: 'lib/asset/images/profle.png',
                        imageUrl2: 'lib/asset/images/profle.png',
                        imageUrl3: 'lib/asset/images/profle.png',
                      ),
                      WideProjectListWidget(
                        title: 'UI Iteration',
                        date: '7 Oct',
                        imageUrl: 'lib/asset/images/hard_level_flag.png',
                        levelTitle: 'Hard',
                        objective: 'Objective',
                        status: 'Ongoing',
                        avatarBackgroung: kSecondaryClickButtonColor,
                        imageUrl1: 'lib/asset/images/profle.png',
                        imageUrl2: 'lib/asset/images/profle.png',
                        imageUrl3: 'lib/asset/images/profle.png',
                      ),
                      WideProjectListWidget(
                        title: 'UI Iteration',
                        date: '7 Oct',
                        imageUrl: 'lib/asset/images/hard_level_flag.png',
                        levelTitle: 'Hard',
                        objective: 'Objective',
                        status: 'Ongoing',
                        avatarBackgroung: kSecondaryClickButtonColor,
                        imageUrl1: 'lib/asset/images/profle.png',
                        imageUrl2: 'lib/asset/images/profle.png',
                        imageUrl3: 'lib/asset/images/profle.png',
                      ),
                      WideProjectListWidget(
                        title: 'UI Iteration',
                        date: '7 Oct',
                        imageUrl: 'lib/asset/images/hard_level_flag.png',
                        levelTitle: 'Hard',
                        objective: 'Objective',
                        status: 'Ongoing',
                        avatarBackgroung: kSecondaryClickButtonColor,
                        imageUrl1: 'lib/asset/images/profle.png',
                        imageUrl2: 'lib/asset/images/profle.png',
                        imageUrl3: 'lib/asset/images/profle.png',
                      ),
                    ],
                  ),
                ),
              ),
              const Card(
                child: Column(
                  children: [
                    TaskCardWidget(
                      uppertext: 'Bookum App',
                      mainTitle: 'Design feedback on wireframe',
                      imageUrl: 'lib/asset/images/task_card_img.png',
                      day: 'Today',
                      objectiveText: '-',
                      attachmentText: '3 Attachement',
                      levelText: 'Hard',
                    ),
                    Divider(),
                    TaskCardWidget(
                      uppertext: 'Bookum App',
                      mainTitle: 'Design feedback on wireframe',
                      imageUrl: 'lib/asset/images/task_card_img.png',
                      day: 'Today',
                      objectiveText: '-',
                      attachmentText: '3 Attachement',
                      levelText: 'Hard',
                    ),
                    Divider(),
                    TaskCardWidget(
                      uppertext: 'Bookum App',
                      mainTitle: 'Design feedback on wireframe',
                      imageUrl: 'lib/asset/images/task_card_img.png',
                      day: 'Today',
                      objectiveText: '-',
                      attachmentText: '3 Attachement',
                      levelText: 'Hard',
                    ),
                    Divider(),
                    TaskCardWidget(
                      uppertext: 'Bookum App',
                      mainTitle: 'Design feedback on wireframe',
                      imageUrl: 'lib/asset/images/task_card_img.png',
                      day: 'Today',
                      objectiveText: '-',
                      attachmentText: '3 Attachement',
                      levelText: 'Hard',
                    ),
                  ],
                ),
              ),
              const Card(
                child: Column(
                  children: [
                    ActivtiyCardWidget(
                      companyName: 'SWYFT',
                      dateTime: 'Yesterday at 09.30am',
                      title: 'F&B Landing Page V2 Work Area',
                      iconUrl: 'lib/asset/images/activity_card_icon.png',
                      subtitle1: 'Omnicreativora ',
                      subtitle2: 'changed due date',
                      subtitle3: ' Sep 20 – 21.',
                    ),
                    Divider(),
                    ActivtiyCardWidget(
                      companyName: 'SWYFT',
                      dateTime: 'Yesterday at 09.30am',
                      title: 'F&B Landing Page V2 Work Area',
                      iconUrl: 'lib/asset/images/activity_card_icon.png',
                      subtitle1: 'Omnicreativora ',
                      subtitle2: 'reassigned to',
                      subtitle3: ' Yoga Asyam.',
                    ),
                    Divider(),
                    ActivtiyCardWidget(
                      companyName: 'Sunstone',
                      dateTime: '21 Sep at 09.30am',
                      title: 'Sunstone Design Feedbacks',
                      iconUrl: 'lib/asset/images/activity_card_icon.png',
                      subtitle1: 'Omnicreativora ',
                      subtitle2: 'changed due date',
                      subtitle3: ' Yoga Asyam.',
                    ),
                  ],
                ),
              ),
              const TwoWidgetsResponsive(
                  w1: OnGoingListWidget(
                      mainImage: 'lib/asset/images/ongoing_icon.png',
                      title: 'Bookum App',
                      avatarBackground: kSecondaryClickButtonColor,
                      avatarImage1: 'lib/asset/images/profle.png',
                      avatarImage2: 'lib/asset/images/profle.png',
                      avatarImage3: 'lib/asset/images/profle.png'),
                  w2: OnGoingListWidget(
                      mainImage: 'lib/asset/images/ongoing_icon.png',
                      title: 'Bookum App',
                      avatarBackground: kSecondaryClickButtonColor,
                      avatarImage1: 'lib/asset/images/profle.png',
                      avatarImage2: 'lib/asset/images/profle.png',
                      avatarImage3: 'lib/asset/images/profle.png')),
              const ClientMeetingCardWidget(
                title: 'Client Meeting.mp4',
                subtitle: 'Video FIle • 10.5 MB',
                imageUrl: 'lib/asset/images/video_icon.png',
                cardColor: kPendingButtonBackgroundColor,
              ),
              const FourWidgetsResponsive(
                w1: ProjectCardWidget(
                    mainImageUrl: 'lib/asset/images/project_card_image.png',
                    companyTitle: 'SWYFT',
                    date: '26.10.201',
                    attachmentFileCount: '3',
                    checklistText: '10',
                    percent: 0.8,
                    percentageText: '80%'),
                w2: ProjectCardWidget(
                    mainImageUrl: 'lib/asset/images/project_card_image2.png',
                    companyTitle: 'SWYFT',
                    date: '26.10.201',
                    attachmentFileCount: '3',
                    checklistText: '10',
                    percent: 0.8,
                    percentageText: '80%'),
                w3: ProjectCardWidget(
                    mainImageUrl: 'lib/asset/images/project_card_image3.png',
                    companyTitle: 'SWYFT',
                    date: '26.10.201',
                    attachmentFileCount: '3',
                    checklistText: '10',
                    percent: 0.8,
                    percentageText: '80%'),
                w4: ProjectCardWidget(
                    mainImageUrl: 'lib/asset/images/project_card_image4.png',
                    companyTitle: 'SWYFT',
                    date: '26.10.201',
                    attachmentFileCount: '3',
                    checklistText: '10',
                    percent: 0.8,
                    percentageText: '80%'),
              ),
              FourWidgetsResponsive(
                w1: CardKanbanWidget(
                    labelBackgroundColor: kSuccessButtonBackgroundColor,
                    lableText: 'Easy',
                    title: 'Moodboard',
                    description:
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
                    imageUrl1: 'lib/asset/images/card_kanban_image.png',
                    imageUrl2: 'lib/asset/images/card_kanban_image.png',
                    month: 'Oct',
                    attachmentFileCount: '3',
                    checkboxText: '10',
                    onMenuPress: () {}),
                w2: CardKanbanWidget(
                    labelBackgroundColor: kSuccessButtonBackgroundColor,
                    lableText: 'Easy',
                    title: 'Moodboard',
                    description:
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
                    imageUrl1: 'lib/asset/images/card_kanban_image.png',
                    imageUrl2: 'lib/asset/images/card_kanban_image.png',
                    month: 'Oct',
                    attachmentFileCount: '3',
                    checkboxText: '10',
                    onMenuPress: () {}),
                w3: CardKanbanWidget(
                    labelBackgroundColor: kSuccessButtonBackgroundColor,
                    lableText: 'Easy',
                    title: 'Moodboard',
                    description:
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
                    imageUrl1: 'lib/asset/images/card_kanban_image.png',
                    imageUrl2: 'lib/asset/images/card_kanban_image.png',
                    month: 'Oct',
                    attachmentFileCount: '3',
                    checkboxText: '10',
                    onMenuPress: () {}),
                w4: CardKanbanWidget(
                    labelBackgroundColor: kSuccessButtonBackgroundColor,
                    lableText: 'Easy',
                    title: 'Moodboard',
                    description:
                        'Amet minim mollit non deserunt ullamco est sit aliqua dolor do amet sint.',
                    imageUrl1: 'lib/asset/images/card_kanban_image.png',
                    imageUrl2: 'lib/asset/images/card_kanban_image.png',
                    month: 'Oct',
                    attachmentFileCount: '3',
                    checkboxText: '10',
                    onMenuPress: () {}),
              ),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ProjectTimelineCardWidget(
                          cardColor: kPendingButtonBackgroundColor,
                          title: 'Design feedback on wireframe',
                          obectiveText: '5 Objectives',
                          attachementFiles: '3',
                          levelText: 'Medium'),
                      SizedBox(
                        height: 15,
                      ),
                      ProjectTimelineCardWidget(
                          cardColor: kNormalStateButtonBackgroundColor,
                          title: 'Design feedback on wireframe',
                          obectiveText: '9 Objectives',
                          attachementFiles: '3',
                          levelText: 'Hard'),
                      SizedBox(
                        height: 15,
                      ),
                      ProjectTimelineCardWidget(
                          cardColor: kDetailButtonBackgroungColor,
                          title: 'Design feedback on wireframe',
                          obectiveText: '1 Objectives',
                          attachementFiles: '3',
                          levelText: 'Low'),
                      SizedBox(
                        height: 15,
                      ),
                      ProjectTimelineCardWidget(
                          cardColor: kSuccessButtonBackgroundColor,
                          title: 'Design feedback on wireframe',
                          obectiveText: '6 Objectives',
                          attachementFiles: '3',
                          levelText: 'Medium'),
                    ],
                  ),
                ),
              ),
              const FourWidgetsResponsive(
                  w1: JobPostCardWidget(
                      imageUrl: 'lib/asset/images/logo_thumbnail.png',
                      title: '3D Illustrator',
                      subtitle: 'Gojek',
                      description:
                          'We\'re looking for top illustrators proficient in Cinema 4D',
                      users: '123',
                      location: 'Lahore'),
                  w2: JobPostCardWidget(
                      imageUrl: 'lib/asset/images/logo_thumbnail.png',
                      title: '3D Illustrator',
                      subtitle: 'Gojek',
                      description:
                          'We\'re looking for top illustrators proficient in Cinema 4D',
                      users: '123',
                      location: 'Lahore'),
                  w3: JobPostCardWidget(
                      imageUrl: 'lib/asset/images/logo_thumbnail.png',
                      title: '3D Illustrator',
                      subtitle: 'Gojek',
                      description:
                          'We\'re looking for top illustrators proficient in Cinema 4D',
                      users: '123',
                      location: 'Lahore'),
                  w4: JobPostCardWidget(
                      imageUrl: 'lib/asset/images/logo_thumbnail.png',
                      title: '3D Illustrator',
                      subtitle: 'Gojek',
                      description:
                          'We\'re looking for top illustrators proficient in Cinema 4D',
                      users: '123',
                      location: 'Lahore')),
              const FourWidgetsResponsive(
                  w1: StatCardWidget(
                    iconUrl: 'lib/asset/images/stat_card_icon.png',
                    iconBackgroundColor: kPendingButonTextColor,
                    title: 'Assigned Task',
                    countText: '05',
                    avatarBackground: kPendingButtonBackgroundColor,
                  ),
                  w2: StatCardWidget(
                    iconUrl: 'lib/asset/images/objective_icon.png',
                    iconBackgroundColor: kSuccessButtonTextColor,
                    title: 'Task Complete',
                    countText: '08',
                    avatarBackground: kSuccessButtonBackgroundColor,
                  ),
                  w3: StatCardWidget(
                    iconUrl: 'lib/asset/images/stat_card_icon.png',
                    iconBackgroundColor: kDetailTextColor,
                    title: 'Objective Complete',
                    countText: '37',
                    avatarBackground: kDetailButtonBackgroungColor,
                  ),
                  w4: StatCardWidget(
                    iconUrl: 'lib/asset/images/objective_icon.png',
                    iconBackgroundColor: kNormalStateTextColor,
                    title: 'Project Complete',
                    countText: '61%',
                    avatarBackground: kNormalStateButtonBackgroundColor,
                  )),
              const FourWidgetsResponsive(
                  w1: CardClassWidget(
                    imageUrl: 'lib/asset/images/card_class_image.png',
                    title: 'Indonesia satay cooking class for begineers',
                    labelButtonText: 'Personal',
                    // onPress: () {
                    //   print('object');
                    // },
                    dateAndTime: '6 Jan, 10.00 AM ',
                    minutes: '90 mmin',
                  ),
                  w2: CardClassWidget(
                    imageUrl: 'lib/asset/images/card_class_image.png',
                    title: 'Indonesia satay cooking class for begineers',
                    labelButtonText: 'Personal',
                    // onPress: () {
                    //   print('object');
                    // },
                    dateAndTime: '6 Jan, 10.00 AM ',
                    minutes: '90 mmin',
                  ),
                  w3: CardClassWidget(
                    imageUrl: 'lib/asset/images/card_class_image.png',
                    title: 'Indonesia satay cooking class for begineers',
                    labelButtonText: 'Personal',
                    // onPress: () {
                    //   print('object');
                    // },
                    dateAndTime: '6 Jan, 10.00 AM ',
                    minutes: '90 mmin',
                  ),
                  w4: CardClassWidget(
                    imageUrl: 'lib/asset/images/card_class_image.png',
                    title: 'Indonesia satay cooking class for begineers',
                    labelButtonText: 'Personal',
                    // onPress: () {
                    //   print('object');
                    // },
                    dateAndTime: '6 Jan, 10.00 AM ',
                    minutes: '90 mmin',
                  )),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ForumHeadingWidget(
                          title: 'Latest Product',
                          tabBlockText: 'See All',
                          onPress: (String value) {}),
                      const StoriesCardWidget(
                        imageUrl: 'lib/asset/images/story_card_image.png',
                        title:
                            'How to bake accessibility into digital products from the beginning',
                        dateTime: 'dateAndTime',
                      ),
                      const StoriesCardWidget(
                        imageUrl: 'lib/asset/images/story_card_image.png',
                        title:
                            'How to bake accessibility into digital products from the beginning',
                        dateTime: 'dateAndTime',
                      ),
                      const StoriesCardWidget(
                        imageUrl: 'lib/asset/images/story_card_image.png',
                        title:
                            'How to bake accessibility into digital products from the beginning',
                        dateTime: 'dateAndTime',
                      ),
                    ],
                  ),
                ),
              ),
              Card(
                  child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text(
                          'Popular Products',
                          style: kMediumLargeSemibold,
                        ),
                        TabLineWidget(
                          title: 'See All Products',
                          onPress: () {},
                          isSelected: false,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ForumcardWidget(
                      imageUrl: 'lib/asset/images/forum_image1.png',
                      title: 'Loopple',
                      subtitle: 'Drag & drop dashboard builder',
                      labelButon: UpwardPolygonLabelWidget(
                          title: '249',
                          backgroungColour: kSuccessButtonBackgroundColor,
                          imageUrl:
                              'lib/asset/images/upward_polygon_image.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ForumcardWidget(
                      imageUrl: 'lib/asset/images/forum_image2.png',
                      title: 'Loopple',
                      subtitle: 'Drag & drop dashboard builder',
                      labelButon: DownwardPolygonLabelWidget(
                          title: '249',
                          backgroungColour: kRedBackgroundColor,
                          imageUrl:
                              'lib/asset/images/downward_polygon_image.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ForumcardWidget(
                      imageUrl: 'lib/asset/images/forum_image3.png',
                      title: 'Loopple',
                      subtitle: 'Drag & drop dashboard builder',
                      labelButon: UpwardPolygonLabelWidget(
                          title: '249',
                          backgroungColour: kSuccessButtonBackgroundColor,
                          imageUrl:
                              'lib/asset/images/upward_polygon_image.png'),
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    const ForumcardWidget(
                      imageUrl: 'lib/asset/images/forum_image2.png',
                      title: 'Loopple',
                      subtitle: 'Drag & drop dashboard builder',
                      labelButon: DownwardPolygonLabelWidget(
                          title: '249',
                          backgroungColour: kRedBackgroundColor,
                          imageUrl:
                              'lib/asset/images/downward_polygon_image.png'),
                    ),
                  ],
                ),
              )),
              const Card(
                  child: Padding(
                padding: EdgeInsets.all(20.0),
                child: Column(
                  children: [
                    VideoMaterialCardWidget(
                      srNo: '1.',
                      title: 'Introducing',
                      minutes: '20 min',
                    ),
                    SizedBox(height: 20),
                    VideoMaterialCardWidget(
                      srNo: '2.',
                      title: 'Ingredients knowledge',
                      minutes: '20 min',
                    ),
                    SizedBox(height: 20),
                    VideoMaterialCardWidget(
                      srNo: '3.',
                      title: 'Ingredients preparation',
                      minutes: '20 min',
                    ),
                    SizedBox(height: 20),
                    VideoMaterialCardWidget(
                      srNo: '4.',
                      title: 'Tools Knowledge',
                      minutes: '20 min',
                    ),
                    SizedBox(height: 20),
                    VideoMaterialCardWidget(
                      srNo: '5.',
                      title: 'Tools preparation',
                      minutes: '20 min',
                    ),
                    SizedBox(height: 20),
                    VideoMaterialCardWidget(
                      srNo: '6.',
                      title: 'Cooking process',
                      minutes: '20 min',
                    ),
                    SizedBox(height: 20),
                    VideoMaterialCardWidget(
                      srNo: '7.',
                      title: 'Plating food',
                      minutes: '20 min',
                    ),
                    SizedBox(height: 20),
                    VideoMaterialCardWidget(
                      srNo: '8.',
                      title: 'Insight',
                      minutes: '20 min',
                    ),
                  ],
                ),
              )),
              const Card(
                child: Padding(
                  padding: EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ClassCardListWidget(
                        imageUrl: 'lib/asset/images/story_card_image.png',
                        title: 'Indonesia satay cooking class for begineers',
                        labelBotton: SuccessLabelButtonWidget(
                            title: 'Personal',
                            backgroundColor: kSuccessButtonBackgroundColor),
                        dateTime: '6 Jan, 10.00 AM ',
                        minutes: '20 min',
                      ),
                      SizedBox(height: 15),
                      ClassCardListWidget(
                        imageUrl: 'lib/asset/images/story_card_image.png',
                        title: 'Indonesia satay cooking class for begineers',
                        labelBotton: PendingLabelButtonWidget(
                            text: 'Finance',
                            backgroundColor: kPendingButtonBackgroundColor),
                        dateTime: '6 Jan, 10.00 AM ',
                        minutes: '20 min',
                      ),
                      SizedBox(height: 15),
                      ClassCardListWidget(
                        imageUrl: 'lib/asset/images/story_card_image.png',
                        title: 'Financal planner on the new distruptive era',
                        labelBotton: NormalStateLabelWidget(
                          labelText: 'Professional',
                          backgroundColor: kNormalStateButtonBackgroundColor,
                        ),
                        dateTime: '6 Jan, 10.00 AM ',
                        minutes: '20 min',
                      ),
                      SizedBox(height: 15),
                    ],
                  ),
                ),
              ),
              Column(
                children: [
                  ForumHeadingWidget(
                      title: 'Popular Topics',
                      tabBlockText: 'See All Topics',
                      onPress: () {}),
                  const SizedBox(height: 20),
                  const Card(
                    child: Padding(
                      padding: EdgeInsets.all(20.0),
                      child: Column(
                        children: [
                          ForumPopularTopicCardWidget(
                            avatarBackgroundColor: kOffLineColor,
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            title: 'Gaming',
                            subtitle: 'A discussions topic about gaming',
                            labelButton: NormalStateLabelWidget(
                                labelText: '243 discussion',
                                backgroundColor:
                                    kNormalStateButtonBackgroundColor),
                          ),
                          SizedBox(height: 20),
                          ForumPopularTopicCardWidget(
                            avatarBackgroundColor: kOffLineColor,
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            title: 'Design',
                            subtitle: 'A discussions topic about gaming',
                            labelButton: NormalStateLabelWidget(
                                labelText: '243 discussion',
                                backgroundColor:
                                    kNormalStateButtonBackgroundColor),
                          ),
                          SizedBox(height: 20),
                          ForumPopularTopicCardWidget(
                            avatarBackgroundColor: kOnlineColor,
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            title: 'Developers',
                            subtitle: 'A discussions topic about gaming',
                            labelButton: NormalStateLabelWidget(
                                labelText: '243 discussion',
                                backgroundColor:
                                    kNormalStateButtonBackgroundColor),
                          ),
                          SizedBox(height: 20),
                          ForumPopularTopicCardWidget(
                            avatarBackgroundColor: kRedTextColor,
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            title: 'Conspiracy',
                            subtitle: 'A discussions topic about gaming',
                            labelButton: NormalStateLabelWidget(
                                labelText: '243 discussion',
                                backgroundColor:
                                    kNormalStateButtonBackgroundColor),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('Latest Discussions', style: kMediumLargeSemibold),
                  const SizedBox(height: 10),
                  Card(
                      child: Padding(
                    padding: const EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        const LatestDiscussionCardWidget(
                            iconUrl: 'lib/asset/images/arrow_upward_icon.png',
                            counterText: '24',
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            avatarBackgroundColor: kOffLineColor,
                            questionText:
                                'How do you collect design resources / inspiration?',
                            name: 'Mark Wazauiski',
                            massages: '23',
                            hours: '1 hours ago',
                            labelText: 'Productivity',
                            subtitle:
                                'What tools are you currently using to collect things you might need later? I\'m talking UI inspo, Dribbble links, interesting articles from designers, color palettes, etc.'),
                        const SizedBox(height: 10),
                        const LatestDiscussionCardWidget(
                            iconUrl: 'lib/asset/images/arrow_upward_icon.png',
                            counterText: '63',
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            avatarBackgroundColor: kOffLineColor,
                            questionText:
                                'What are the best learning resources for transitioning from Coder to CEO?',
                            name: 'Alyssia Neil',
                            massages: '23',
                            hours: '2 hours ago',
                            labelText: 'UI/UX Design',
                            subtitle:
                                'What tools are you currently using to collect things you might need later? I\'m talking UI inspo, Dribbble links, interesting articles from designers, color palettes, etc.'),
                        const SizedBox(height: 10),
                        const LatestDiscussionCardWidget(
                            iconUrl: 'lib/asset/images/arrow_upward_icon.png',
                            counterText: '47',
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            avatarBackgroundColor: kOffLineColor,
                            questionText:
                                'Is a Information Technology degree a good degree to get into the UI design industry?',
                            name: 'Daniel Crag',
                            massages: '23',
                            hours: '2 hours ago',
                            labelText: 'Enterpreneurship',
                            subtitle:
                                'What tools are you currently using to collect things you might need later? I\'m talking UI inspo, Dribbble links, interesting articles from designers, color palettes, etc.'),
                        const SizedBox(height: 10),
                        const LatestDiscussionCardWidget(
                            iconUrl: 'lib/asset/images/arrow_upward_icon.png',
                            counterText: '47',
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            avatarBackgroundColor: kOffLineColor,
                            questionText:
                                'Favorite tools for image optimization',
                            name: 'Subarashi Kayle',
                            massages: '23',
                            hours: '3 hours ago',
                            labelText: 'Developers',
                            subtitle:
                                'Hey Folks! what are you favorite services for image optimization? Why?'),
                        const SizedBox(height: 10),
                        Center(
                            child: TabLineWidget(
                                title: 'Load more',
                                onPress: () {},
                                isSelected: false))
                      ],
                    ),
                  )),
                ],
              ),
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Replies', style: kMediumLargeSemibold),
                  SizedBox(height: 10),
                  Card(
                      child: Padding(
                    padding: EdgeInsets.all(20.0),
                    child: Column(
                      children: [
                        RepliesCardWidget(
                            avatarbackgroundColor: kOffLineColor,
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            name: 'Ilham Yoga',
                            messageText:
                                'I have an "inspiration" board on Figma. I\'d take screenshots of anything I would like and post it there.',
                            upVoteText: '1 UpVote',
                            messageCounter: '2',
                            hours: '1 hour ago',
                            reportText: 'Report'),
                        SizedBox(height: 10),
                        RepliesCardWidget(
                            avatarbackgroundColor: kOffLineColor,
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            name: 'Ilham Yoga',
                            messageText:
                                'I have an "inspiration" board on Figma. I\'d take screenshots of anything I would like and post it there.',
                            upVoteText: '1 UpVote',
                            messageCounter: '2',
                            hours: '1 hour ago',
                            reportText: 'Report'),
                        SizedBox(height: 10),
                        RepliesCardWidget(
                            avatarbackgroundColor: kOffLineColor,
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            name: 'Ilham Yoga',
                            messageText:
                                'I have an "inspiration" board on Figma. I\'d take screenshots of anything I would like and post it there.',
                            upVoteText: '1 UpVote',
                            messageCounter: '2',
                            hours: '1 hour ago',
                            reportText: 'Report'),
                        SizedBox(height: 10),
                        RepliesCardWidget(
                            avatarbackgroundColor: kOffLineColor,
                            avatarImageUrl: 'lib/asset/images/profle.png',
                            name: 'Ilham Yoga',
                            messageText:
                                'I have an "inspiration" board on Figma. I\'d take screenshots of anything I would like and post it there.',
                            upVoteText: '1 UpVote',
                            messageCounter: '2',
                            hours: '1 hour ago',
                            reportText: 'Report'),
                      ],
                    ),
                  )),
                ],
              ),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    children: [
                      ForumHeadingWidget(
                          title: 'Hits Users',
                          tabBlockText: 'All Users',
                          onPress: () {}),
                      const SizedBox(height: 10),
                      HitUsersCardWidget(
                          avatarbackgroundColor: kOffLineColor,
                          avatarImageUrl: 'lib/asset/images/profle.png',
                          name: 'Mark Wazauiski',
                          subName: '@markwazauz',
                          buttonText: 'Follow',
                          iconUrl: 'lib/asset/images/add_icon.png',
                          onPress: () {}),
                      const SizedBox(height: 10),
                      HitUsersCardWidget(
                          avatarbackgroundColor: kOffLineColor,
                          avatarImageUrl: 'lib/asset/images/profle.png',
                          name: 'Mark Wazauiski',
                          subName: '@markwazauz',
                          iconUrl: 'lib/asset/images/add_icon.png',
                          buttonText: 'Follow',
                          onPress: () {}),
                      const SizedBox(height: 10),
                      HitUsersCardWidget(
                          avatarbackgroundColor: kOffLineColor,
                          avatarImageUrl: 'lib/asset/images/profle.png',
                          name: 'Mark Wazauiski',
                          subName: '@markwazauz',
                          iconUrl: 'lib/asset/images/add_icon.png',
                          buttonText: 'Follow',
                          onPress: () {}),
                      const SizedBox(height: 10),
                      HitUsersCardWidget(
                          avatarbackgroundColor: kOffLineColor,
                          avatarImageUrl: 'lib/asset/images/profle.png',
                          name: 'Mark Wazauiski',
                          subName: '@markwazauz',
                          iconUrl: 'lib/asset/images/add_icon.png',
                          buttonText: 'Follow',
                          onPress: () {}),
                    ],
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
