import 'package:cached_network_image/cached_network_image.dart';
import 'package:first_app/database_service.dart';
import 'package:first_app/model/flights_data.dart';
import 'package:flutter/material.dart';
import 'package:first_app/views/confirm.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';

class ConfirmHotel extends StatefulWidget {
  final Destiny destiny;

  ConfirmHotel({Key key, this.destiny}) : super(key: key);
  @override
  _ConfirmHotelState createState() => _ConfirmHotelState();
}

class _ConfirmHotelState extends State<ConfirmHotel> {
  final TextEditingController _textController = new TextEditingController();
  final TextEditingController _myController = new TextEditingController();
  String _departure = '';
  String _destination = '';
  DateTime pickedDate;
  DateTime pickedDate1;

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
    pickedDate1 = DateTime(DateTime.now().day + 1);
  }

  Widget _buildDept() {
    _textController.text = '${widget.destiny.name}';
    return TextFormField(
      controller: _textController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Location",
      ),
      maxLength: 100,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _departure = value;
      },
    );
  }

  Widget _buildDest() {
    _myController.text = '${widget.destiny.price}';
    return TextFormField(
      controller: _myController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Price",
      ),
      maxLength: 100,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Name is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _destination = value;
      },
    );
  }

  Widget _buildDate() {
    return ListTile(
      title: Text(
          "Date: ${pickedDate.year}-${pickedDate.month}-${pickedDate.day}"),
      trailing: Icon(Icons.keyboard_arrow_down),
      onTap: _pickDate,
    );
  }

  Widget _buildDate1() {
    return ListTile(
      title: Text(
          "Date: ${pickedDate1.year}-${pickedDate1.month}-${pickedDate1.day}"),
      trailing: Icon(Icons.keyboard_arrow_down),
      onTap: _pickDate1,
    );
  }

  @override
  Widget build(BuildContext context) {
    _departure = widget.destiny.name;
    _destination = widget.destiny.price;
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Hotel Booking",
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              SizedBox(
                height: 10,
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: CachedNetworkImage(
                    imageUrl: widget.destiny.imageURL,
                    width: 200.0,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              _buildDept(),
              _buildDest(),
              _buildDate(),
              _buildDate1(),
              SizedBox(height: 100),
              RaisedButton(
                child: Text(
                  'Book',
                  style: TextStyle(fontSize: 25),
                ),
                onPressed: () async {
                  // print('${_departure}');
                  // newData
                  await newData(
                      _departure, _destination, pickedDate, pickedDate1);
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Confirmation()),
                  );
                },
                color: Colors.green,
                textColor: Colors.black,
              ),
            ],
          ),
        ),
      ),
    );
  }

  _pickDate() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: pickedDate,
      // firstDate: DateTime(DateTime.now().year - 5),
      firstDate: pickedDate,
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (date != null) {
      setState(() {
        pickedDate = date;
      });
    }
  }

  _pickDate1() async {
    DateTime date = await showDatePicker(
      context: context,
      initialDate: pickedDate1,
      // firstDate: DateTime(DateTime.now().year - 5),
      firstDate: pickedDate1,
      lastDate: DateTime(DateTime.now().year + 5),
    );

    if (date != null) {
      setState(() {
        pickedDate1 = date;
      });
    }
  }

  Future<void> newData(String _departure, String _destination,
      DateTime pickedDate, DateTime pickedDate1) async {
    return await DB().flight.add({
      'departure': _departure,
      'destination': _destination,
      'from_date': pickedDate,
      'to_date': pickedDate1,
    });
  }
}
