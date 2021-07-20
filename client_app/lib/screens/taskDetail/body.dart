import 'package:flutter/material.dart';

import 'detail_screen.dart';

class DetailBody extends StatefulWidget {
  const DetailBody({state}) : _state = state;

  final DetailTask _state;

  @override
  _DetailBodyState createState() => _DetailBodyState();
}

class _DetailBodyState extends State<DetailBody> {
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
          _buildTextLisTile(label: 'Customer Name', value: 'Agung Podomoro'),
          _buildTextLisTile(
              label: 'Customer Address', value: 'Agung Podomoro University'),
          _buildTextLisTile(label: 'Phone Number', value: '+601123984731'),
          _buildTextLisTile(label: 'Services Type', value: 'Installation'),
          SizedBox(height: 35.0),
          Center(),
          SizedBox(height: 20.0),
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
          child: Text('Update Task'),
          onPressed: () => null,
        ),
        SizedBox(width: 10.0),
        ElevatedButton(
          child: Text('Delete Task'),
          onPressed: () => null,
        ),
      ],
    );
  }
}
