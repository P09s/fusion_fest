import 'package:flutter/material.dart';

class Analytics extends StatelessWidget {
  const Analytics({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var w = MediaQuery.of(context).size.width;
    var h = MediaQuery.of(context).size.height;
    return Scaffold(
        appBar: AppBar(
          title: Text('Event Analytics'),
        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 20,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.only(right: 20),
                child: Row(
                  children: [
                    Card(
                      child: Container(
                        height: 250,
                        width: 300,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Top Events',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Joined',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 40,
                                  color: Colors.red,
                                ),
                                Text('Name'),
                                Text('People Joined :'),
                                Text('205')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 40,
                                  color: Colors.green,
                                ),
                                Text('Name'),
                                Text('People Joined :'),
                                Text('202')
                              ],
                            ),
                          ],
                        ),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(20),
                    ),
                    Card(
                      child: Container(
                        height: 250,
                        width: 300,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Top Events',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Created',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 40,
                                  color: Colors.red,
                                ),
                                Text('Name'),
                                Text('People Joined :'),
                                Text('210')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 40,
                                  color: Colors.green,
                                ),
                                Text('Name'),
                                Text('People Joined :'),
                                Text('21')
                              ],
                            ),
                          ],
                        ),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(20),
                    ),
                    Card(
                      child: Container(
                        height: 250,
                        width: 300,
                        padding: EdgeInsets.all(20),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Top Events',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 25),
                                )
                              ],
                            ),
                            Row(
                              children: [
                                Text(
                                  'Others',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      fontSize: 20),
                                )
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 40,
                                  color: Colors.red,
                                ),
                                Text('Name'),
                                Text('People Joined :'),
                                Text('21')
                              ],
                            ),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Container(
                                  height: 20,
                                  width: 40,
                                  color: Colors.green,
                                ),
                                Text('Name'),
                                Text('People Joined :'),
                                Text('21')
                              ],
                            ),
                          ],
                        ),
                      ),
                      elevation: 5,
                      margin: EdgeInsets.all(20),
                    ),
                  ],
                ),
              ),
              Card(
                child: Container(
                    width: w / 0.8,
                    height: 250,
                    padding: EdgeInsets.all(20),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Reviews',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold, fontSize: 25),
                            )
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 20,
                              width: 40,
                              color: Colors.pink,
                            ),
                            Text('Name'),
                            Text('Reviews '),
                            Text('75')
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 20,
                              width: 40,
                              color: Colors.greenAccent,
                            ),
                            Text('Name'),
                            Text('Reviews '),
                            Text('65')
                          ],
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 20,
                              width: 40,
                              color: Colors.deepPurple,
                            ),
                            Text('Name'),
                            Text('Reviews '),
                            Text('58')
                          ],
                        ),
                      ],
                    )),
                elevation: 5,
                margin: EdgeInsets.all(20),
              ),
              Card(
                child: Container(
                  width: w / 0.8,
                  padding: EdgeInsets.all(20),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Real Time Attendes',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: [
                          Text(
                            '45',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 25),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('People'),
                          Text(
                            'Live',
                            style: TextStyle(
                                fontWeight: FontWeight.w600, fontSize: 20),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Divider(
                        thickness: 2,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 40,
                            color: Colors.amberAccent,
                          ),
                          Text('Name'),
                          Text('People Joined :'),
                          Text('20')
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 40,
                            color: Colors.grey,
                          ),
                          Text('Name'),
                          Text('People Joined :'),
                          Text('19')
                        ],
                      ),
                      SizedBox(
                        height: 20,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            height: 20,
                            width: 40,
                            color: Colors.blue,
                          ),
                          Text('Name'),
                          Text('People Joined :'),
                          Text('6')
                        ],
                      ),
                    ],
                  ),
                ),
                elevation: 5,
                margin: EdgeInsets.all(20),
              ),
            ],
          ),
        ));
  }
}
