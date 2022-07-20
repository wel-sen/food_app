import 'package:flutter/material.dart';
import 'package:tempflut/models/job.dart';
import 'package:tempflut/widgets/icon_text.dart';

class JobItem extends StatelessWidget {
  final Job job;
  bool showTime;
  JobItem(this.job, {this.showTime = false});
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 270,
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
        border: Border.all(
          color: Colors.blue.withOpacity(0.3),
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                children: [
                  Container(
                    // padding: EdgeInsets.symmetric(vertical: 2, horizontal: 20),
                    height: 40,
                    width: 40,
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.grey[200],
                      // image: DecorationImage(
                      //   image: AssetImage(job.logoUrl),
                      // ),
                    ),
                    child: Image(
                      image: AssetImage(job.logoUrl),
                      // height: 4,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(
                    job.company,
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.grey[600],
                    ),
                  ),
                ],
              ),
              Icon(
                job.isMark ? Icons.bookmark : Icons.bookmark_outline,
              ),
            ],
          ),
          SizedBox(height: 10),
          Text(
            job.title,
          ),
          SizedBox(height: 10),
          Row(
            // mainAxisAlignment: MainAxisAlignment.start,
            children: [
              IconText(Icons.location_city_outlined, job.location),
              SizedBox(width: 45),
              if (showTime) IconText(Icons.access_time_outlined, job.time),
            ],
          ),
        ],
      ),
    );
  }
}
