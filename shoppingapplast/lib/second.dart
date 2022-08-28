// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';


import 'package:shoppingapplast/BrandPage.dart';

class Second extends StatefulWidget {
  const Second({Key? key}) : super(key: key);

  @override
  State<Second> createState() => _SecondState();
}

class _SecondState extends State<Second> {
  RangeValues _currentRangeValues = const RangeValues(40, 80);
  @override
  Widget build(BuildContext context) {
    
    return Scaffold(
      backgroundColor: const Color(0xFF1E1F28),
      appBar: AppBar(
          backgroundColor: const Color(0xFF1E1F28),
          leading: const Icon(Icons.arrow_back_ios_new),
          title: const Center(
            child: Text(
              "Filters",
              style: TextStyle(color: Color(0xffCCE1F2)),
            ),
          )),
      body: Column(
        children: [
          Row(
            children: const [
              Text(
                "Price range ",
                style: TextStyle(color: Color(0xffCCE1F2), fontSize: 16),
              )
            ],
          ),
          RangeSlider(
            activeColor: const Color(0xFFEF3651),
            inactiveColor: const Color.fromARGB(235, 160, 162, 163),
            values: _currentRangeValues,
            max: 100,
            divisions: 5,
            labels: RangeLabels(
              _currentRangeValues.start.round().toString(),
              _currentRangeValues.end.round().toString(),
            ),
            onChanged: (RangeValues values) {
              setState(() {
                _currentRangeValues = values;
              });
            },
          ),
          Row(
            children: const [
              Text("Color",
                  style: TextStyle(color: Color(0xffCCE1F2), fontSize: 16)),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 28, horizontal: 0)),
            ],
          ),
          Row(
            children: const [
              Padding(padding: EdgeInsets.all(14)),
              CircleAvatar(
                backgroundColor: Colors.black,
                radius: 18,
              ),
              Padding(padding: EdgeInsets.all(14)),
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 18,
              ),
              Padding(padding: EdgeInsets.all(14)),
              CircleAvatar(
                backgroundColor: Colors.orange,
                radius: 18,
              ),
              Padding(padding: EdgeInsets.all(14)),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(190, 169, 169, 1),
                radius: 18,
              ),
              Padding(padding: EdgeInsets.all(14)),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(145, 186, 79, 1),
                radius: 18,
              ),
              Padding(padding: EdgeInsets.all(14)),
              CircleAvatar(
                backgroundColor: Color.fromRGBO(44, 177, 177, 1),
                radius: 18,
              ),
              Padding(padding: EdgeInsets.all(14)),
            ],
          ),
          Row(
            children: const [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 28, horizontal: 0)),
              Text("Size",
                  style: TextStyle(color: Color(0xffCCE1F2), fontSize: 16)),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 28, horizontal: 0))
            ],
          ),
          ButtonBar(
              alignment: MainAxisAlignment.start,
              buttonPadding:
                  const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              children: [
                RaisedButton(
                  textColor: const Color(0xffCCE1F2),
                  color: const Color(0xFF1E1F28),
                  onPressed: () {},
                  child: const Text("XS"),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: const Color(0xFFEF3651),
                  onPressed: () {},
                  child: const Text("S"),
                ),
                RaisedButton(
                  textColor: Colors.white,
                  color: const Color(0xFFEF3651),
                  onPressed: () {},
                  child: const Text("M"),
                ),
                RaisedButton(
                  textColor: const Color(0xffCCE1F2),
                  color: const Color(0xFF1E1F28),
                  onPressed: () {},
                  child: const Text("L"),
                ),
                RaisedButton(
                  textColor: const Color(0xffCCE1F2),
                  color: const Color(0xFF1E1F28),
                  onPressed: () {},
                  child: const Text("XL"),
                ),
              ]),
          Row(
            children: const [
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 28, horizontal: 0)),
              Text("Category",
                  style: TextStyle(color: Color(0xffCCE1F2), fontSize: 16)),
              Padding(
                  padding: EdgeInsets.symmetric(vertical: 28, horizontal: 0))
            ],
          ),
          ButtonBar(
            alignment: MainAxisAlignment.start,
            buttonPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            children: [
              Row(
                children: [
                  RaisedButton(
                    textColor: const Color(0xffCCE1F2),
                    color: const Color(0xFFEF3651),
                    onPressed: () {},
                    child: const Text("All"),
                  ),
                  RaisedButton(
                    textColor: const Color(0xffCCE1F2),
                    color: const Color(0xFF1E1F28),
                    onPressed: () {},
                    child: const Text("Women"),
                  ),
                  RaisedButton(
                    textColor: const Color(0xffCCE1F2),
                    color: const Color(0xFF1E1F28),
                    onPressed: () {},
                    child: const Text("Men"),
                  ),
                ],
              ),
              Row(
                children: [
                  RaisedButton(
                    textColor: const Color(0xffCCE1F2),
                    color: const Color(0xFF1E1F28),
                    onPressed: () {},
                    child: const Text("Boys"),
                  ),
                  RaisedButton(
                    textColor: const Color(0xffCCE1F2),
                    color: const Color(0xFF1E1F28),
                    onPressed: () {},
                    child: const Text("Girls"),
                  ),
                ],
              )
            ],
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () => Navigator.pushReplacement(context,
                      MaterialPageRoute(builder: (context) => const Brand())),
                  child: Card(
                    color: const Color(0xFF1E1F28),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: const [
                            Text("Brand",
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Color(0xffCCE1F2),
                                )),
                            Text(
                              "adidas Originals, Jack & Jones, s.Oliver",
                              style: TextStyle(
                                  fontSize: 11, color: Color(0xffCCE1F2)),
                            )
                          ],
                        ),
                        const Icon(Icons.arrow_forward_ios),
                      ],
                    ),
                  ),
                );
              },
              itemCount: 1,
            ),
          ),
          ButtonBar(
            buttonPadding:
                const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
            mainAxisSize: MainAxisSize.min,
            children: [
              RaisedButton(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                textColor: const Color(0xffCCE1F2),
                color: const Color(0xFF1E1F28),
                onPressed: () {},
                child: const Text("Dicard"),
              ),
              RaisedButton(
                shape: const RoundedRectangleBorder(
                  borderRadius: BorderRadius.all(Radius.circular(20)),
                ),
                textColor: const Color(0xffCCE1F2),
                color: const Color(0xFFEF3651),
                onPressed: () {},
                child: const Text("Apply"),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
