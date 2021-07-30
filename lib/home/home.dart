import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';
import 'package:imitscan/btmnav/btmnav.dart';
import 'package:imitscan/scan/scan.dart';
import 'package:flutter/cupertino.dart';
import 'package:imitscan/translate/translate.dart';
//import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:tesseract_ocr/tesseract_ocr.dart';
import 'package:image_picker/image_picker.dart';
//import 'dart:io';
//import 'dart:async';
//import 'package:path_provider/path_provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
 // bool _scanning = false;
  dynamic _extractText = '';
  //int _scanTime = 0;
 // File _image;
  final picker = ImagePicker();
  /*Future _getImage() async {
    var pickedImage = await picker.getImage(source: ImageSource.gallery);
    setState(() {
      if (pickedImage != null) {
        _image = File(pickedImage.path);
      }
    });
    var watch = Stopwatch()..start();
    _extractText = await TesseractOcr.extractText(pickedImage.path);
    _scanTime = watch.elapsedMilliseconds;

    _scanning = false;
    setState(() {});
  }*/

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.0,
        backgroundColor: HexColor('#d52a22'),
        foregroundColor: HexColor('#ed2b58'),
        elevation: 0,
      ),
      body: ListView(
        children: [
          Container(
            color: Colors.grey[50],
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.all(50),
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: [HexColor('#d52a22'), HexColor('#ed2b58')],
                    ),
                  ),
                  width: MediaQuery.of(context).size.width,
                  child: Container(
                    padding: EdgeInsets.only(top: 20),
                    child: Image.asset(
                      'images/icon.png',
                      width: 150,
                      height: 100,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    "Welcome Boss!",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 22,
                      decoration: TextDecoration.none,
                      fontFamily: 'Poppins-Thin',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: 30,
                  ),
                  child: Text(
                    _extractText.toString(),
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 22,
                      decoration: TextDecoration.none,
                      fontFamily: 'Poppins-Thin',
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    bottom: 20,
                  ),
                  child: Text(
                    "What would you like to do today?",
                    style: TextStyle(
                      color: Colors.grey[700],
                      fontSize: 10,
                      decoration: TextDecoration.none,
                      fontFamily: 'Poppins-Thin',
                      //fontStyle: FontStyle.italic,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ),
                Container(
                  margin: EdgeInsets.all(20),
                  width: MediaQuery.of(context).size.width,
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
                        padding: EdgeInsets.only(top: 20, bottom: 10),
                        child: Text(
                          'Select an Operation',
                          style: TextStyle(
                            color: Colors.grey[700],
                            fontSize: 12,
                            decoration: TextDecoration.none,
                            fontFamily: 'Poppins-Thin',
                            //fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      //This is for selecting from the Camera
                      GestureDetector(
                        onTap: () => Navigator.push(
                            context,
                            new MaterialPageRoute(
                                builder: (context) => OcrScan())),
                        child: Container(
                          padding: EdgeInsets.all(7),
                          margin:
                              EdgeInsets.only(left: 30, right: 30, bottom: 10),
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
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  'Take a Picture',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Poppins-Thin',
                                    //fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.photo_camera_outlined,
                                  color: HexColor('#d52a22'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),

                      //This is for selecting from the gallery
                      Container(
                        padding: EdgeInsets.all(7),
                        margin:
                            EdgeInsets.only(left: 30, right: 30, bottom: 10),
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
                        child: InkWell(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  'Select an Image',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Poppins-Thin',
                                    //fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.photo_library_outlined,
                                  color: HexColor('#d52a22'),
                                ),
                              )
                            ],
                          ),
                          onTap: () async {
                            try {
                              var pickedImage = await picker.getImage(
                                  source: ImageSource.gallery);

                              if (pickedImage != null) {
                               // _image = File(pickedImage.path);
                              //  var watch = Stopwatch()..start();
                                _extractText = await TesseractOcr.extractText(
                                    pickedImage.path);
                                //_scanTime = watch.elapsedMilliseconds;
                              } else {
                                print('dsfgksjgbklsjgbaskljb');
                              }
                            } catch (e) {
                              print("Failed to load file because of $e");
                              return _extractText;
                            }
                          },
                        ),
                        // It doesn't spin, because scanning hangs thread for now
                      ),
                      //This is to redirect to translation page
                      Container(
                        padding: EdgeInsets.all(7),
                        margin:
                            EdgeInsets.only(left: 30, right: 30, bottom: 20),
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
                        child: InkWell(
                          onTap: () => Navigator.push(
                              context,
                              new MaterialPageRoute(
                                  builder: (context) => MakeATranslation())),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Container(
                                padding: EdgeInsets.all(5),
                                child: Text(
                                  'Make a Translation',
                                  style: TextStyle(
                                    color: Colors.grey[700],
                                    fontSize: 14,
                                    decoration: TextDecoration.none,
                                    fontFamily: 'Poppins-Thin',
                                    //fontStyle: FontStyle.italic,
                                    fontWeight: FontWeight.w500,
                                  ),
                                ),
                              ),
                              Container(
                                child: Icon(
                                  Icons.translate_outlined,
                                  color: HexColor('#d52a22'),
                                ),
                              )
                            ],
                          ),
                        ),
                      ),
                      //How it works
                      Container(
                        height: 100,
                        //decoration: BoxDecoration(
                        //   image: DecorationImage(
                        //  image: FileImage(_image),
                        // )),
                        child: Text(
                          "ghdfj hdfuj hujhujhd fdghfhfhhg",
                          style: TextStyle(
                            color: HexColor('#d52a22'),
                            fontSize: 10,
                            decoration: TextDecoration.none,
                            fontFamily: 'Poppins-Thin',
                            //fontStyle: FontStyle.italic,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                      ),
                      /*_scanning
                          ? SpinKitCircle(
                              color: Colors.black,
                            )
                          : Icon(Icons.done), */
                      //free space for ads later
                      SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: BottomNav(),
    );
  }
}
