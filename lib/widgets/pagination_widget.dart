import 'package:flutter/material.dart';
import 'package:number_paginator/number_paginator.dart';

class PaginationWidget extends StatefulWidget {
  const PaginationWidget({Key? key}) : super(key: key);

  @override
  State<PaginationWidget> createState() => _PaginationWidgetState();
}

class _PaginationWidgetState extends State<PaginationWidget> {
  int numberOfPages = 5; // Just as an example, you can set it to 120
  int currentPage = 1;

  List<String> generatePageContent(int page) {
    // This is just an example; you can create your own content for each page
    return List.generate(10, (index) => 'Page $page, Item ${index + 1}');
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: generatePageContent(currentPage).length,
            itemBuilder: (BuildContext context, int index) {
              return ListTile(
                title: Text(generatePageContent(currentPage)[index]),
              );
            },
          ),
        ),
        NumberPaginator(
          numberPages: numberOfPages,
          onPageChange: (int selectedPage) {
            setState(() {
              currentPage = selectedPage;
            });
          },
        ),
      ],
    );
  }
}
