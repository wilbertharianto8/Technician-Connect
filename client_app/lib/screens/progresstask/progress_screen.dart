import 'package:flutter/material.dart';

class Prog extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (context) => Prog());

  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () => Future.value(false),
        child: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            leading: IconButton(onPressed: () {Navigator.pop(context,true);}, icon: Icon( Icons.arrow_back)),
          ),
          body: ListView(
            children: [
              buildTask(
                TaskID: '02',
                CustomerName: 'Anton',
                Address: 'Melawai Road',
                PhoneNumber: '01203859486',
                type: 0,
              ),
              buildTask(
                TaskID: '23',
                CustomerName: 'Tika',
                Address: 'Anggrek Road',
                PhoneNumber: '01829233212',
                type: 1,
              ),
              buildTask(
                TaskID: '93',
                CustomerName: 'Bayu',
                Address: 'Hatta Road',
                PhoneNumber: '01028946102',
                type: 2,
              ),
              buildTask(
                TaskID: '75',
                CustomerName: 'Santi',
                Address: 'Pulai Road',
                PhoneNumber: '01303957439',
                type: 0,
              ),
            ],
          ),
          floatingActionButton: FloatingActionButton(
            child: new Text("Todo"),
              onPressed: () => 
                Navigator.pushNamed(context, ''),
          ),
          
        )));
  }

  Container buildTask(
      {String TaskID, String CustomerName, String Address, String PhoneNumber, int type}) {
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
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Task ID: $TaskID"),
                              Text("Task Type: $type"),
                              Text("Customer Name: $CustomerName"),
                              Text("Address: $Address"),
                              Text("PhoneNumber: $PhoneNumber"),
                            ],
                          ),
                        ],
                      ),
                       type == 0
                          ? Text('Do')
                          : type == 1
                              ? Text('Doing')
                              : type == 2
                                  ? Text('Done')
                                      : null,
                    ],
                  ))),
                  
        );
  }
}
