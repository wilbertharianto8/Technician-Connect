import 'package:client_app/screens/Dashborad/dashborad_screen.dart';
import 'package:flutter/material.dart';

import 'Report_screen.dart';

class ReportBody extends StatefulWidget {
  const ReportBody({state}) : _state = state;

  final ReportTask _state;

  @override
  _ReportBodyState createState() => _ReportBodyState();
}

class _ReportBodyState extends State<ReportBody> {
  String dropdownvalue = 'Installation';
  var items = ['Installation', 'Maintainance', 'Termination'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: 35.0),
          Container(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              'Type: Installation',
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 1.3,
                fontWeight: FontWeight.w800,
              ),
            ),
          )),
          SizedBox(height: 20.0),
          Text(
            'Customer Name: Agus Somat',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.3,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Address of Work: Agung Podomoro',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.3,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 20.0),
          Text(
            'Date/Time of Work: 30/7/2021',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.3,
              fontWeight: FontWeight.w800,
            ),
          ),
          SizedBox(height: 60.0),
          Container(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0),
              child: _buildTextLisTile(
                  label: 'Work Description',
                  value: null,
                  onChanged: (value) {}),
            ),
          ),
          SizedBox(height: 55.0),
          Icon(Icons.upload_file, color: Colors.purple, size: 36.0),
          SizedBox(height: 10.0),
          Text(
            'Click here to',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.3,
              fontWeight: FontWeight.w800,
              color: Colors.purple,
            ),
          ),
          Text(
            'upload image',
            style: TextStyle(
              fontSize: 20.0,
              letterSpacing: 1.3,
              fontWeight: FontWeight.w800,
              color: Colors.purple,
            ),
          ),
          SizedBox(height: 55.0),
          _buildButtons(context),
        ],
      ),
    );
  }

  ListTile _buildTextLisTile({label, value, onChanged}) {
    return ListTile(
      title: TextFormField(
        initialValue: value,
        decoration: InputDecoration(
          labelText: label,
        ),
        onChanged: onChanged,
      ),
    );
  }

  Row _buildButtons(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        ElevatedButton(
          child: Text('submit'),
          onPressed: () => null,
        ),
        SizedBox(width: 10.0),
        ElevatedButton(
          child: Text('Cancel'),
          onPressed: () => onCanclePressed(context),
        ),
      ],
    );
  }

  void onCanclePressed(context) => Navigator.pop(context, null);
}
