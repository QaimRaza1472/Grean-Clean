import 'package:flutter/material.dart';
import '../Theme/colors.dart';

class MyHome extends StatelessWidget {
  const MyHome({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height1=MediaQuery.of(context).size.height;
    var width1=MediaQuery.of(context).size.width;
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Text('Home Screen',
          style: TextStyle(
            color: kWhite,
            fontSize: 18,
          ),
        ),
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
      ),
      body: Container(
        height: height1,
        width: width1,
        child: Align(
          alignment: Alignment.center,
          child: Padding(
            padding:  EdgeInsets.only(top: height1*0.03),
            child: Column(
              children: [
                Text('Please select a cleaning category',
                  style: TextStyle(
                      color: Colors.grey.withOpacity(0.8),
                      fontSize: 17
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
