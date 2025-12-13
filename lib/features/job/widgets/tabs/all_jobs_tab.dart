import 'package:flutter/material.dart';
import 'package:recruiter/features/job/widgets/no_job_found_message.dart';

class AllJobsTab extends StatelessWidget {
  const AllJobsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NoJobFoundMessage(
      title: 'You haven’t posted any jobs yet',
      subTitle:
      'Create your first job posting to start attracting candidates from web dashboard.',
    );
  }
}
