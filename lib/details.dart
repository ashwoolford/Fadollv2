import 'package:fadoll/cart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Details extends StatefulWidget {
  @override
  _ItemDetailsState createState() => _ItemDetailsState();
}

class _ItemDetailsState extends State<Details> {
  @override
  Widget build(BuildContext context) {
    Size screenSize = MediaQuery.of(context).size;
    return Scaffold(
      appBar: new AppBar(
        title: new Text("XBox Console", style: new TextStyle(color: Colors.black)),
        backgroundColor: Colors.transparent,
          elevation: 0.0,
          iconTheme: new IconThemeData(color: Color(0xFF18D191))
      ),
      body: new Stack(
        alignment: Alignment.topCenter,
        children: <Widget>[
          new Container(
            height: 300.0,
            decoration: new BoxDecoration(
                image: new DecorationImage(
                    image: new NetworkImage(
                        'https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg'),
                    fit: BoxFit.fitHeight),
                borderRadius: new BorderRadius.only(
                  bottomRight: new Radius.circular(120.0),
                  bottomLeft: new Radius.circular(120.0),
                )),
          ),
          new Container(
            height: 300.0,
            decoration: new BoxDecoration(
                color: Colors.grey.withAlpha(50),
                borderRadius: new BorderRadius.only(
                  bottomRight: new Radius.circular(120.0),
                  bottomLeft: new Radius.circular(120.0),
                )),
          ),
          new SingleChildScrollView(
            child: new Column(
              children: <Widget>[
                new SizedBox(
                  height: 50.0,
                ),
                new Card(
                  child: new Container(
                    width: screenSize.width,
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Text(
                          "Xbox Console",
                          style: new TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w700),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Text(
                          "Higher Graphics Compatibilities",
                          style: new TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w400),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            new Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                new Icon(
                                  Icons.star,
                                  color: Color(0XFF29D091),
                                  size: 20.0,
                                ),
                                new SizedBox(
                                  width: 5.0,
                                ),
                                new Text(
                                  "5.00",
                                  style: new TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                            new Text(
                              "2000 TK",
                              style: new TextStyle(
                                  fontSize: 20.0,
                                  color: Colors.red[500],
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
                new Card(
                  child: new Container(
                    width: screenSize.width,
                    height: 150.0,
                    child: new ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: 5,
                        itemBuilder: (context, index) {
                          return new Stack(
                            alignment: Alignment.center,
                            children: <Widget>[
                              new Container(
                                margin:
                                    new EdgeInsets.only(left: 5.0, right: 5.0),
                                height: 140.0,
                                width: 100.0,
                                child: new Image.network(
                                    'https://www.howtogeek.com/wp-content/uploads/2016/01/steam-and-xbox-controllers.jpg'),
                              ),
                              new Container(
                                margin:
                                    new EdgeInsets.only(left: 5.0, right: 5.0),
                                height: 140.0,
                                width: 100.0,
                                decoration: new BoxDecoration(
                                    color: Colors.grey.withAlpha(50)),
                              ),
                            ],
                          );
                        }),
                  ),
                ),
                new Card(
                  child: new Container(
                    width: screenSize.width,
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Text(
                          "Description",
                          style: new TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w700),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Text(
                          "This is XBox 2016 model which is high performer for any sort of video games!!",
                          style: new TextStyle(
                              fontSize: 14.0, fontWeight: FontWeight.w400),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                      ],
                    ),
                  ),
                ),
                new Card(
                  child: new Container(
                    width: screenSize.width,
                    margin: new EdgeInsets.only(left: 20.0, right: 20.0),
                    child: new Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Text(
                          "Colors",
                          style: new TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w700),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        new SizedBox(
                          height: 50.0,
                          child: new ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: new ChoiceChip(
                                      label: new Text("Color ${index}"),
                                      selected: false),
                                );
                              }),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Text(
                          "Sizes",
                          style: new TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w700),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        new SizedBox(
                          height: 50.0,
                          child: new ListView.builder(
                              scrollDirection: Axis.horizontal,
                              itemCount: 4,
                              itemBuilder: (context, index) {
                                return Padding(
                                  padding: const EdgeInsets.all(4.0),
                                  child: new ChoiceChip(
                                      label: new Text("Size ${index}"),
                                      selected: false),
                                );
                              }),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Text(
                          "Sizes",
                          style: new TextStyle(
                              fontSize: 18.0, fontWeight: FontWeight.w700),
                        ),
                        new SizedBox(
                          height: 10.0,
                        ),
                        new Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            new CircleAvatar(
                              backgroundColor: Color(0XFF29D091),
                              child: new Icon(
                                Icons.remove,
                                color: Colors.white,
                                ),
                            ),
                            new Text("0"),
                            new CircleAvatar(
                              backgroundColor: Color(0XFF29D091),
                              child: new Icon(
                                Icons.add,
                                color: Colors.white,
                              ),
                            ),
                          ],
                        ),
                        new SizedBox(
                          height: 50.0,
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: new Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            backgroundColor: Color(0XFF29D091),
            onPressed: () {
              Navigator.of(context).push(new CupertinoPageRoute(
                  builder: (BuildContext context) => new GirliesCart()));
            },
            child: new Icon(Icons.shopping_cart),
          ),
          new CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: new Text(
              "0",
              style: new TextStyle(color: Colors.white, fontSize: 12.0),
            ),
          )
        ],
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: new BottomAppBar(
        color: Color(0XFF29D091),
        elevation: 0.0,
        shape: new CircularNotchedRectangle(),
        notchMargin: 5.0,
        child: new Container(
          height: 50.0,
          decoration: new BoxDecoration(color: Color(0XFF29D091)),
          child: new Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              new Container(
                width: (screenSize.width - 20) / 2,
                child: new Text(
                  "ADD TO FAVORITES",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
              new Container(
                width: (screenSize.width - 20) / 2,
                child: new Text(
                  "ORDER NOW",
                  textAlign: TextAlign.center,
                  style: new TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w700),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
