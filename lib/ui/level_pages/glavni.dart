import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:percent_indicator/percent_indicator.dart';

class GlavniPage extends StatefulWidget {
  @override
  _GlavniPageState createState() => _GlavniPageState();
}

class _GlavniPageState extends State<GlavniPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          decoration: BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/level_3_page_bg.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
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
                Container(
                  height: 140.0,
                  width: 320.0,
                  child: GridView.builder(
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 2.7,
                        mainAxisSpacing: 14.0,
                        crossAxisSpacing: 5.0),
                    itemBuilder: (ctx, index) => Container(
                      decoration: BoxDecoration(
                        color: Color(0xFFD8E6FC),
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    itemCount: 4,
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    ImageIcon(
                      AssetImage("assets/images/Union.png"),
                      color: Colors.white,
                      size: 36.0,
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
