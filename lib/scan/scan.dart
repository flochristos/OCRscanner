import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imitscan/btmnav/btmnav.dart';

class OcrScan extends StatefulWidget {
  @override
  _OcrScanState createState() => _OcrScanState();
}

class _OcrScanState extends State<OcrScan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: HexColor('d52a22'),
        //foregroundColor: HexColor('#d52a22'),
        title: Text(
          'ImitScan - OCR Scan',
          style: TextStyle(
            fontSize: 18,
            decoration: TextDecoration.none,
            fontFamily: 'Poppins-Bold',
            //fontStyle: FontStyle.italic,
            fontWeight: FontWeight.w500,
          ),
        ),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            padding: EdgeInsets.only(
              left: 20,
              right: 20,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///
                ///
                ///
                ///
                ///
                ///this lines of code are for the menubars.
                ///
                ///
                ///
                ///
                ///
                ///
                Container(
                  padding: EdgeInsets.only(top: 50),
                  child: Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                      color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey,
                          offset: Offset(0, 1),
                          blurRadius: 1,
                        ),
                      ],
                    ),
                    child: Column(
                      children: [
                        Container(
                          padding: EdgeInsets.only(top: 20),
                          child: Column(
                            children: [
                              Icon(
                                Icons.photo_camera_outlined,
                                color: HexColor('d52a22'),
                                size: 30,
                              ),
                              Text('Re-Capture',
                                  style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 40),
                          child: Column(
                            children: [
                              Icon(
                                Icons.photo_library_outlined,
                                color: HexColor('d52a22'),
                                size: 30,
                              ),
                              Text('Re-Select', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        Container(
                          padding: EdgeInsets.only(top: 40),
                          child: Column(
                            children: [
                              Icon(
                                Icons.translate_outlined,
                                color: HexColor('d52a22'),
                                size: 30,
                              ),
                              Text('Translate', style: TextStyle(fontSize: 12)),
                            ],
                          ),
                        ),
                        // this button is for back
                        Container(
                          padding: EdgeInsets.only(top: 40, bottom: 20),
                          child: Column(
                            children: [
                              InkWell(
                                onTap: () => Navigator.pop(context),
                                child: Column(
                                  children: [
                                    Icon(
                                      Icons.home_outlined,
                                      size: 30,
                                      color: HexColor('d52a22'),
                                    ),
                                    Text('Home',
                                        style: TextStyle(fontSize: 12)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // this is where the selected images and result column is shown.
                Column(
                  children: [
                    ///
                    ///
                    ///
                    ///
                    ///
                    ///this is the first textfield box
                    ///
                    ///
                    ///
                    ///
                    ///
                    ///
                    Container(
                      width: 200,
                      height: 250,
                      padding: EdgeInsets.only(top: 30),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 1),
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Text('Selected Image'),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Container(
                                    width: 170,
                                    height: 150,
                                    // margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Material(
                                      elevation: 0,
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10),
                                      child: TextField(
                                        cursorHeight: 25,
                                        style: TextStyle(fontSize: 12),
                                        //controller: search,
                                        autocorrect: true,
                                        minLines: 1,
                                        maxLines: 10,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(left: 5),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),

                    ///
                    ///
                    ///
                    ///
                    ///
                    ///this is the second textfield box
                    ///
                    ///
                    ///
                    ///
                    ///
                    ///
                    Container(
                      width: 200,
                      height: 250,
                      padding: EdgeInsets.only(top: 30),
                      child: Container(
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey,
                              offset: Offset(0, 1),
                              blurRadius: 1,
                            ),
                          ],
                        ),
                        child: Column(
                          children: [
                            Container(
                              child: Text('Result'),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Container(
                                    width: 170,
                                    height: 150,
                                    // margin: EdgeInsets.fromLTRB(10, 10, 10, 10),
                                    padding: EdgeInsets.fromLTRB(0, 0, 0, 0),
                                    child: Material(
                                      elevation: 0,
                                      color: Colors.grey[200],
                                      borderRadius: BorderRadius.circular(10),
                                      child: TextField(
                                        style: TextStyle(fontSize: 12),
                                        cursorHeight: 25,
                                        //controller: search,
                                        autocorrect: true,
                                        minLines: 1,
                                        maxLines: 10,
                                        decoration: InputDecoration(
                                          contentPadding:
                                              EdgeInsets.only(left: 5),
                                          enabledBorder: OutlineInputBorder(
                                            borderSide: BorderSide.none,
                                          ),
                                          focusedBorder: OutlineInputBorder(
                                              borderSide: BorderSide.none),
                                        ),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.all(5),
                      child: GestureDetector(
                        child: Text(
                          "Translate This",
                          style: TextStyle(color: Colors.grey[700]),
                        ),
                      ),
                    )
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
