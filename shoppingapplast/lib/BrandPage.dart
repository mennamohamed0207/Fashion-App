// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import 'checklist.dart';

class Brand extends StatefulWidget {
  const Brand({Key? key}) : super(key: key);

  @override
  State<Brand> createState() => _BrandState();
}

class _BrandState extends State<Brand> {
  @override
  Widget build(BuildContext context) {
    List<String> brandNames = [
      "adidas",
      "adidas Originals",
      "Blend",
      "Boutique Moschino",
      "Champion",
      "Diesel",
      "Jack & Jones",
      "Naf Naf",
      "Red Valentino",
      "s.Oliver"
    ];

    return Scaffold(
      backgroundColor: const Color(0xff1e1f28),
      appBar: AppBar(
        backgroundColor: const Color(0xff1e1f28),
        leading: const Icon(Icons.arrow_back_ios_new),
        title: const Center(
            child: Text(
          "Brand",
          style: TextStyle(color: Color(0xffCCE1F2)),
        )),
      ),
      body: Column(
        children: [
          const Padding(
            padding: EdgeInsets.all(15),
            child: TextField(
              // style: TextStyle(backgroundColor: Color.fromARGB(8, 252, 251, 251)),
              decoration: InputDecoration(
                  border: OutlineInputBorder(
                      borderRadius: BorderRadius.all(Radius.circular(50))),
                  labelText: 'Search',
                  focusColor: Color.fromARGB(0, 186, 195, 238)),
              style: TextStyle(color: Color(0xffCCE1F2)),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemBuilder: (context, index) {
                return CheckList(brandname: brandNames[index]);
              },
              itemCount: brandNames.length,
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
