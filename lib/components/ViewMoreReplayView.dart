import 'package:flutter/material.dart';

class ViewMoreReplayView extends StatelessWidget {
  final int repliesCount;

  ViewMoreReplayView(this.repliesCount);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "View $repliesCount more replies...",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
