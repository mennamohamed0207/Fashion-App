import 'package:flutter/material.dart';

class CheckList extends StatefulWidget {
  final String brandname;
  const CheckList({super.key, required this.brandname});

  @override
  State<CheckList> createState() => _CheckListState(brandName: brandname);
}

class _CheckListState extends State<CheckList> {
  late final String brandName;
  _CheckListState({required this.brandName});

  bool _value = false;

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;

    var width = size.width;
    return SizedBox(
      width: width,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Theme(
          data: Theme.of(context).copyWith(
              unselectedWidgetColor: const Color(0xffCCE1F2),
              

              // ignore: deprecated_member_use
           ),
          child: CheckboxListTile(
            title: Text(
              brandName,
              //: const TextStyle(color: Colors.white),
            ),
            //subtitle: const Text('A computer science portal for geeks.'),
            activeColor: const Color(0xFFEF3651),
            checkColor: Colors.white,
            selected: _value,
            value: _value,
            onChanged: (value) {
              setState(() {
                _value = value!;
              });
            },
          ),
        ),
      ),
    );
  }
}
