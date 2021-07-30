import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imitscan/btmnav/btmnav.dart';

class MakeATranslation extends StatefulWidget {
  @override
  _MakeATranslationState createState() => _MakeATranslationState();
}

class _MakeATranslationState extends State<MakeATranslation> {
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
                      width: MediaQuery.of(context).size.width - 50,
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
                              child: Text('You Text'),
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Column(
                                children: [
                                  Container(
                                    width:
                                        MediaQuery.of(context).size.width - 50,
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
                      width: MediaQuery.of(context).size.width - 50,
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
                                    width:
                                        MediaQuery.of(context).size.width - 50,
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
                    TextButton(
                        style: TextButton.styleFrom(
                          backgroundColor: HexColor('#d52a22'),
                          primary: Colors.white,
                        ),
                        onPressed: () {},
                        child: Text(
                          "  Translate This...  ",
                          style: TextStyle(color: Colors.white),
                        )),
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
