import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Greeny',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.blue,
        // This makes the visual density adapt to the platform that you run
        // the app on. For desktop platforms, the controls will be smaller and
        // closer together (more dense) than on mobile platforms.
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);
  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 17, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   title: Text(widget.title),
        // ),
        backgroundColor: Colors.white,
        body: ListView(
          children: [
            SizedBox(
              height: 10.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(icon: Icon(Icons.menu), onPressed: () {}),
                Container(
                  height: 45.0,
                  width: 225.0,
                  decoration: BoxDecoration(
                      color: Colors.lightGreen.withOpacity(0.6),
                      borderRadius: BorderRadius.circular(25.0)),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 10.0),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                ),
                IconButton(icon: Icon(Icons.shopping_cart), onPressed: () {})
              ],
            ),
            SizedBox(height: 10.0),
            Padding(
              padding: EdgeInsets.only(left: 15.0),
              child: Text(
                'All Plants',
                style: TextStyle(fontSize: 30.0, color: Colors.black),
              ),
            ),
            Padding(
                padding: EdgeInsets.only(left: 15.0),
                child: TabBar(
                  isScrollable: true,
                  controller: tabController,
                  indicatorColor: Colors.lightGreen,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.black.withOpacity(0.5),
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        'Wildflowers',
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
                        'Flowers',
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
                      text: 'Bush',
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
            Container(
              height: MediaQuery.of(context).size.height * 0.5,
              child: TabBarView(controller: tabController, children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                          height: MediaQuery.of(context).size.height * 0.4,
                          width: MediaQuery.of(context).size.width * 0.4,
                          // color: Colors.blue,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(25.0)),
                          child: ListView(
                            children: [
                              Image(
                                  image: AssetImage(
                                      'assets/images/wildflowers.jpg')),
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [Text('WildFlowers'), Text('Rs100')],
                              )
                            ],
                          )),
                    ],
                  ),
                ),
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
          ],
        ));
  }
}
