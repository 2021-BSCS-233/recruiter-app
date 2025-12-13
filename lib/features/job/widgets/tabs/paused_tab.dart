import 'package:flutter/material.dart';
import 'package:recruiter/features/job/widgets/no_job_found_message.dart';

class PausedTab extends StatelessWidget {
  const PausedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NoJobFoundMessage(
      title: 'No paused jobs',
      subTitle:
          'Pause a job posting when you want to temporarily stop receiving applications without closing it.',
    );
  }
}
