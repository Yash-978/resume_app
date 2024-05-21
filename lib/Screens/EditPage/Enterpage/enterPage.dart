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
          height: 120,

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
                  selecttext: 'Edit'),
              bottomselectionBar(
                  selecticons: Icons.edit_note_rounded, selecttext: 'Edit'),
              bottomselectionBar(
                  selecticons: Icons.edit_note_rounded, selecttext: 'Edit'),
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

  Container bottomselectionBar({required selecticons, required selecttext}) {
    return Container(
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
            size: 50,
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
