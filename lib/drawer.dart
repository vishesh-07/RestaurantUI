import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/config.dart';

class DrawerScreen extends StatefulWidget {
  const DrawerScreen({Key? key}) : super(key: key);

  @override
  _DrawerScreenState createState() => _DrawerScreenState();
}

class _DrawerScreenState extends State<DrawerScreen> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    return Container(
      color: primaryGreen,
      padding: EdgeInsets.only(top: deviceSize.height * .08),
      child: Column(
        children: [
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: CircleAvatar(
                  backgroundColor: primaryWhite,
                  backgroundImage: AssetImage('asset/icon.png'),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(4.0),
                child: Text(
                  'Vishesh Suryavanshi',
                  style: GoogleFonts.sniglet(fontSize: 21, color: primaryWhite),
                ),
              )
            ],
          ),
          SizedBox(
            height: deviceSize.height * .1,
          ),
          Column(
            children: drawerData(userData.length),
          ),
          // userData.map((e) => Row()).toList(),
        ],
      ),
    );
  }

  List<Widget> drawerData(int count) {
    return List.generate(
        count,
        (index) => Row(
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Icon(
                    userData[index]['icon'],
                    size: 35,
                    color: primaryWhite,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: TextButton(
                      onPressed: () {},
                      style: ButtonStyle(
                        overlayColor:
                            MaterialStateProperty.all(Colors.transparent),
                        // backgroundColor:
                        //     MaterialStateProperty.all(Colors.transparent)
                      ),
                      child: Text(
                        userData[index]['data'],
                        style: GoogleFonts.sniglet(
                            color: primaryWhite, fontSize: 25),
                        // style: gooTextStyle(color: primaryWhite, fontSize: 25),
                      )),
                ),
              ],
            ));
  }
}
