import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/config.dart';

class RestaurantScreen extends StatefulWidget {
  String loc, name, rating, dish, path, type, index;
  RestaurantScreen(this.name, this.rating, this.dish, this.loc, this.path,
      this.type, this.index);
  @override
  _RestaurantScreenState createState() => _RestaurantScreenState();
}

class _RestaurantScreenState extends State<RestaurantScreen> {
  @override
  Widget build(BuildContext context) {
    Size deviceSize = MediaQuery.of(context).size;
    var dishList = (restaurant[int.parse(widget.index)]['dish']).split(", ");
    return Scaffold(
      body: Column(
        children: [
          Container(
              color: primaryGreen,
              height: deviceSize.height * .5,
              child: Container(
                margin: EdgeInsets.only(top: deviceSize.height * .08),
                child: Image(
                  image: AssetImage(widget.path),
                  // height: deviceSize.height*.48,
                  fit: BoxFit.fitHeight,
                  width: deviceSize.width,
                ),
              )),
          Expanded(
            child: Container(
              color: primaryWhite,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        margin: EdgeInsets.symmetric(
                            horizontal: deviceSize.width * .05),
                        decoration: BoxDecoration(
                          color: primaryWhite,
                          boxShadow: shadowList,
                          borderRadius: BorderRadius.all(
                            Radius.circular(20),
                          ),
                        ),
                        height: deviceSize.height * .13,
                        child: Column(children: [
                          Row(
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(
                                    left: 8.0,
                                    right: 4.0,
                                    top: 4.0,
                                    bottom: 2.0),
                                child: Text(
                                  widget.name,
                                  style: TextStyle(
                                      fontSize: 20,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              Spacer(),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: ratingGreen,
                                      borderRadius:
                                          BorderRadius.all(Radius.circular(5))),
                                  child: Padding(
                                    padding: const EdgeInsets.only(
                                        left: 4.0,
                                        right: 8.0,
                                        top: 4.0,
                                        bottom: 2.0),
                                    child: Row(
                                      children: [
                                        Text(
                                          widget.rating,
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              color: primaryWhite),
                                        ),
                                        Icon(
                                          Icons.star,
                                          color: primaryWhite,
                                          // size: 15,
                                          // size: 30,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.only(
                                left: 8.0, right: 4.0, top: 8.0, bottom: 2.0),
                            child: Row(
                              children: [
                                Icon(
                                  Icons.location_on,
                                  color: primaryGreen,
                                ),
                                Text(
                                  widget.loc,
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: darkGrey),
                                ),
                                Spacer(),
                                Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: Image(
                                    image: AssetImage(
                                      widget.type,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ]),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 14),
                      child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Dishes',
                            style: GoogleFonts.sniglet(
                              color: primaryGreen,
                              fontSize: 30,
                            ),
                          )),
                    ),
                    ListView.builder(
                        shrinkWrap: true,
                        physics: NeverScrollableScrollPhysics(),
                        scrollDirection: Axis.vertical,
                        padding: EdgeInsets.zero,
                        itemCount: dishList.length,
                        itemBuilder: (context, index) {
                          return ListTile(
                            visualDensity:
                                VisualDensity(horizontal: 0, vertical: -4),
                            title: Align(
                              alignment: Alignment.centerLeft,
                              child: Chip(
                                backgroundColor: primaryGreen,
                                shadowColor: primaryGreen,
                                label: Text(
                                  dishList[index],
                                  style: GoogleFonts.khand(
                                    color: primaryWhite,
                                    fontSize: 20,
                                  ),
                                ),
                              ),
                            ),
                          );
                        }),
                    Row(
                      children: [
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                height: deviceSize.height*.1,
                                decoration: BoxDecoration(
                                    color: primaryGreen,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Icon(
                                  Icons.favorite_border_sharp,
                                  color: primaryWhite,
                                  size: 40,
                                ),
                              ),
                            ),
                          ),
                        ),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: GestureDetector(
                              onTap: (){},
                              child: Container(
                                 height: deviceSize.height*.1,
                                decoration: BoxDecoration(
                                    color: primaryGreen,
                                    borderRadius: BorderRadius.circular(10)),
                                child: Center(child: Text('Buy Now',style: GoogleFonts.sniglet(color: primaryWhite,fontSize: 25,),)),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
          // Stack(
          //   children: [
          //     Align(
          //         alignment: Alignment.center,
          //         child: Container(
          //           color: Colors.pink,
          //           height: 200,
          //           width: 200,
          //         ))
          //   ],
          // ),
        ],
      ),
    );
  }
}
