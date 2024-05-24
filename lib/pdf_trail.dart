import 'package:flutter/material.dart';
class PdfTrail extends StatefulWidget {
  const PdfTrail({super.key});

  @override
  State<PdfTrail> createState() => _PdfTrailState();
}

class _PdfTrailState extends State<PdfTrail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Row(
            children: [
              Container(
                height: 700,
                width: 250,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  color: Colors.deepOrange,


                ),
                child: Column(
                  children: [
                    // Text('${Name}',)
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
