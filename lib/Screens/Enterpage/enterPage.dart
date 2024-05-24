import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class EntryPage extends StatefulWidget {
  const EntryPage({super.key});

  @override
  State<EntryPage> createState() => _EntryPageState();
}

class _EntryPageState extends State<EntryPage> {
  @override
  Widget build(BuildContext context) {
    double h =MediaQuery.of(context).size.height;
    double w =MediaQuery.of(context).size.width;
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: h*0.150,

          child: Row(

            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/editpage');
                  },
                  child: bottomselectionBar(h,w,
                      selecticons: Icons.edit_note_rounded,
                      selecttext: 'Edit')),


              bottomselectionBar(h,w,
                  selecticons: Icons.bookmark_border_rounded,
                  selecttext: 'Saved'),
              bottomselectionBar(h,w,
                  selecticons: Icons.file_download_outlined, selecttext: 'Export'),
              bottomselectionBar(h,w,
                  selecticons: Icons.share, selecttext: 'Edit'),
            ],
          ),
        ),
        appBar: AppBar(),
        body: Column(
          // mainAxisAlignment: MainAxisAlignment.end,
          children: [

          ],
        ),
      ),
    );
  }

  Widget bottomselectionBar(double h,double w,{required selecticons, required selecttext}) {
    return Container(

      margin: EdgeInsets.all(7),
      alignment: Alignment.center,
      height: h*0.14,
      width: w*0.190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            selecticons,
            color: Colors.purple,
            size: 40,
          ),
          Text(
            selecttext,
            style: TextStyle(
                color: Colors.black, fontSize: 20, fontWeight: FontWeight.w500),
          )
        ],
      ),
    );
  }
}
