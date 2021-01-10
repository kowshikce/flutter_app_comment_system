import 'package:flutter/material.dart';
import 'package:flutter_app_comment_system/models/Replie.dart';
import 'package:google_fonts/google_fonts.dart';

class InlineReplayView extends StatelessWidget {
  final Replay replies;

  InlineReplayView(this.replies);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: CircleAvatar(
              backgroundColor: Colors.red,
              child: FlutterLogo(
                textColor: Colors.red,
              ),
            ),
          ),
          SizedBox(
            width: 5,
          ),
          Padding(
            padding: EdgeInsets.zero,
            child: Text(
              "${replies.replyMaker.userName}",
              style: GoogleFonts.macondo(
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                  letterSpacing: -0.5),
              maxLines: 1,
            ),
          ),
          SizedBox(
            width: 4,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.zero,
              child: Text(
                "${replies.message}",
                style: TextStyle(
                    fontStyle: FontStyle.normal,
                    fontSize: 11,
                    letterSpacing: -0.1),
                overflow: TextOverflow.ellipsis,
                maxLines: 1,
              ),
            ),
          )
        ],
      ),
    );
  }
}
