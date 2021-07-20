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
      builder: (context, viewmodel, _child) {
        final TechViewmodel _viewmodel = viewmodel;
        return ListView.separated(
            itemCount: _viewmodel.itemCount,
            separatorBuilder: (context, index) => Divider(
                  color: Colors.white,
                ),
            itemBuilder: (context, index) {
              final User _tech = _viewmodel.getTechByIndex(index);
              return buildTask(
                  technicianName: _tech.name,
                  id: _tech.id,
                  type: 0,
                  context: context);
            });
      },
    );
  }

  Container buildTask({String technicianName, int id, int type, context}) {
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
                      Icon(Icons.people),
                      SizedBox(width: 20),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(technicianName),
                          Text(id.toString()),
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
