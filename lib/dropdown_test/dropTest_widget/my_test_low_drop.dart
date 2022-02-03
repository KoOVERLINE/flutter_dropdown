import 'package:flutter/material.dart';

import 'bsCode.dart';


class MyTestLowDrop extends StatefulWidget {

  String parentCode;
  final void Function(Object?) onChanged;

  /*const MyTestLowDrop({Key? key, required this.parentCode, required this.onChanged}) : super(key: key);*/

  MyTestLowDrop({required this.parentCode, required this.onChanged});

  @override
  _MyTestLowDropState createState() => _MyTestLowDropState();
}

class _MyTestLowDropState extends State<MyTestLowDrop> {

  var selectBsDcode;
  late Future<Map<String, String>> futureBsLowData;


  @override
  void didUpdateWidget(covariant MyTestLowDrop oldWidget) {
    // TODO: implement didUpdateWidget
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) {
    print('선택된 A코드 : ${widget.parentCode}');
    if( widget.parentCode != "" )
    {

      futureBsLowData = bsDCode(widget.parentCode);

      return FutureBuilder(
        future: futureBsLowData,
        builder: (BuildContext context, AsyncSnapshot snapshot){
          if( snapshot.hasData )
          {
              return DropdownButtonFormField(
              isExpanded: true,
              onChanged: (newVal) {
                widget.onChanged(newVal);
                setState(() {
                  selectBsDcode = newVal;
                });
              },
              hint: Text("선택하세요"),
              value: selectBsDcode,
              items: snapshot.data.entries
                  .map<DropdownMenuItem<String>>(
                      (MapEntry<String, String> e) => DropdownMenuItem<String>(
                    value: e.value,
                    child: Text(e.value),
                  ))
                  .toList(),
            );
          }
          else if( snapshot.hasError )
          {
            return Text("에러발생");
          }
          else
          {
            return Text("실패");
          }
        }
      );
    }
    else
    {
      return Text("없음");
    }
  }
}
