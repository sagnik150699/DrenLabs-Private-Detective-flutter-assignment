import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter_app/components/variables.dart';

class Mobile1 extends StatefulWidget {
  @override
  _Mobile1 createState() => new _Mobile1();
}

class _Mobile1 extends State<Mobile1> {
  var city = 'Berlin,Germany';

  Variables variables = new Variables();
  final GlobalKey<ScaffoldState> _scaffoldKey = new GlobalKey<ScaffoldState>();
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    final double categoryHeight = size.height;
    ScrollController controller = ScrollController();
    bool closeTopContainer = false;
    print(size);

    controller.addListener(() {
      setState(() {
        closeTopContainer = controller.offset > 50;
      });
    });

    List<Widget> itemData = [
      AnimatedContainer(
        duration: const Duration(microseconds: 200),
        width: size.width,
        alignment: Alignment.topCenter,
        height: closeTopContainer ? 0 : categoryHeight,
        child: SizedBox(
          height: 900,
          width: 700,
          child: Stack(children: <Widget>[
            Padding(
                padding: const EdgeInsets.all(0),
                child: CarouselSlider(
                    items: Variables().item,
                    options: CarouselOptions(
                      height: 500,
                      aspectRatio: 16 / 9,
                      viewportFraction: 0.911,
                      initialPage: 0,
                      enableInfiniteScroll: true,
                      reverse: false,
                      autoPlay: true,
                      autoPlayInterval: Duration(seconds: 3),
                      autoPlayAnimationDuration: Duration(milliseconds: 800),
                      autoPlayCurve: Curves.easeInOutSine,
                      enlargeCenterPage: true,
                      scrollDirection: Axis.horizontal,
                    ))),
            // Padding(
            //   padding: const EdgeInsets.only(top: 5),
            //   child: ListTile(
            //     title: Text(
            //       "",
            //       style: GoogleFonts.oswald(fontSize: 40),
            //     ),
            //     leading: IconButton(
            //       icon: Icon(
            //         Icons.menu,
            //         size: 40,
            //       ),
            //       onPressed: () {
            //          Scaffold.of(context).openDrawer();
            //       },
            //     ),
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.only(top: 450, left: 30),
              child: Card(
                elevation: 10,
                color: Colors.black,
                child: Text(
                  "Krala Murnau",
                  style: GoogleFonts.oswald(fontSize: 45, color: Colors.white),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 540, left: 125),
              child: Card(
                shadowColor: Colors.black,
                elevation: 0,
                child: Text(
                  "Private Detective",
                  style: GoogleFonts.sedgwickAveDisplay(fontSize: 35),
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 550, left: 70),
              child: Icon(
                Icons.search,
                size: 35,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 135, top: 580),
              child: Container(
                  child: Text("Current Location: $city",
                      style: GoogleFonts.inconsolata(
                          fontSize: 15,
                          textStyle: TextStyle(color: Colors.black45)))),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 625),
              child: ListTile(
                  title: Text(
                "Providing private detective services and private investigation services to businesses ",
                style: GoogleFonts.inconsolata(color: Colors.black38),
              )),
            ),
          ]),
        ),
      ),
      Padding(
        padding: const EdgeInsets.only(right: 20, left: 20),
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          height: 300,
          // width: 5,
          color: Colors.black,
          child: Column(
            children: <Widget>[
              Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(
                      "Get your case " "Solved",
                      textAlign: TextAlign.center ,
                      style:
                          GoogleFonts.oswald(fontSize: 45, color: Colors.white),
                    ),
                  )),
              Expanded( flex: 1,
                  child: FlatButton(
                    onPressed: null,
                    child: ListTile(
                      shape: RoundedRectangleBorder(),
                      title: Card(
                        shape: RoundedRectangleBorder(),
                        child: Text(
                "Hire Professional ",
                 textAlign: TextAlign.center,
                 style:
    GoogleFonts.oswald(fontSize: 25, color: Colors.black, letterSpacing: 3),
              ),
                      ),
                    ),
                  )),
            ],
          ),
        ),
      ),
      Stack(children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(0),
            child: CarouselSlider(
                items: Variables().item2,
                options: CarouselOptions(
                  height: 500,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.911,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInOutSine,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ))),
        // Padding(
        //   padding: const EdgeInsets.only(top: 5),
        //   child: InteractiveViewer(
        //     child: ListTile(
        //       title: Text(
        //         "",
        //         style: GoogleFonts.oswald(fontSize: 40),
        //       ),
        //       leading: IconButton(
        //         icon: Icon(
        //           Icons.menu,
        //           size: 40,
        //         ),
        //         onPressed: () {
        //           // Scaffold.of(context).openDrawer();
        //         },
        //       ),
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(top: 450, left: 30),
          child: Card(
            elevation: 10,
            color: Colors.black,
            child: Text(
              "LifeStyle",
              style: GoogleFonts.oswald(fontSize: 45, color: Colors.white),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(top: 535, left: 150),
          child: CarouselSlider(
            items: variables.item3,
            options: CarouselOptions(
              height: 60,
              aspectRatio: 16 / 9,
              viewportFraction: 0.911,
              initialPage: 0,
              enableInfiniteScroll: true,
              reverse: false,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              autoPlayCurve: Curves.easeInOutSine,
              enlargeCenterPage: true,
              scrollDirection: Axis.horizontal,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 20, top: 625),
          child: ListTile(
              title: Text(
            "Providing private detective services and private investigation services to businesses ",
            style: GoogleFonts.inconsolata(color: Colors.black38),
          )),
        ),
      ]),
      SizedBox(
        height: 40,
      ),
      Stack(children: <Widget>[
        Padding(
            padding: const EdgeInsets.all(0),
            child: CarouselSlider(
                items: Variables().item,
                options: CarouselOptions(
                  height: 500,
                  aspectRatio: 16 / 9,
                  viewportFraction: 0.911,
                  initialPage: 0,
                  enableInfiniteScroll: true,
                  reverse: false,
                  autoPlay: true,
                  autoPlayInterval: Duration(seconds: 3),
                  autoPlayAnimationDuration: Duration(milliseconds: 800),
                  autoPlayCurve: Curves.easeInOutSine,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                ))),
        // Padding(
        //   padding: const EdgeInsets.only(top: 5),
        //   child: ListTile(
        //     title: Text(
        //       "",
        //       style: GoogleFonts.oswald(fontSize: 40),
        //     ),
        //     leading: IconButton(
        //       icon: Icon(
        //         Icons.menu,
        //         size: 40,
        //       ),
        //       onPressed: () {
        //         // Scaffold.of(context).openDrawer();
        //       },
        //     ),
        //   ),
        // ),
        Padding(
          padding: const EdgeInsets.only(top: 450, left: 30),
          child: Card(
            elevation: 10,
            color: Colors.black,
            child: Text(
              "Krala Murnau",
              style: GoogleFonts.oswald(fontSize: 45, color: Colors.white),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 540, left: 125),
          child: Card(
            shadowColor: Colors.black,
            elevation: 0,
            child: Text(
              "Kaffee und Milch",
              style: GoogleFonts.sedgwickAveDisplay(fontSize: 35),
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.only(left: 135, top: 580),
          child: Container(
              child: Text("Current Location: $city",
                  style: GoogleFonts.inconsolata(
                      fontSize: 15,
                      textStyle: TextStyle(color: Colors.black45)))),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 625),
          child: ListTile(
              title: Text(
            "Providing private detective services and private investigation services to businesses ",
            style: GoogleFonts.inconsolata(color: Colors.black38),
          )),
        ),
      ]),
    ];

    return SafeArea(
      child: Scaffold(
        drawer: new Drawer(
          child: ListView(
            // Important: Remove any padding from the ListView.
            padding: EdgeInsets.zero,
            children: <Widget>[
              // DrawerHeader(
              //   child: Text('Drawer Header'),
              //   decoration: BoxDecoration(
              //     color: Colors.blue,
              //   ),
              // ),
              ListTile(
                title: Text('Item 1'),
                onTap: () {
                  // Update the state of the app.
                  Navigator.pop(context);
                },
              ),
              ListTile(
                title: Text('Item 2'),
                onTap: () {
                  Navigator.pop(context);
                  // Update the state of the app.
                  // ...
                },
              ),
            ],
          ),
        ),
        key: _scaffoldKey,
        appBar: AppBar(
          backgroundColor: Colors.black,
          leading: new IconButton(
            color: Colors.white,
            icon: new Icon(
              Icons.menu,
              size: 40,
            ),
            onPressed: () => _scaffoldKey.currentState.openDrawer(),
          ),
        ),
        // floatingActionButton: Padding(
        //
        //   padding: const EdgeInsets.only( bottom: 670),
        //   child: new IconButton(
        //     color: Colors.white,
        //     icon: new Icon( Icons.menu, size: 40,),
        //     onPressed: () => _scaffoldKey.currentState.openDrawer(),
        //   ),
        // ),

        body: ListView.builder(
          controller: controller,
          physics: BouncingScrollPhysics(),
          addAutomaticKeepAlives: false,
          cacheExtent: 100,
          itemCount: itemData.length,
          itemBuilder: (context, index) {
            return itemData[index];
          },
        ),
      ),
    );
    // return
  }
}