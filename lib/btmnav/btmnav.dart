import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';

class BottomNav extends StatefulWidget {
  @override
  _BottomNavState createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      decoration: BoxDecoration(
        color: Colors.grey[300],
        boxShadow: [
          BoxShadow(
            color: Colors.grey,
            offset: Offset(0, 1),
            blurRadius: 1,
          ),
        ],
      ),
      child: Container(
        height: 40,
        child: Row(
          children: [
            Expanded(
              child: Container(
                // ignore: deprecated_member_use
                child: Column(
                  children: [
                    Text(
                      'WITH LOVE',
                      style: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 10,
                        decoration: TextDecoration.none,
                        fontFamily: 'Poppins-Thin',
                        //fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    Text(
                      'ImitScan',
                      style: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 10,
                        decoration: TextDecoration.none,
                        fontFamily: 'Poppins-Bold',
                        //fontStyle: FontStyle.italic,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
