import 'package:client_app/models/task.dart';
import 'package:flutter/material.dart';

import '../../view.dart';
import '../task_viewmodel.dart';

class Body extends StatelessWidget {
  final TaskViewmodel _techViewmodel = TaskViewmodel();
  @override
  Widget build(BuildContext context) {
    return View(
      viewmodel: _techViewmodel,
      builder: (context, viewmodel, _child) {
        final TaskViewmodel _viewmodel = viewmodel;
        return ListView.separated(
            itemCount: _viewmodel.itemCount,
            separatorBuilder: (context, index) => Divider(
                  color: Colors.white,
                ),
            itemBuilder: (context, index) {
              final Task _task = _viewmodel.getTaskByIndex(index);
              print(_task.customerName);
              print(_task.dateCreated);
              print(_task.dateUpdated);
              print(_task.evidanceUrl);
              print(_task.phone);
              return buildTask(
                  customerId: _task.id.toString(),
                  customerName: _task.customerName,
                  status: _task.status,
                  type: _task.serviceType,
                  context: context);
            });
      },
    );
  }

  Container buildTask(
      {String customerName, String customerId, int status, int type, context}) {
    return Container(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
        child: InkWell(
          onTap: () => Navigator.pushNamed(context, '/detail'),
          child: Card(
              child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          type == 0
                              ? Icon(Icons.tv)
                              : type == 1
                                  ? Icon(Icons.tv_off)
                                  : type == 2
                                      ? Icon(Icons.cancel)
                                      : Container(),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(customerName),
                              SizedBox(height: 5),
                              buildStatus(type),
                              SizedBox(height: 5),
                              Text("ID : $customerId")
                            ],
                          ),
                        ],
                      ),
                      status == 0
                          ? ElevatedButton(
                              onPressed: () {
                                Navigator.pushNamed(context, '/tech');
                              },
                              child: Text('Assign'))
                          : status == 1
                              ? Text('Assigned')
                              : status == 2
                                  ? Text('In Progress')
                                  : status == 3
                                      ? Text('Done')
                                      : null,
                    ],
                  ))),
        ));
  }

  Text buildStatus(int type) {
    switch (type) {
      case 0:
        return Text("Type : Instalation");
      case 1:
        return Text("Type : Maintenance");
      case 2:
        return Text("Type : Termination");
    }
    return Text("Type : None");
  }
}
