import 'package:flutter/material.dart';
import 'package:greeny/models/plants.dart';
//import 'package:google_fonts/google_fonts.dart';

import 'tabc.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 17, vsync: this);
  }

  final titles = [
    'Wildflower',
    'Thistle',
    'Flower',
    'Herb',
    'Mushroom',
    'Weed',
    'Fern',
    'Cattail',
    'Reed',
    'Bamboo',
    'Ivy',
    'Shrub',
    'Moss',
    'Grass',
    'Palm tree',
    'Bush',
    'Corn',
    'Tree',
  ];

  final icons = [
    Icons.directions_bike,
    Icons.directions_boat,
    Icons.directions_bus,
    Icons.directions_car,
    Icons.directions_railway,
    Icons.directions_run,
    Icons.directions_subway,
    Icons.directions_transit,
    Icons.directions_walk
  ];
  final recplants = recPlants;
  final topplants = topPlants;

  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _drawerKey,
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Kanishka Naik'),
              accountEmail: Text('kanishkanaik97@gmail.com'),
              arrowColor: Colors.amber,
              currentAccountPicture: new CircleAvatar(
                backgroundColor: Colors.white,
                child: Text('K', style: TextStyle(fontSize: 30)),
              ),
              otherAccountsPictures: <Widget>[
                new CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Text('S', style: TextStyle(fontSize: 20)),
                ),
              ],
            ),
            new ListTile(
              title: Text('Orders', style: TextStyle(fontSize: 20)),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                //  Navigator.of(context).pop();
                //    Navigator.of(context).push(new MaterialPageRoute(builder :(BuildContext context)=>new NewPage("Page One")) );
              },
            ),
            new ListTile(
              title: Text('Queries', style: TextStyle(fontSize: 20)),
              trailing: new Icon(Icons.arrow_upward),
              onTap: () {
                // Navigator.of(context).pop();
                // Navigator.of(context).push(new MaterialPageRoute(builder :(BuildContext context)=>new NewPage("Page Two")) );
              },
            ),
            new Divider(),
            new ListTile(
              title: Text('Close', style: TextStyle(fontSize: 20)),
              trailing: new Icon(Icons.close),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        backgroundColor: Colors.green,
        iconTheme: IconThemeData(color: Colors.white),
        elevation: 0,
      ),
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height / 4,
            width: double.infinity,
            decoration: BoxDecoration(
                color: Colors.green,
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(36.0),
                    bottomRight: Radius.circular(36.0))),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Greeny',
                        style: TextStyle(fontSize: 45.0, color: Colors.white),
                      ),
                      IconButton(
                          color: Colors.white,
                          icon: Icon(Icons.shopping_cart),
                          onPressed: () {})
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Container(
                    height: 50,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0)),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 10.0, right: 15.0),
                      child: TextField(
                          onChanged: (value) {},
                          decoration: InputDecoration(
                              hintText: "Search",
                              hintStyle: TextStyle(
                                color: Colors.black.withOpacity(0.5),
                              ),
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                              suffixIcon: Icon(Icons.search))),
                    ),
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'People Choice',
                  style: TextStyle(fontSize: 25.0, color: Colors.black),
                ),
                FlatButton(
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(18.0),
                      side: BorderSide(color: Colors.red)),
                  color: Colors.white,
                  textColor: Colors.red,
                  padding: EdgeInsets.all(8.0),
                  onPressed: () {
                    Navigator.of(context).push(new MaterialPageRoute(
                        builder: (BuildContext context) => new TabcPage()));
                  },
                  child: Text(
                    "See All",
                    style: TextStyle(
                      fontSize: 14.0,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.0),
          Padding(
            padding: EdgeInsets.only(left: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Top Picks',
                  style: TextStyle(fontSize: 17.0, color: Colors.black),
                ),
                // FlatButton(
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(18.0),
                //       side: BorderSide(color: Colors.red)),
                //   color: Colors.white,
                //   textColor: Colors.red,
                //   padding: EdgeInsets.all(8.0),
                //   onPressed: () {},
                //   child: Text(
                //     "See All",
                //     style: TextStyle(
                //       fontSize: 14.0,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 5.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.35,

            child: Padding(
              padding: EdgeInsets.only(left: 4.0, right: 15.0),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.60,
                  child: GridView.count(
                      //for grid 3
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      childAspectRatio: 0.58,

                      //for grid 2
                      // crossAxisCount: 2,
                      // crossAxisSpacing: 1,
                      // mainAxisSpacing: 1,
                      // childAspectRatio: 0.67,

                      // crossAxisCount: 2,
                      // crossAxisSpacing: 2,
                      // mainAxisSpacing: 2,
                      // childAspectRatio: 0.76,
                      primary: false,
                      children: <Widget>[
                        ...topplants.map((e) {
                          return buildplantGrid(e);
                        }).toList()
                      ])),
            ), // Padding(
            //   padding: EdgeInsets.only(left: 10.0, right: 15.0),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Container(
            //           height: MediaQuery.of(context).size.height * 0.4,
            //           width: MediaQuery.of(context).size.width * 0.4,
            //           // color: Colors.blue,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(25.0)),
            //           child: ListView(
            //             children: [
            //               Image(
            //                   image: AssetImage(
            //                       'assets/images/wildflowers.jpg')),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [Text('WildFlowers'), Text('Rs100')],
            //               )
            //             ],
            //           )),
            //     ],
            //   ),
            // ),
          ),
          Padding(
            padding: EdgeInsets.only(left: 17.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Recommended',
                  style: TextStyle(fontSize: 20.0, color: Colors.black),
                ),
                // FlatButton(
                //   shape: RoundedRectangleBorder(
                //       borderRadius: BorderRadius.circular(18.0),
                //       side: BorderSide(color: Colors.red)),
                //   color: Colors.white,
                //   textColor: Colors.red,
                //   padding: EdgeInsets.all(8.0),
                //   onPressed: () {},
                //   child: Text(
                //     "See All",
                //     style: TextStyle(
                //       fontSize: 14.0,
                //     ),
                //   ),
                // ),
              ],
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.65,
            child: Padding(
              padding: EdgeInsets.only(left: 4.0, right: 15.0),
              child: Container(
                  height: MediaQuery.of(context).size.height * 0.60,
                  child: GridView.count(
                      //for grid 3
                      crossAxisCount: 3,
                      crossAxisSpacing: 1,
                      mainAxisSpacing: 1,
                      childAspectRatio: 0.58,

                      //for grid 2
                      // crossAxisCount: 2,
                      // crossAxisSpacing: 1,
                      // mainAxisSpacing: 1,
                      // childAspectRatio: 0.67,

                      // crossAxisCount: 2,
                      // crossAxisSpacing: 2,
                      // mainAxisSpacing: 2,
                      // childAspectRatio: 0.76,
                      primary: false,
                      children: <Widget>[
                        ...recplants.map((e) {
                          return buildplantGrid(e);
                        }).toList()
                      ])),
            ), // Padding(
            //   padding: EdgeInsets.only(left: 10.0, right: 15.0),
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Container(
            //           height: MediaQuery.of(context).size.height * 0.4,
            //           width: MediaQuery.of(context).size.width * 0.4,
            //           // color: Colors.blue,
            //           decoration: BoxDecoration(
            //               borderRadius: BorderRadius.circular(25.0)),
            //           child: ListView(
            //             children: [
            //               Image(
            //                   image: AssetImage(
            //                       'assets/images/wildflowers.jpg')),
            //               Row(
            //                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
            //                 children: [Text('WildFlowers'), Text('Rs100')],
            //               )
            //             ],
            //           )),
            //     ],
            //   ),
            // ),
          ),
          Center(
              child: Column(
            children: [],
          ))
        ],
      ),
    );
  }
}

