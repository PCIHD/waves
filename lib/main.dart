import 'package:flutter/material.dart';
import 'package:waves/theme.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(

        primarySwatch: Colors.blue,
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

class _MyHomePageState extends State<MyHomePage> {


  @override
  Widget build(BuildContext context) {
    //
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          leading: new IconButton(
              icon: new Icon(
                Icons.arrow_back,
              ),
              color: const Color(0xFFDDDDDD),
              onPressed: () {}),


          title: Text(widget.title),
          actions: <Widget>[
            new IconButton(
                icon: new Icon(
                  Icons.menu,
                ),
                color: const Color(0xFFDDDDDD),
                onPressed: () {}),

          ],
        ),
        body: new Column(
            children: <Widget>[
              //seek bar
              new Expanded(
                child: new Container(

                ),
              ),

              new Container(
                width: double.infinity,
                color: Colors.black,
                height: 125.0,
              ),


              //music title , artist name , controls
              new Container(
                  color: accentColor,
                  child: Padding(
                      padding: const EdgeInsets.only(top: 40.0, bottom: 50.0),
                      child: new Column(
                        children: <Widget>[
                          new RichText(
                            text: new TextSpan(
                                text: '',
                                children: [
                                  new TextSpan(
                                    text: 'Song Title\n',
                                    style: new TextStyle(
                                      color: Colors.white,
                                      fontSize: 14.0,
                                      fontWeight: FontWeight.bold,
                                      letterSpacing: 4.0,
                                      height: 1.5,


                                    ),
                                  ),
                                  new TextSpan(
                                      text: 'Artist Name',
                                      style: new TextStyle(
                                          color: Colors.white.withOpacity(0.75),
                                          fontSize: 12.0,
                                          letterSpacing: 3.0,
                                          height: 1.5
                                      )
                                  ),
                                ]

                            ),
                          ),
//lower row controls

                          Padding(
                            padding: const EdgeInsets.only(top:40.0),
                            child: new Row(
                              children: <Widget>[
                                new Expanded(child: new Container()),
                                new IconButton(icon: new Icon(Icons.skip_previous,    size: 35.0,),
                                    onPressed:(){}),
                                new Expanded(child: new Container()),
                                new RawMaterialButton(
                                    shape:new CircleBorder(),
                                    fillColor:Colors.white,
                                    splashColor: lightAccentColor,
                                    highlightColor: lightAccentColor.withOpacity(0.5),
                                    elevation: 10.0,
                                    highlightElevation: 5.0,
                                    onPressed: (){},
                                child: new Padding(padding:const EdgeInsets.all(8.0),
                                child: new Icon(
                                    Icons.play_arrow,
                                color: accentColor,
                                    size: 35,),),),

                                new Expanded(child: new Container()),

                                new IconButton(icon: new Icon(Icons.skip_next,    size: 35.0,),
                                    onPressed:(){}),
                                new Expanded(child: new Container()),
                              ],
                            ),
                          )
                        ],


                      )

                  )
              )
            ]
        )
    );
  }

}