import 'package:flutter1/model/flights_data.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class HotelScreen extends StatefulWidget {
  @override
  _HotelScreenState createState() => _HotelScreenState();
}

class _HotelScreenState extends State<HotelScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:Column(children: <Widget>[
        Stack(
          children: <Widget>[
          Container(
            height:MediaQuery.of(context).size.width ,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(30.0),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  offset: Offset(0.0,2.0),
                  blurRadius: 6.0,
                ),
              ],
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(30.0),
            child: Image.network(
              "https://images.unsplash.com/photo-1551882547-ff40c63fe5fa?ixlib=rb-1.2.1&ixid=MXwxMjA3fDB8MHxzZWFyY2h8Mnx8aG90ZWx8ZW58MHx8MHw%3D&auto=format&fit=crop&w=800&q=60",
              fit: BoxFit.cover,
              ),
            ),
            ),
            Padding(
                padding: EdgeInsets.symmetric(horizontal: 10.0, vertical: 40.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    IconButton(
                      icon: Icon(Icons.arrow_back),
                      iconSize: 30.0,
                      color: Colors.black,
                      onPressed: () => Navigator.pop(context),
                    ),
                    Spacer(),
                    Text(
                      "Hotels", 
                      style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.w800,
                      fontSize: 35),),
                  ],
                ),
            ),
        ],
        ),
        Expanded(
            child: ListView.builder(
              padding: EdgeInsets.only(top: 10.0, bottom: 15.0),
              itemCount: destinies.length,
              itemBuilder: (BuildContext context, int index) {
                Destiny destiny = destinies[index];
                return Stack(
                  children: <Widget>[
                    Container(
                      margin: EdgeInsets.fromLTRB(40.0, 5.0, 20.0, 5.0),
                      height: 170.0,
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(100.0, 20.0, 20.0, 20.0),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Container(
                                  width: 120.0,
                                  child: Text(
                                    destiny.name,
                                    style: TextStyle(
                                      fontSize: 18.0,
                                      fontWeight: FontWeight.w600,
                                    ),
                                    overflow: TextOverflow.ellipsis,
                                    maxLines: 2,
                                  ),
                                ),
                                Column(
                                  children: <Widget>[
                                    Text(
                                      '\$${destiny.price}',
                                      style: TextStyle(
                                        fontSize: 22.0,
                                        fontWeight: FontWeight.w600,
                                      ),
                                    ),
                                    Text(
                                      'per pax',
                                      style: TextStyle(
                                        color: Colors.grey,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                            Text(
                              destiny.date,
                              style: TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(height: 10.0),
                            // Row(
                            //   children: <Widget>[
                            //     Container(
                            //       padding: EdgeInsets.all(5.0),
                            //       width: 70.0,
                            //       decoration: BoxDecoration(
                            //         color: Theme.of(context).accentColor,
                            //         borderRadius: BorderRadius.circular(10.0),
                            //       ),
                            //       alignment: Alignment.center,
                            //       // child: Text(
                            //       //   activity.startTimes[0],
                            //       // ),
                            //     ),
                            //     SizedBox(width: 10.0),
                            //     Container(
                            //       padding: EdgeInsets.all(5.0),
                            //       width: 70.0,
                            //       decoration: BoxDecoration(
                            //         color: Theme.of(context).accentColor,
                            //         borderRadius: BorderRadius.circular(10.0),
                            //       ),
                            //       alignment: Alignment.center,
                            //       // child: Text(
                            //       //   activity.startTimes[1],
                            //       // ),
                            //     ),
                            //   ],
                            // )
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      left: 20.0,
                      top: 15.0,
                      bottom: 15.0,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(20.0),
                        child: CachedNetworkImage( 
                            imageUrl: destiny.imageURL,
                            width: 110.0,
                            fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ],
                );
              },
            ),
          ),

      ],
      ),
    );
  }
}




