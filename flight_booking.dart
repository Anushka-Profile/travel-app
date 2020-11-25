import 'package:flutter1/model/activity_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter1/views/confirm.dart';


class FlightScreen extends StatefulWidget {
  final Activity activity;

  FlightScreen({Key key, this.activity}) : super(key: key);

  @override
  _FlightScreenState createState() => _FlightScreenState();
}

class _FlightScreenState extends State<FlightScreen> {
  DateTime pickedDate;
  final TextEditingController _textController = new TextEditingController();
  final TextEditingController _myController = new TextEditingController();
  final TextEditingController _tController = new TextEditingController();
  final TextEditingController _ttController = new TextEditingController();
  String _departure;
  String _destination;
  String _deptTime;
  String _arrivalTime;


  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    pickedDate = DateTime.now();
  }

  Widget _buildDept() {
    _textController.text = '${widget.activity.deptName}';
    return TextFormField(
      controller: _textController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Departure",
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
    _myController.text = '${widget.activity.destName}';
    return TextFormField(
      controller: _myController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Destination",
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

  Widget _buildDeptTime() {
    _tController.text = '${widget.activity.startTimes[0]}';
    return TextFormField(
      controller: _tController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Departure Time",
      ),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Time is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _deptTime = value;
      },
    );
  }

  Widget _buildArrivalTime() {
    _ttController.text = '${widget.activity.startTimes[1]}';
    return TextFormField(
      controller: _ttController,
      decoration: InputDecoration(
        border: OutlineInputBorder(),
        labelText: "Arrival Time",
      ),
      maxLength: 10,
      validator: (String value) {
        if (value.isEmpty) {
          return 'Time is Required';
        }

        return null;
      },
      onSaved: (String value) {
        _arrivalTime = value;
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


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Flight Booking",
        ),
      ),
      body: Container(
        margin: EdgeInsets.all(24),
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              _buildDept(),
              _buildDest(),
              _buildDeptTime(),
              _buildArrivalTime(),
              _buildDate(),
              SizedBox(height: 100),
              RaisedButton(
                child: Text('Book',style: TextStyle(fontSize: 25),),
                onPressed: () {
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
      lastDate:DateTime(DateTime.now().year + 5) ,
    );

    if (date != null) {
      setState(() {
        pickedDate = date;
      });
    }
  }
  
}
