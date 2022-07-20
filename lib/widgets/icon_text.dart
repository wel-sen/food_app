import 'package:flutter/material.dart';
import 'package:tempflut/screens/home/widgets/job_list.dart';

class IconText extends StatelessWidget {
  final IconData icon;
  final String text;
  IconText(this.icon, this.text);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: [
        Icon(icon, color: Colors.orange),
        SizedBox(width: 10),
        Text(text,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.grey[500],
            ))
      ],
    );
  }
}