buildplantGrid(Plant plant) {
  return GestureDetector(
      onTap: () {
        // Navigator.of(context).push(MaterialPageRoute(
        //   builder: (context) => plantDetails(selectedplant: plant)
        // ));
      },
      child: Padding(
          padding: EdgeInsets.all(5.0),
          child: Stack(
            children: <Widget>[
              Container(height: 150.0, width: 100.0, color: Colors.transparent),
              Positioned(
                  left: 30.0,
                  top: 65.0,
                  child: Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(boxShadow: [
                        BoxShadow(
                            blurRadius: 7.0,
                            color: Colors.grey.withOpacity(0.75),
                            offset: Offset(5, 25),
                            spreadRadius: 12.0)
                      ]))),
              Positioned(
                  left: 12.0,
                  top: 15.0,
                  child: Container(
                      height: 125.0,
                      width: 90.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(7.0),
                          image: DecorationImage(
                              image: AssetImage(plant.plantPic),
                              fit: BoxFit.cover)))),
              Positioned(
                  left: 28.0,
                  top: 150.0,
                  child: Column(
                    children: <Widget>[
                      Text(plant.plantName, style: TextStyle(fontSize: 12.0)),
                      Row(children: [
                        Icon(
                          Icons.star,
                          color: Colors.green,
                          size: 15.0,
                        ),
                        SizedBox(width: 3.0),
                        Text(plant.rating, style: TextStyle(fontSize: 11.0))
                      ])
                    ],
                  ))
            ],
          )));
}

// Widget plants(){
//   return
// }

// Widget plants() {
//   return
// }
