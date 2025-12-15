import 'package:flutter/material.dart';
import 'package:recruiter/features/interviews/widgets/interview_tile.dart';
import 'package:get/get.dart';
import 'package:recruiter/features/interviews/widgets/tabs/note_tab.dart';

class InterviewDetailView extends StatelessWidget {
  const InterviewDetailView({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text(
            'Interview Detail',
            style: TextStyle(fontWeight: FontWeight.w500, fontSize: 14),
          ),
          actions: [
            InkWell(
              onTap: () {},
              child: Container(
                height: 24,
                width: 128,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(6.0),
                  color: Get.theme.colorScheme.surface,
                  border: BoxBorder.all(color: Get.theme.colorScheme.outline),
                ),
                child: Center(
                  child: Text(
                    'RESCHEDULED',
                    style: TextStyle(fontSize: 12, fontWeight: FontWeight.w400),
                  ),
                ),
              ),
            ),
            SizedBox(width: 10),
          ],
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            children: [
              InterviewTile(onTap: () {}),
              TabBar(
                tabs: const [
                  Tab(text: 'Note'),
                  Tab(text: 'Feedback'),
                ],
                unselectedLabelColor: Get.theme.colorScheme.tertiary,
                indicatorSize: TabBarIndicatorSize.tab,
                indicatorColor: Get.theme.colorScheme.tertiary,
                indicatorPadding: const EdgeInsets.symmetric(
                  horizontal: 4.0,
                  vertical: 4.0,
                ),
                dividerColor: Colors.transparent,
              ),
              SizedBox(
                height: 400,
                child: TabBarView(
                  children: [
                    NoteTab(),
                    const Center(child: Text('Feedback')),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
