import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:percent_indicator/percent_indicator.dart';

class Level1_1Page extends StatefulWidget {
  @override
  _Level1_1PageState createState() => _Level1_1PageState();
}

class _Level1_1PageState extends State<Level1_1Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/level_1_page_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Stack(
            children: [
              Positioned(
                top: 18.0,
                left: 10.0,
                right: 10,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    Container(
                      height: 24.0,
                      width: 287.0,
                      decoration: BoxDecoration(
                        color: Color(0xFFEBF3FE),
                        borderRadius: BorderRadius.circular(29.0),
                      ),
                      child: LinearPercentIndicator(
                        width: 287.0,
                        lineHeight: 24.0,
                        percent: 0.2,
                        linearStrokeCap: LinearStrokeCap.roundAll,
                        backgroundColor: Colors.white,
                        progressColor: Color(0xFF225094),
                      ),
                    ),
                    IconButton(
                      icon: Icon(
                        CupertinoIcons.mail,
                        size: 32.0,
                        color: Color(0xFFEBF3FE),
                      ),
                      onPressed: () {},
                    ),
                  ],
                ),
              ),
              Positioned(
                child: Container(
                  height: 720.0,
                  width: 560.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/character.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 340.0,
                left: 50.0,
                child: Container(
                  height: 139.0,
                  width: 279.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/images/Vector1.png"),
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 354.0,
                left: 195.0,
                child: Container(
                  alignment: Alignment.center,
                  height: 24.0,
                  width: 83.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Color(0xFF3A83F1),
                  ),
                  child: Text(
                    "Егор Крид",
                    style: GoogleFonts.roboto(
                      color: Colors.white,
                      fontWeight: FontWeight.normal,
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ),
              Positioned(
                top: 660.0,
                right: 10.0,
                left: 10.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                      icon: Icon(
                        CupertinoIcons.arrow_left_circle_fill,
                        size: 36.0,
                        color: Color(0xFFEBF3FE),
                      ),
                      onPressed: () {},
                    ),
                    ImageIcon(
                      AssetImage("assets/images/Union.png"),
                      color: Colors.white,
                      size: 36.0,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
