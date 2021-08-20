import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:my_app/config.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:my_app/restaurant.dart';

class HomePage extends StatefulWidget {
  final ZoomDrawerController;
  HomePage(this.ZoomDrawerController);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    final ZoomDrawerController = widget.ZoomDrawerController;
    Size deviceSize = MediaQuery.of(context).size;
    // var myWidget = _myWidget(restaurant.length);
    return Container(
      color: primaryWhite,
      child: Column(
        children: [
          Container(
            child: Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    SizedBox(
                      height: deviceSize.height * .08,
                    ),
                    Container(
                      margin: EdgeInsets.symmetric(
                          horizontal: deviceSize.width * .01),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          IconButton(
                            icon: Icon(Icons.menu),
                            onPressed: () {
                              ZoomDrawerController.toggle();
                            },
                          ),
                          Column(
                            children: [
                              Text('Location',
                                  style: TextStyle(color: Colors.black26)),
                              Row(
                                children: [
                                  Icon(
                                    Icons.location_on,
                                    color: primaryGreen,
                                  ),
                                  RichText(
                                    text: TextSpan(
                                      text: '\tIndore, ',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 20,
                                          color: primaryGreen),
                                      children: [
                                        TextSpan(
                                            text: '\tIndia',
                                            style: TextStyle(
                                                fontWeight: FontWeight.normal,
                                                fontSize: 20,
                                                color: Colors.black54))
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          CircleAvatar(
                            backgroundColor: primaryGreen,
                            backgroundImage: AssetImage('asset/icon.png'),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: deviceSize.height * .02,
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.grey.shade200,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(30),
                          topRight: Radius.circular(30),
                        ),
                        boxShadow: shadowList,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            height: deviceSize.height * .03,
                          ),
                          Container(
                            margin: EdgeInsets.only(
                                left: deviceSize.width * .02,
                                right: deviceSize.width * .02),
                            decoration: BoxDecoration(
                                color: primaryWhite,
                                boxShadow: shadowList,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(20))),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Icon(
                                  Icons.search,
                                  color: primaryGreen,
                                  size: 30,
                                ),
                                Container(
                                    width: deviceSize.width * .7,
                                    child: TextFormField(
                                      decoration: new InputDecoration(
                                          border: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          enabledBorder: InputBorder.none,
                                          errorBorder: InputBorder.none,
                                          disabledBorder: InputBorder.none,
                                          hintText:
                                              "Search for restaurants, dishes..."),
                                    )),
                              ],
                            ),
                          ),
                          SizedBox(
                            // height: deviceSize.height*.02,
                            child: CarouselSlider(
                              items: imgList
                                  .map((item) => Padding(
                                        padding: const EdgeInsets.all(16.0),
                                        child: Center(
                                          child: Container(
                                            decoration: BoxDecoration(
                                                boxShadow: shadowList,
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(10)),
                                                image: DecorationImage(
                                                  image: AssetImage('${item}'),
                                                  fit: BoxFit.fitWidth,
                                                )),
                                            // height: deviceSize.height * .5,
                                          ),
                                        ),
                                      ))
                                  .toList(),
                              options: CarouselOptions(
                                height: deviceSize.height * .3,
                                autoPlay: true,
                                aspectRatio: 16 / 9,
                                enlargeCenterPage: true,
                                autoPlayCurve: Curves.fastOutSlowIn,
                                enableInfiniteScroll: true,
                                autoPlayAnimationDuration:
                                    Duration(milliseconds: 800),
                                viewportFraction: .8,
                              ),
                            ),
                          ),
                          Container(
                            height: deviceSize.height * .2,
                            child: ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: dish.length,
                              itemBuilder: (context, index) {
                                return Container(
                                  child: Column(
                                    // crossAxisAlignment: CrossAxisAlignment.art,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Center(
                                        child: Container(
                                          padding: EdgeInsets.all(16),
                                          margin: EdgeInsets.only(
                                              left: deviceSize.width * .05),
                                          height: deviceSize.height * .1,
                                          width: deviceSize.width * .2,
                                          child: GestureDetector(
                                              onTap: () {},
                                              child: Image.asset(
                                                  dish[index]['path'])),
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(20)),
                                              color: primaryWhite,
                                              boxShadow: shadowList),
                                        ),
                                      ),
                                      Container(
                                          padding: EdgeInsets.all(8),
                                          margin: EdgeInsets.only(
                                              left: deviceSize.width * .05),
                                          child: Text(
                                            dish[index]['name'],
                                            style: TextStyle(
                                                fontWeight: FontWeight.w600,
                                                color: primaryGreen),
                                          )),
                                    ],
                                  ),
                                );
                              },
                            ),
                          ),
                          Column(children: myWidget(restaurant.length))
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> myWidget(int count) {
    return List.generate(
      count,
      (i) => Padding(
        padding: const EdgeInsets.all(20.0),
        child: GestureDetector(
          onTap: () => Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => new RestaurantScreen(
                restaurant[i]['name'],
                restaurant[i]['rating'],
                restaurant[i]['dish'],
                restaurant[i]['loc'],
                restaurant[i]['path'],
                restaurant[i]['type'],
                restaurant[i]['ind'],
              ),
            ),
            
          ),
          child: Container(
            width: MediaQuery.of(context).size.width,
            // height: deviceSize.height * .3,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(8.0),
              color: primaryWhite,
              boxShadow: shadowList,
            ),
            child: Column(
              // crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.0),
                      topRight: Radius.circular(8.0)),
                  child: Image(
                    image: AssetImage(
                      restaurant[i]['path'],
                    ),
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * .25,
                    // width: 200,
                    fit: BoxFit.fitWidth,
                    // height: 70,
                  ),
                ),
                Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(
                          left: 8.0, right: 4.0, top: 4.0, bottom: 2.0),
                      child: Text(
                        restaurant[i]['name'],
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ),
                    Spacer(),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        decoration: BoxDecoration(
                            color: ratingGreen,
                            borderRadius: BorderRadius.all(Radius.circular(5))),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 4.0, right: 8.0, top: 4.0, bottom: 2.0),
                          child: Row(
                            children: [
                              Text(
                                restaurant[i]['rating'],
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
                      left: 8.0, right: 4.0, top: 4.0, bottom: 2.0),
                  child: Align(
                      alignment: Alignment.centerLeft,
                      child: Text(restaurant[i]['dish'],
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: darkGrey))),
                ),
                Padding(
                  padding: const EdgeInsets.only(
                      left: 8.0, right: 4.0, top: 4.0, bottom: 2.0),
                  child: Row(
                    children: [
                      Icon(
                        Icons.location_on,
                        color: primaryGreen,
                      ),
                      Text(
                        restaurant[i]['loc'],
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      Spacer(),
                      Image(
                        image: AssetImage(
                          restaurant[i]['type'],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    ).toList(); // replace * with your rupee or use Icon instead
  }
}
