import 'package:flutter/material.dart';
import 'package:flutter_dropdown/config/config.dart';


//텍스트 레이블
class WpLabel extends StatelessWidget {

  final String text;

  const WpLabel({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
    text,
      style: TextStyle(
        fontSize: Config.dsize!.width * 0.05,
    ),

    );
  }
}
