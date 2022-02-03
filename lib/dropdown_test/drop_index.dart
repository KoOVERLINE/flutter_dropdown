import 'package:flutter/material.dart';
import 'package:flutter_dropdown/dropdown_test/dropTest_widget/my_test_dropdown.dart';
import 'package:flutter_dropdown/dropdown_test/dropTest_widget/my_test_low_drop.dart';
import 'package:flutter_dropdown/widget/base_appbar.dart';

//뷰
class DropDownIndex extends StatefulWidget {
  const DropDownIndex({Key? key}) : super(key: key);

  @override
  _DropDownIndexState createState() => _DropDownIndexState();
}

class _DropDownIndexState extends State<DropDownIndex> {

  String? selectedAcode;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    selectedAcode = "";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: baseAppBar(context, "앱바 테스트입니다"),

      body: Container(
        child: Center(
          child: Column(
            children: <Widget>[

              //상위 드롭다운
              MyDropDown(onChanged: (selectedBsACode){
                setState(() {
                  selectedAcode = selectedBsACode.toString();
                });
              }),

              //하위 드롭다운
              MyTestLowDrop(parentCode: selectedAcode!, onChanged: (selectedDcode){

              }),
            ],
          ),
        ),
      ),
    );
  }
}
