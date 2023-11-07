import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:jobsearch/Screens/Jobs/findjob.dart';
import 'package:jobsearch/constants/jobs_type.dart';

class RelatedJobs extends StatelessWidget {
  const RelatedJobs({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const JobsGridView(jobtype: JobType.privateJobs,);
  }
}
