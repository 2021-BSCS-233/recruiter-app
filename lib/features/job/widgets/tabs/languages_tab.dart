import 'package:flutter/material.dart';
import 'package:recruiter/core/common/widgets/bubble_list_widget.dart';

class LanguagesTab extends StatelessWidget {
  LanguagesTab({super.key});

  final List<String> dataList = [
    'English',
    'Arabic',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Languages',
            style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
          ),
          SizedBox(height: 15),
          Wrap(
            runSpacing: 10,
            children: dataList.map((item) {
              return BubbleListWidget(text: item, onTap: () {});
            }).toList(),
          ),
        ],
      ),
    );
  }
}
