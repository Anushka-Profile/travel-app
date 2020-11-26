import 'package:flutter/material.dart';
import 'package:flutter1/views/home.dart';
import 'package:flutter1/views/profile.dart';

class Confirmation extends StatefulWidget {
  @override
  _ConfirmationState createState() => _ConfirmationState();
}

class _ConfirmationState extends State<Confirmation> {
  int _currentTab = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        actions: [
          FlatButton.icon(
            icon: Icon(
              Icons.navigate_before,
              color: Colors.black,
            ),
            onPressed: () {
              print('Back press');
            },
            label: Text('GO Back'),
          ),
        ],
      ),
      body: Container(
        height: double.maxFinite,
        width: double.maxFinite,
        color: Colors.white,
        child: Column(children: [
          Text(
            'CONFIRMATION',
            style: TextStyle(fontWeight: FontWeight.bold, fontSize: 30),
          ),
          SizedBox(
            height: 20,
          ),
          Image.network(
              'https://cdn1.vectorstock.com/i/thumb-large/15/05/green-tick-checkmark-icon-vector-22691505.jpg'),
          SizedBox(
            height: 20,
          ),
          Text(
            'Booking Successful',
            style: TextStyle(fontSize: 24),
          ),
          SizedBox(
            height: 30,
          ),
          Text(
            'Have A Safe Trip!',
            style: TextStyle(fontSize: 22),
          ),
        ]),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentTab,
        onTap: (int value) {
          setState(() {
            _currentTab = value;
          });
        if (_currentTab == 0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => Home()
          ),
          );
        }
        if (_currentTab == 2) {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProfileScreen()
          ),
          );
        }
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.circle,
              size: 30.0,
            ),
            title: SizedBox.shrink(),
          ),
          BottomNavigationBarItem(
            icon: CircleAvatar(
              radius: 15.0,
              backgroundImage: NetworkImage('http://i.imgur.com/zL4Krbz.jpg'),
            ),
            title: SizedBox.shrink(),
          )
        ],
      ),
    );
  }
}
