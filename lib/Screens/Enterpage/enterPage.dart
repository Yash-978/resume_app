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
    return SafeArea(
      child: Scaffold(
        bottomNavigationBar: BottomAppBar(
          height: 130,

          child: Row(

            children: [
              GestureDetector(
                  onTap: () {
                    Navigator.pushNamed(context, '/editpage');
                  },
                  child: bottomselectionBar(
                      selecticons: Icons.edit_note_rounded,
                      selecttext: 'Edit')),


              bottomselectionBar(
                  selecticons: Icons.bookmark_border_rounded,
                  selecttext: 'Saved'),
              bottomselectionBar(
                  selecticons: Icons.file_download_outlined, selecttext: 'Export'),
              bottomselectionBar(
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

  Widget bottomselectionBar({required selecticons, required selecttext}) {
    return Container(

      margin: EdgeInsets.all(7),
      alignment: Alignment.center,
      height: 100,
      width: 80,
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
