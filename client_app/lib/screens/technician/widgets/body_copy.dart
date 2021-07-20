import 'package:flutter/material.dart';

import '../../../models/user.dart';
import '../../view.dart';
import '../tech_viewmodel.dart';

class Body extends StatelessWidget {
  final TechViewmodel _techViewmodel = TechViewmodel();
  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: _techViewmodel,
      builder: (context, viewmodel, _) => ListView(
        children: [
          buildTask(
              technicianName: 'Roney',
              id: 'A23',
              report: 0,
              progress: 0,
              type: 0,
              context: context),
          buildTask(
              technicianName: 'Darto',
              id: 'F89',
              report: 0,
              progress: 0,
              type: 0,
              context: context),
          buildTask(
              technicianName: 'Asep',
              id: 'W01',
              report: 0,
              progress: 0,
              type: 0,
              context: context),
          buildTask(
              technicianName: 'Dodit',
              id: 'Q27',
              report: 0,
              progress: 0,
              type: 0,
              context: context),
        ],
      ),
    );
  }

  Container buildTask(
      {String technicianName,
      String id,
      int report,
      int progress,
      int type,
      context}) {
    return Container(
      padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
      child: Card(
          child: Container(
              padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      type == 0 ? Icon(Icons.people) : Container(),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(technicianName),
                          Text(id),
                          SizedBox(height: 5),
                          SizedBox(height: 5)
                        ],
                      ),
                    ],
                  ),

                  //  ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/report');}, child: Text('report')),
                  ElevatedButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/prog');
                      },
                      child: Text('progress')),
                ],
              ))),
    );
  }
}
