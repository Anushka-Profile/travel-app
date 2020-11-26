import 'package:flutter/material.dart';
import 'package:first_app/views/confirm.dart';

class ConfirmHotel extends StatefulWidget {
  @override
  _ConfirmHotelState createState() => _ConfirmHotelState();
}

class _ConfirmHotelState extends State<ConfirmHotel> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hotel Booking",
        ),
      ),
      // appBar: AppBar(
      //   backgroundColor: Colors.white,
      //   elevation: 0,
      //   title: Text(
      //     'Hotels',
      //     style: TextStyle(color: Colors.black),
      //   ),

      //   leading: FlatButton.icon(
      //     icon: Icon(
      //       Icons.navigate_before,
      //       color: Colors.black,
      //     ),
      //     onPressed: () {
      //       print('Back press');
      //     },
      //     label: Text('GO Back'),
      //   ),
      // ),
      body: SingleChildScrollView(
        child: Container(
          height: double.maxFinite,
          color: Colors.white,
          child: Column(
            children: [
              // Text('BOOKINGS'),
              SizedBox(
                height: 15,
              ),
              Text(
                'The Leela Palace',
                style: TextStyle(
                    fontWeight: FontWeight.normal,
                    fontSize: 20,
                    color: Colors.blueAccent),
              ),
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Image.network(
                    'https://www.micato.com/wp-content/uploads/2018/09/leela-palace.jpg'),
              ),
              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(horizontal: 20.0),
                  child: Column(
                    children: [
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[20],
                            filled: true,
                            border: InputBorder.none,
                            hintText: 'Country/State'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[20],
                            filled: true,
                            border: InputBorder.none,
                            hintText: 'Price'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[20],
                            filled: true,
                            border: InputBorder.none,
                            hintText: 'From Date'),
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      TextField(
                        decoration: InputDecoration(
                            fillColor: Colors.grey[20],
                            filled: true,
                            border: InputBorder.none,
                            hintText: 'To Date'),
                      ),
                    ],
                  ),
                ),
              ),
              // Padding(
              //   padding: const EdgeInsets.all(60),
              //   child: Container(
              //     child: TextField(
              //       decoration: InputDecoration(
              //           border: new OutlineInputBorder(
              //               borderRadius: const BorderRadius.all(
              //                 const Radius.circular(10.0),
              //               ),
              //             ),
              //           fillColor: Colors.purple[100],
              //           filled: true,

              //           hintText: 'Total'),
              //     ),
              //   ),
              // ),
              RaisedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Confirmation()),
                  );
                },
                child: Text(
                  'Book',
                  style: TextStyle(fontSize: 25),
                ),
                color: Colors.green,
                textColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  // _pickDate() async {
  //   DateTime date = await showDatePicker(
  //     context: context,
  //     initialDate: pickedDate,
  //     // firstDate: DateTime(DateTime.now().year - 5),
  //     firstDate: pickedDate,
  //     lastDate:DateTime(DateTime.now().year + 5) ,
  //   );

  //   if (date != null) {
  //     setState(() {
  //       pickedDate = date;
  //     });
  //   }
  // }

}
