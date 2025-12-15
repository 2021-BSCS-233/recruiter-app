import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:recruiter/core/routes/app_routes.dart';
import 'package:recruiter/features/interviews/controller/interview_controller.dart';
import 'package:recruiter/features/interviews/widgets/custom_calendar_widget.dart';
import 'package:recruiter/features/interviews/widgets/interview_tile.dart';

class InterviewView extends StatelessWidget {
  final InterviewController interviewController = Get.put(
    InterviewController(),
  );

  InterviewView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: Column(
        children: [
          CustomCalendarWidget(),
          InterviewTile(onTap: () {Get.toNamed(AppRoutes.interviewDetailView);}),
        ],
      ),
    );
  }
}
