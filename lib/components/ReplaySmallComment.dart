import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_comment_system/models/Replie.dart';
import 'package:google_fonts/google_fonts.dart';

class ReplaySmallComment extends StatefulWidget {
  final Replay replay;

  ReplaySmallComment(this.replay);

  @override
  _ReplaySmallCommentState createState() => _ReplaySmallCommentState();
}

class _ReplaySmallCommentState extends State<ReplaySmallComment> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Container(
          color: Color(0xFFFFFFFF),
          padding: EdgeInsets.only(top: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                child: FlutterLogo(
                  size: 30,
                ),
              ),
              SizedBox(
                width: 16,
              ),
              Expanded(
                child: Column(
                  children: [
                    Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(18),
                            color: Colors.black12),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    if (widget.replay.replyMaker.topFan)
                                      Container(
                                        constraints:
                                            BoxConstraints(maxHeight: 20),
                                        child: FittedBox(
                                          child: Row(
                                            children: [
                                              Icon(Icons.star),
                                              Text("Top Fan")
                                            ],
                                          ),
                                        ),
                                      ),
                                    Text("${widget.replay.replyMaker.userName}",
                                        style: GoogleFonts.macondo(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 16)),
                                  ],
                                )),
                            Container(
                              width: double.infinity,
                              padding: EdgeInsets.only(
                                  left: 20, bottom: 10, right: 10),
                              constraints: BoxConstraints(maxHeight: 300),
                              child: Text(
                                "${widget.replay.message}",
                                overflow: TextOverflow.ellipsis,
                                maxLines: 15,
                              ),
                            ),
                          ],
                        )),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          child: Row(
                            children: [
                              SizedBox(
                                width: 10,
                              ),
                              Text("22h"),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Like"),
                              SizedBox(
                                width: 10,
                              ),
                              Text("Replay")
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisSize: MainAxisSize.min,
                          children: [
                            Text("${widget.replay.likes}"),
                            SizedBox(
                              width: 10,
                            ),
                            Icon(
                              Icons.thumb_up,
                              size: 20,
                            ),
                            SizedBox(
                              width: 10,
                            )
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              )
            ],
          )),
    );
  }
}
