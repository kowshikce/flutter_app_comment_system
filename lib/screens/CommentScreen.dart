import 'package:flutter/material.dart';
import 'package:flutter_app_comment_system/models/Comment.dart';
import 'package:flutter_app_comment_system/provider/MockDataProvider.dart';
import '../components/CommentWidgetContainer.dart';
import 'package:provider/provider.dart';

class CommentScreen extends StatefulWidget {
  static const String routeName = "/CommentScreen";

  @override
  _CommentScreenState createState() => _CommentScreenState();
}

class _CommentScreenState extends State<CommentScreen> {
  TextEditingController _controller;
  bool _init = true;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _controller = TextEditingController();
  }

  void newComment(String comment) {
    Provider.of<MockDataProvider>(context, listen: false)
        .makeNewComment(comment);
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    List<Comment> comments = Provider.of<MockDataProvider>(context).comments;
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: ListView.builder(
              itemCount: comments.length,
              itemBuilder: (ctx, index) {
                return CommentWidgetContainer(comments[index], index);
              },
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 25, vertical: 10),
            decoration: BoxDecoration(
                color: Colors.white60,
                border:
                    Border(top: BorderSide(color: Colors.black54, width: .5))),
            child: Row(
              children: [
                Icon(Icons.camera_alt_outlined),
                SizedBox(
                  width: 10,
                ),
                Expanded(
                    child: TextField(
                  controller: _controller,
                  minLines: 1,
                  maxLines: 3,
                  textInputAction: TextInputAction.send,
                  decoration: InputDecoration(
                      contentPadding:
                          EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                      hintText: "Write a public comment...",
                      hintStyle: TextStyle(color: Colors.black, fontSize: 14),
                      labelStyle: TextStyle(color: Colors.black),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(24))),
                      suffixIcon: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Icon(Icons.card_giftcard_outlined),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(Icons.emoji_emotions_outlined),
                          SizedBox(
                            width: 10,
                          )
                        ],
                      )),
                  onChanged: (value) {},
                  onSubmitted: (value) {
                    newComment(value);
                    _controller.clear();
                  },
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
