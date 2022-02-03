import 'package:flutter/material.dart';
import 'package:flutter_dropdown/dropdown_test/drop_index.dart';

import 'config/config.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Config().GetDS(MediaQuery.of(context).size);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Flutter dropdown test",
      home: DropDownIndex(),
    );
  }
}
