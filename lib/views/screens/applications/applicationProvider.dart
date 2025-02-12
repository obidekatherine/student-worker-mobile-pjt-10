import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:student_worker/jobs/jobProvider.dart';

import '../global/pages.dart';

final applicationProvider =
    ChangeNotifierProvider.autoDispose((ref) => ApplicationProvider());

class ApplicationProvider extends ChangeNotifier {
  
  void onAppliedJobTap() {
    navigator!.context.read(jobProvider).isFromJobs = false;
    navigator!.pushNamed(jobDescription);
  }
}
