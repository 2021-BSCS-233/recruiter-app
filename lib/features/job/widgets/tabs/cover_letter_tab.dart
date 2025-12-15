import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_pdfviewer/pdfviewer.dart';

class CoverLetterTab extends StatelessWidget {
  const CoverLetterTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 300,
          child: SfPdfViewer.asset('assets/docs/Resume1.pdf'),
        ),
      ],
    );
  }
}
