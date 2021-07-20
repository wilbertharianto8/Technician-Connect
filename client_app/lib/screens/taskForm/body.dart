import 'package:flutter/material.dart';

import 'form_screen.dart';

class FormBody extends StatefulWidget {
  const FormBody({state}) : _state = state;

  final FormTask _state;

  @override
  _FormBodyState createState() => _FormBodyState();
}

class _FormBodyState extends State<FormBody> {
  String dropdownvalue = 'Installation';
  var items = ['Installation', 'Maintainance', 'Termination'];
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Center(
              child: Text(
                'Task Form',
                style: TextStyle(
                  fontSize: 20.0,
                  letterSpacing: 1.3,
                  fontWeight: FontWeight.w800,
                ),
              ),
            ),
          ),
          _buildTextLisTile(
              label: 'Customer Name', value: null, onChanged: (value) {}),
          _buildTextLisTile(
              label: 'Customer Address', value: null, onChanged: (value) {}),
          _buildTextLisTile(
              label: 'Phone Number', value: null, onChanged: (value) {}),
          SizedBox(height: 35.0),
          Center(
            child: Text(
              'Service Type',
              style: TextStyle(
                fontSize: 20.0,
                letterSpacing: 1.3,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          SizedBox(height: 20.0),
          DropdownButton(
            value: dropdownvalue,
            icon: Icon(Icons.keyboard_arrow_down),
            items: items.map((String items) {
              return DropdownMenuItem(value: items, child: Text(items));
            }).toList(),
            onChanged: (String newValue) {
              setState(() {
                dropdownvalue = newValue;
              });
            },
          ),
          SizedBox(height: 20.0),
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
