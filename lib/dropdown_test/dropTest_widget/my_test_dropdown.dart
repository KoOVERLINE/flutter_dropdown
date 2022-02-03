import 'package:flutter/material.dart';

import 'bsCode.dart';


class MyDropDown extends StatefulWidget {
  final void Function(Object?) onChanged;

  const MyDropDown({Key? key,required this.onChanged}) : super(key: key);

  @override
  _MyDropDownState createState() => _MyDropDownState();
}

class _MyDropDownState extends State<MyDropDown> {
  var _selectBsValue;
  late Future<Map<String, String>> myValueMap;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myValueMap = bsAcode();
  }

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Map<String, String>>(
        future: myValueMap,
        builder: (BuildContext context, AsyncSnapshot snapshot) {
          if (snapshot.hasData) {
            return DropdownButtonFormField(
              isExpanded: true,
              onChanged: (newVal) {
                widget.onChanged(newVal);
                setState(() {
                  _selectBsValue = newVal;
                });
              },
              hint: Text("선택하세요"),
              value: _selectBsValue,
              items: snapshot.data.entries
                  .map<DropdownMenuItem<String>>(
                      (MapEntry<String, String> e) => DropdownMenuItem<String>(
                            value: e.key,
                            child: Text(e.value),
                          ))
                  .toList(),
            );
          } else if (snapshot.hasError) {
            return Text("에러");
          } else {
            print(snapshot.data);
            return Text("없을 경우");
          }
        });
  }
}
