import 'package:clean_app/Theme/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AvailableCleanerScreen extends StatelessWidget {
  const AvailableCleanerScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var height1=MediaQuery.of(context).size.height;
    var width1=MediaQuery.of(context).size.width;
    return Scaffold(

   /*     appBar: AppBar(
          elevation: 0,
        centerTitle: true,
        title: const Text('Available Cleaner',
        style: TextStyle(
        color: kWhite,
        fontSize: 18,
    ),
    ),
        automaticallyImplyLeading: false,
        backgroundColor: kPrimaryColor,
          leading:Container(
            height: 5,
            width: 5,
            decoration: BoxDecoration(
              color: kWhite,
              shape: BoxShape.circle,
            ),
          ),
        ),
*/
      backgroundColor: kPrimaryColor,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(8.0,20,8,8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  height: 30,
                  width: 30,
                  decoration: const BoxDecoration(
                    color: kWhite,
                    shape: BoxShape.circle,
                  ),
                  child: Center(
                    child: IconButton(
                        onPressed: (){},
                        icon: const Icon(
                          Icons.arrow_back,
                        color: kPrimaryColor,
                          size: 16,
                        ),
                    ),
                  ),
                ),
                const Text('Available Cleaner',
                  style: TextStyle(
                    color: kWhite,
                    fontSize: 18,
                  ),
                ),
                IconButton(
                  onPressed: (){},
                  icon: const Icon(
                    Icons.home,
                    color: kWhite,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: height1*0.02,),
          Container(
            height: height1,
            width: width1,
            padding: EdgeInsets.fromLTRB(12,15,12,15),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
               topLeft: Radius.circular(16),
               topRight:  Radius.circular(16),
              ),
              color: Colors.white,
            ),
            child: ListView.builder(
                itemCount: 1,
                itemBuilder: (context,index){
                  return Padding(
                    padding: const EdgeInsets.only(top: 0),
                    child: Container(
                      height: 166,
                      width: width1*0.7,
                      decoration:BoxDecoration(
                        color: kWhite,
                        borderRadius: BorderRadius.circular(9),
                        border: Border.all(
                          color: Colors.black,
                          width: 1,
                        ),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.5),
                            spreadRadius: 2,
                            blurRadius: 5,
                            offset: const Offset(0,0),
                          )
                        ]
                      ),
                      child:Row(
                        children: [
                          Container(
                            //height: 166
                            //padding: EdgeInsets.fromLTRB(0, 12, 12, 5),
                            width: width1*0.32,
                            decoration: BoxDecoration(
                              border: Border(
                                right: BorderSide(
                                    width: 1.0,
                                    color:kGrey.withOpacity(0.7),
                                ),
                              ),
                            ),
                            child: Align(
                              alignment: Alignment.topCenter,
                              child: Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Column(
                                  children: [
                                    Container(
                                      height: 76,
                                      width: 76,
                                      decoration: const BoxDecoration(
                                        color: Colors.grey,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Text('4.8'),
                                        Icon(Icons.star,
                                        color: Colors.deepOrangeAccent,
                                          size: 16,
                                        ),
                                      ],
                                    ),
                                    const SizedBox(height: 5,),
                                    Row(
                                      mainAxisAlignment: MainAxisAlignment.center,
                                      children: const [
                                        Icon(Icons.location_on_rounded,
                                          size: 14,
                                        ),
                                        Text('3.3 Mi'),
                                      ],
                                    ),
                                    const SizedBox(height: 7,),
                                    Container(
                                      width: 100,
                                      color: Colors.yellow,
                                      child: const Text('English/Spanish',
                                      style: TextStyle(
                                        color: kBlack,
                                        fontSize: 12
                                      ),
                                      ),
                                    ),







                                  ],
                                ),
                              ),
                            ),
                          ),

                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children:[
                              Text('Mayra Q.',
                              style: TextStyle(
                                color: Colors.grey
                              ),
                              ),


                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 30,
                                    color:kPrimaryColor,
                                    child: Row(
                                      children: const [
                                      Icon(Icons.chat_bubble),
                                      Text('Chat'),
                                      ],
                                    ),
                                  ),
                                ),
                                Expanded(
                                  child: Container(
                                    height: 30,
                                    color:Colors.blue,
                                    child: Row(
                                      children: const [
                                        Icon(Icons.chat_bubble),
                                        Text('Profile'),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),





                            ],
                          ),
                        ],
                      ) ,
                    ),
                  );
                }
                ),
          ),
        ],
      ),
    );
  }
}
