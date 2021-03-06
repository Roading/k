import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:jdshop/services/ScreenAdapter.dart';

class JdText extends StatelessWidget {
  final String text;
  final bool password;
  final Object onChanged;
  final Object onSubmitted;
  final int maxLines;
  final double height;
  final TextEditingController controller;
    JdText({Key key,this.text="输入内容",this.password=false,this.onSubmitted=null,this.onChanged=null,this.maxLines=1,this.height=68,this.controller=null}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: TextField(
        controller:controller,
        maxLines: maxLines,
        obscureText: this.password,
        decoration: InputDecoration(
            hintText: this.text,
            border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none)),
        onChanged: this.onChanged,
        onSubmitted: onSubmitted,
      ),
      height: ScreenAdapter.height(height),
      decoration: BoxDecoration(
          border: Border(bottom: BorderSide(width: 1, color: Colors.black12))),
    );
  }
}
