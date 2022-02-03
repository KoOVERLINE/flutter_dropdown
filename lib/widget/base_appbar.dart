import 'package:flutter/material.dart';

PreferredSizeWidget baseAppBar(BuildContext context, String title){
  return AppBar(
    title: Text(title),
    centerTitle: true,
  );
}
