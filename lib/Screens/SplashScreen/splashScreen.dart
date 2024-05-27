import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../EditPage/editPage.dart';
class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState()
  {
    super.initState();
    Timer(Duration(seconds: 3),(){
      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (context) => Edit_Page(),));
    },);
  }
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle:
        const SystemUiOverlayStyle(statusBarColor: Colors.black),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            height: 450,
            width: 400,
            decoration: BoxDecoration(
                color: Colors.deepPurpleAccent,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(80),
                    bottomLeft: Radius.circular(80))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  height: 200,
                  width: 190,
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('Assets/Image/Logo Image.jpg'),
                          fit: BoxFit.cover),

                      borderRadius: BorderRadius.circular(15)),
                  child: Column(mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text('Resume App ',style: TextStyle(color: Colors.white,fontSize: 30,fontWeight: FontWeight.bold),),
                    ],
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                // AppName(Size: 30.00),
                SizedBox(height: 10,),
                LinearProgressIndicator(
                  minHeight: 3,
                  backgroundColor: Colors.white,
                  color: Colors.deepPurpleAccent.shade200,
                )
              ],
            ),
          ),
          SizedBox(
            height: 60,
          )
        ],
      ),
    );
  }
}