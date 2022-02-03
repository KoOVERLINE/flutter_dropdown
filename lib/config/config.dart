import 'package:flutter/material.dart';
import 'dart:ui';


class Config{

  //화면 사이즈 관련.
  //초기 root_page에서 해당 기기의 사이즈를 받아옴.

  static Size? dsize; //divece size

  //사용법
  // 가로 사이즈에 퍼센트 적용하고 싶으면 Config.dsize!.width * 0.01(0.1 이 10%)
  // 세로 사이즈에 퍼센트 적용하고 싶으면 Config.dsize!.height * 0.08
  GetDS(Size size){
    dsize = size;
  }

  //ThemeData 설정 관련.
  static Color primaryColor = Color(0xff6200ee); //전체 컬러
}