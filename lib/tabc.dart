import 'package:flutter/material.dart';
import 'package:greeny/models/plants.dart';

class TabcPage extends StatefulWidget {
  @override
  _TabcPageState createState() => _TabcPageState();
}

class _TabcPageState extends State<TabcPage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 17, vsync: this);
  }

  final recplants = recPlants;
  final topplants = topPlants;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: ListView(children: <Widget>[
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0, right: 15.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Greenies',
                  style: TextStyle(fontSize: 45.0, color: Colors.green),
                ),
                Icon(
                  Icons.shopping_cart,
                  color: Colors.green,
                )
              ],
            ),
          ),
          Padding(
              padding: EdgeInsets.only(left: 10.0, right: 10.0),
              child: TabBar(
                isScrollable: true,
                controller: tabController,
                indicatorColor: Colors.lightGreen,
                labelColor: Colors.black,
                unselectedLabelColor: Colors.black.withOpacity(0.5),
                indicatorWeight: 4.0,
                tabs: <Widget>[
                  Tab(
                    child: Text(
                      'Flower',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Wildflower',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Thistle',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Herb',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Mushroom',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Weed',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Fern',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Cattail',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Reed',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Bamboo',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Shrub',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Moss',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Grass',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Palm Tree',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Bush',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Corn',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                  Tab(
                    child: Text(
                      'Tree',
                      style: TextStyle(fontSize: 18.0),
                    ),
                  ),
                ],
              )),
          SizedBox(
            height: 10.0,
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height,
            child: TabBarView(controller: tabController, children: <Widget>[
              Padding(
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
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
              Text('hi'),
            ]),
          )
        ]));
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
                  child: Hero(
                      tag: plant.plantPic,
                      child: Container(
                          height: 125.0,
                          width: 90.0,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(7.0),
                              image: DecorationImage(
                                  image: AssetImage(plant.plantPic),
                                  fit: BoxFit.cover))))),
              Positioned(
                  left: 28.0,
                  top: 150.0,
                  child: Column(
                    children: <Widget>[
                      Text(plant.plantName, style: TextStyle(fontSize: 12.0)),
                      Row(children: [
                        Icon(
                          Icons.star,
                          color: Colors.grey.withOpacity(0.5),
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
