import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_comment_system/components/ReplayWidgetContainer.dart';
import 'package:flutter_app_comment_system/screens/ReplayScreen.dart';
import 'package:google_fonts/google_fonts.dart';
import 'InlineReplayView.dart';
import 'ViewMoreReplayView.dart';
import '../models/Comment.dart';

class CommentWidgetContainer extends StatefulWidget {
  static const String routeName = "/comment";

  final Comment comments;
  final int index;

  CommentWidgetContainer(this.comments, this.index);

  @override
  _CommentWidgetContainerState createState() => _CommentWidgetContainerState();
}

class _CommentWidgetContainerState extends State<CommentWidgetContainer> {
  int get index => widget.index;

  void _showReplayScreen() {
    Navigator.of(context).pushNamed(ReplayScreen.routeName, arguments: index);
  }

  Comment comments;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Container(
          color: Color(0xFFFFFFFF),
          padding: EdgeInsets.symmetric(horizontal: 25, vertical: 15),
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
                                    if (widget.comments.commentator.topFan)
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
                                    Text(
                                      "${widget.comments.commentator.userName}",
                                      style: GoogleFonts.macondo(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ],
                                )),
                            GestureDetector(
                              onTap: () {
                                if ((widget.comments.replays.length ?? 0) > 0) {
                                  _showReplayScreen();
                                }
                              },
                              child: Container(
                                width: double.infinity,
                                padding: EdgeInsets.only(
                                    left: 20, right: 20, top: 5, bottom: 20),
                                constraints: BoxConstraints(maxHeight: 300),
                                child: Text(
                                  "${widget.comments.message}",
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 15,
                                ),
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
                            Text("${widget.comments.likes}"),
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
                    if (widget.comments.replays != null)
                      Visibility(
                          visible: true,
                          replacement: SizedBox.shrink(),
                          child: widget.comments.replays.length > 2
                              ? Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    GestureDetector(
                                      child: InlineReplayView(
                                          widget.comments.replays[0]),
                                      onTap: () {
                                        _showReplayScreen();
                                      },
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    GestureDetector(
                                      child: InlineReplayView(
                                          widget.comments.replays[1]),
                                      onTap: () {
                                        _showReplayScreen();
                                      },
                                    ),
                                    SizedBox(
                                      height: 5,
                                    ),
                                    GestureDetector(
                                      child: ViewMoreReplayView(
                                          widget.comments.replays.length ?? 0),
                                      onTap: () {
                                        _showReplayScreen();
                                      },
                                    ),
                                  ],
                                )
                              : Column(
                                  children: [
                                    SizedBox(
                                      height: 5,
                                    ),
                                    if (widget.comments.replays.length == 1)
                                      GestureDetector(
                                        child: ViewMoreReplayView(
                                            widget.comments.replays.length),
                                        onTap: () {
                                          _showReplayScreen();
                                        },
                                      )
                                    else
                                      SizedBox.shrink()
                                  ],
                                ))
                    else
                      SizedBox.shrink()
                  ],
                ),
              )
            ],
          )),
    );
  }
}
