import 'package:flutter/material.dart';
import 'package:recruiter/features/job/widgets/no_job_found_message.dart';

class PublishedTab extends StatelessWidget {
  const PublishedTab({super.key});

  @override
  Widget build(BuildContext context) {
    return NoJobFoundMessage(
      title: 'No published jobs',
      subTitle:
      'Publish a job post to make it visible to job seekers and start receiving applicants.',
    );
  }
}
