import 'package:flutter/material.dart';
import 'package:flutter_app_comment_system/models/Comment.dart';
import 'package:flutter_app_comment_system/provider/MockDataProvider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import "ReplaySmallComment.dart";

class ReplayWidgetContainer extends StatefulWidget {
  final int commentIndex;

  ReplayWidgetContainer(this.commentIndex);

  @override
  _ReplayWidgetContainerState createState() => _ReplayWidgetContainerState();
}

class _ReplayWidgetContainerState extends State<ReplayWidgetContainer> {
  // Gettting the comment and replies

  int get commentIndex => widget.commentIndex;

  @override
  Widget build(BuildContext context) {
    final Comment comment =
        Provider.of<MockDataProvider>(context).getComment(commentIndex);

    double topPadding = MediaQuery.of(context).padding.top;

    return GestureDetector(
      onTap: () {
        FocusScope.of(context).requestFocus(new FocusNode());
      },
      child: Container(
          color: Color(0xFFFFFFFF),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: topPadding + 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(left: 10),
                      child: CircleAvatar(
                        child: FlutterLogo(
                          size: 30,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    Expanded(
                      child: Padding(
                        padding: const EdgeInsets.only(right: 10),
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
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
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
                                              "${comment.commentator.userName}",
                                              style: GoogleFonts.macondo(
                                                  fontSize: 16,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ],
                                        )),
                                    Container(
                                      width: double.infinity,
                                      padding: EdgeInsets.symmetric(
                                          horizontal: 20, vertical: 10),
                                      child: Text("${comment.message}"),
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
                                    Text("3"),
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
                            Column(
                              children: [
                                ...comment.replays
                                    .map((reply) => ReplaySmallComment(reply))
                                    .toList()
                              ],
                            ),
                            // ListView.builder(
                            //   itemBuilder: (ctx, index) =>
                            //       ReplaySmallComment(comment.replays[index]),
                            //   itemCount: comment.replays.length,
                            // ),
                            SizedBox(
                              height: 10,
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
                Container(
                  child: GestureDetector(
                    onTap: () {
                      print("load more");
                    },
                    child: Center(
                      child: Text(
                        "... Load more ...",
                        style: GoogleFonts.macondo(
                            fontSize: 24, fontWeight: FontWeight.w600),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          )),
    );
  }
}
