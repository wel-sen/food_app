import 'package:flutter/material.dart';
// import 'package:flutter/src/widgets/framework.dart';
import 'package:tempflut/models/job.dart';
import 'package:tempflut/widgets/icon_text.dart';

class JobDetail extends StatelessWidget {
  final Job job;
  JobDetail(this.job);

  @override
  Widget build(BuildContext context) {
    return Container(
      // padding: EdgeInsets.symmetric(horizontal: 10),
      padding: EdgeInsets.fromLTRB(25, 0, 25, 25),
      height: 600,
      // width: double.maxFinite,
      decoration: BoxDecoration(
        color: Colors.amberAccent,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(30),
          topRight: Radius.circular(30),
        ),
      ),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              margin: EdgeInsets.only(top: 7),
              height: 4,
              width: 55,
              decoration: BoxDecoration(
                color: Colors.grey[350],
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            SizedBox(
              height: 30,
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: EdgeInsets.all(8),
                          // margin: EdgeInsets.only(top: 20, left: 10),
                          height: 40,
                          width: 40,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey[200],
                          ),
                          child: Image(
                            image: AssetImage(job.logoUrl),
                            // width: 20,
                          ),
                        ),
                        SizedBox(width: 10),
                        Text(
                          job.company,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                    // SizedBox(width: 10),
                    Row(children: [
                      Icon(
                        job.isMark ? Icons.bookmark : Icons.bookmark_outline,
                        color: job.isMark
                            ? Theme.of(context).primaryColor
                            : Colors.grey,
                      ),
                      Icon(Icons.more_horiz_outlined),
                    ]),
                  ],
                ),
                SizedBox(height: 20),
                Text(job.title,
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    )),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconText(Icons.location_on_outlined, job.location),
                    IconText(Icons.access_time_outlined, job.time),
                  ],
                ),
                Divider(
                  height: 20,
                  color: Colors.grey[600],
                ),
                Text(
                  'Requirments',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 20),
                ...job.req
                    .map(
                      (e) => Container(
                        margin: EdgeInsets.symmetric(vertical: 5),
                        // width:double.maxFinite,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              margin: EdgeInsets.only(top: 10),
                              height: 5,
                              width: 5,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.black,
                              ),
                            ),
                            SizedBox(width: 10),
                            ConstrainedBox(
                              constraints: BoxConstraints(
                                maxWidth: 330,
                              ),
                              child: Text(
                                e,
                                style: TextStyle(
                                  wordSpacing: 2.0,
                                  height: 1.5,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                    .toList(),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 25),
                  height: 45,
                  width: double.maxFinite,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      onPrimary: Colors.tealAccent,
                      elevation: 5,
                      shape: StadiumBorder(),
                    ),
                    onPressed: () {},
                    child: Text(
                      'Apply Now',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
