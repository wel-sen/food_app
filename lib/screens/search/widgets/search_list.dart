import 'package:flutter/material.dart';
import 'package:tempflut/models/job.dart';
import 'package:tempflut/screens/home/widgets/job_item.dart';

class SearchList extends StatelessWidget {
  final joblist = Job.generateJobs();

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(
        top: 25,
      ),
      child: ListView.separated(
          padding: EdgeInsets.only(left: 25, right: 25, bottom: 25),
          itemBuilder: (context, index) => JobItem(
                joblist[index],
                showTime: true,
              ),
          separatorBuilder: (_, index) => SizedBox(height: 30),
          itemCount: joblist.length),
    );
  }
}
