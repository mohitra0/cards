import 'package:flutter/material.dart';

class Card3 extends StatefulWidget {
  const Card3({Key key}) : super(key: key);

  @override
  _Card3State createState() => _Card3State();
}

class _Card3State extends State<Card3> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 230,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(50),
                ),
                boxShadow: [
                  BoxShadow(
                      color: Colors.grey.withOpacity(0.5),
                      offset: new Offset(-10, 10),
                      blurRadius: 20,
                      spreadRadius: 4),
                ],
                color: Colors.red),
            child: Stack(
              children: [
                Positioned(
                    top: 80,
                    left: 0,
                    child: Container(
                      height: 100,
                      width: 300,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                              bottomRight: Radius.circular(50),
                              topRight: Radius.circular(50))),
                    )),
                Positioned(
                    top: 117,
                    left: 20,
                    child: Text(
                      'Your Library',
                      style: TextStyle(
                          fontSize: 27,
                          color: Colors.red,
                          fontWeight: FontWeight.bold),
                    )),
              ],
            ),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.05,
          ),
          Container(
            height: 230,
            child: Stack(
              children: [
                Positioned(
                    top: 0,
                    left: 20,
                    child: Material(
                      child: Container(
                        height: 180,
                        width: MediaQuery.of(context).size.width * 0.9,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                                color: Colors.grey.withOpacity(0.5),
                                offset: new Offset(-10, 10),
                                blurRadius: 20,
                                spreadRadius: 4),
                          ],
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(0),
                        ),
                      ),
                    )),
                Positioned(
                    top: 00,
                    left: 30,
                    child: Card(
                      elevation: 10,
                      shadowColor: Colors.grey.withOpacity(0.5),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Container(
                        height: 190,
                        width: 150,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            image: DecorationImage(
                              fit: BoxFit.fill,
                              image: AssetImage('assets/icons/css.png'),
                            )),
                      ),
                    )),
                Positioned(
                    top: 45,
                    left: 200,
                    child: Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Big compaines",
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.red,
                                fontWeight: FontWeight.bold),
                          ),
                          Text(
                            "Cbhijeet ahemd",
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.grey,
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 1,
                            color: Colors.red,
                          ),
                          Text(
                            "Yverthing is good in end",
                            style: TextStyle(
                              fontSize: 14,
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      ),
                    )),
              ],
            ),
          ),
          Expanded(
              child: MediaQuery.removePadding(
            context: context,
            child: ListView(
              children: [
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 0),
                  height: 200,
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.only(bottomLeft: Radius.circular(80)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: new Offset(-10, 10),
                              blurRadius: 20,
                              spreadRadius: 4),
                        ]),
                    padding:
                        const EdgeInsets.only(left: 32, top: 50, bottom: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "The Shark",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Your Life Ends here",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  margin: const EdgeInsets.only(bottom: 10, top: 0),
                  height: 200,
                  padding: EdgeInsets.only(left: 20, right: 20, bottom: 20),
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius:
                            BorderRadius.only(topRight: Radius.circular(80)),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              offset: new Offset(-10, 10),
                              blurRadius: 20,
                              spreadRadius: 4),
                        ]),
                    padding:
                        const EdgeInsets.only(left: 32, top: 50, bottom: 50),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Meet Unity",
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white,
                          ),
                        ),
                        SizedBox(
                          height: 2,
                        ),
                        Text(
                          "Your Time Ends here",
                          style: TextStyle(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
