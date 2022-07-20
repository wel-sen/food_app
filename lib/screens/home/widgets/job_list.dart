import 'package:flutter/material.dart';
import 'package:tempflut/models/job.dart';
import 'package:tempflut/screens/home/widgets/job_detail.dart';
import 'package:tempflut/screens/home/widgets/job_item.dart';

class JobList extends StatelessWidget {
  final jobList = Job.generateJobs();
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: 25,
        // horizontal: 25,
      ),
      height: 190,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) => GestureDetector(
                onTap: () {
                  showModalBottomSheet(
                    context: context,
                    builder: (context) => JobDetail(jobList[index]),
                  );
                },
                child: JobItem(
                  jobList[index],
                ),
              ),
          separatorBuilder: (_, index) => const SizedBox(
                width: 15,
              ),
          itemCount: jobList.length),
    );
  }
}
