import 'package:flutter/material.dart';
import 'package:recruiter/core/common/widgets/bubble_list_widget.dart';

class SkillsTab extends StatelessWidget {
  SkillsTab({super.key});

  final List<String> dataList = [
    'test',
    'test123',
    'test abcd',
    'testing',
    'test455',
    'test123112',
    'test',
    'testing 2332',
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Skills',
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
