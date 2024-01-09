import 'package:flutter/material.dart';
import 'package:ouditor_design_system/utilities/color_constant.dart';
import 'package:ouditor_design_system/components/button/text_button_widget.dart';
import 'package:ouditor_design_system/components/label/downward_label.dart';
import 'package:ouditor_design_system/components/label/upward_label.dart';
import 'package:ouditor_design_system/components/search_bar/dark_background_search_bar_widget.dart';
import 'package:ouditor_design_system/components/search_bar/white_background_search_bar.dart';
import 'package:ouditor_design_system/components/tab_block/tab_block_widget.dart';
import 'package:ouditor_design_system/components/tab_block/time_sequence_tab_widget.dart';

class ComponentScreen extends StatelessWidget {
  const ComponentScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: kAppBarColor,
        title: const Text('Component'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  TabBlockWidget(
                    title: 'All Assets',
                    onPress: () {},
                  ),
                  TabBlockWidget(
                    title: 'Treding',
                    onPress: () {},
                  ),
                  TabBlockWidget(
                    title: 'Gainers',
                    onPress: () {},
                  ),
                  TabBlockWidget(
                    title: 'Losers',
                    onPress: () {},
                  ),
                  TabBlockWidget(
                    title: 'Recently Added',
                    onPress: () {},
                  ),
                ],
              ),
              const SizedBox(height: 30),
              Container(
                  height: 45,
                  padding: const EdgeInsets.all(2),
                  decoration: ShapeDecoration(
                    color: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8)),
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      TimeSequenceTabWidget(
                        title: '1H',
                        onPress: () {},
                      ),
                      TimeSequenceTabWidget(
                        title: '24H',
                        onPress: () {},
                      ),
                      TimeSequenceTabWidget(
                        title: '1W',
                        onPress: () {},
                      ),
                      TimeSequenceTabWidget(
                        title: '1M',
                        onPress: () {},
                      ),
                      TimeSequenceTabWidget(
                        title: '1Y',
                        onPress: () {},
                      ),
                    ],
                  )),
              const Row(
                children: [
                  UpwardLableWidget(
                    title: '99.99%',
                    backgroundColor: kSuccessButtonBackgroundColor,
                    imageUrl: 'lib/asset/images/upward_label_icon.png',
                  ),
                  SizedBox(width: 10),
                  DownwardLableWidget(
                    title: '99.99%',
                    backgroundColor: kRedBackgroundColor,
                    imageurl: 'lib/asset/images/downward_label_icon.png',
                  ),
                ],
              ),
              const SizedBox(height: 20),
              Row(
                children: [
                  TextButtonWidget(
                    title: 'All Discussions',
                    onPress: () {},
                  ),
                  const SizedBox(width: 10),
                  TextButtonWidget(title: 'All Topics', onPress: () {}),
                  const SizedBox(width: 10),
                  TextButtonWidget(title: 'Members', onPress: () {}),
                  const SizedBox(width: 10),
                  // const Column(
                  //   children: [
                  //     SuccessLabelButtonWidget(text: 'Success'),
                  //     SizedBox(height: 10),
                  //     PendingLabelButtonWidget(text: 'Pending'),
                  //     SizedBox(height: 10),
                  //     DetailLabelbuttoWidget(text: 'See Detail'),
                  //     SizedBox(height: 10),
                  //     NormalStatePercentageLabelWidget(text: 'Normal State'),
                  //     SizedBox(height: 10),
                  //   ],
                  // ),
                ],
              ),
              const SizedBox(height: 10),
              const WhiteBackgroungSearchBarWidget(
                labelText: 'Search product',
              ),
              const SizedBox(height: 10),
              const DarkBackgroundSearchBarWidget(),
              const SizedBox(height: 40),
              // const Row(
              //   children: [
              //     FeedsDropdownWidget(),
              //     SizedBox(width: 20),
              //     ComponentRowsDropDown()
              //   ],
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
