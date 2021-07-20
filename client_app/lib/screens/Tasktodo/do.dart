import 'package:flutter/material.dart';

class Todo extends StatelessWidget {
  static Route route() => MaterialPageRoute(builder: (context) => Todo());

  Widget build(BuildContext context) {
    return WillPopScope(
      
        onWillPop: () => Future.value(false),
        child: SafeArea(
            child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
                onPressed: () {
                  Navigator.pop(context, true);
                },
                icon: Icon(Icons.arrow_back)),
            title: Text(
              'Task To Do',
            ),
            centerTitle: true,
          ),
          body: ListView(
            children: [
              buildTask(
                  customerId: '1',
                  customerName: 'Pak Ali',
                  address: 'hang jebat',
                  phone: '011310',
                  status: 1,
                  type: 0,
                  context: context),
              buildTask(
                  customerId: '2',
                  customerName: 'Pak Surya',
                  address: 'timor timur',
                  phone: '011032',
                  status: 1,
                  type: 1,
                  context: context),
              buildTask(
                  customerId: '3',
                  customerName: 'Danish',
                  address: 'trikora',
                  phone: '011203',
                  status: 1,
                  type: 2,
                  context: context),
              buildTask(
                  customerId: '4',
                  customerName: 'Surya',
                  address: 'sudirman',
                  phone: '011906',
                  status: 1,
                  type: 0,
                  context: context),
            ],
            
          ),
          
          floatingActionButton: Row(
            children: [
              FloatingActionButton(
                
                onPressed: () => Navigator.pushNamed(context, '/Todo'),
                child: Icon(Icons.build_outlined),
                tooltip: 'Todo',
                heroTag: null,
              ),
              FloatingActionButton(
                
                onPressed: () => Navigator.pushNamed(context, '/Edit'),
                child: Icon(Icons.schedule_sharp),
                tooltip: 'Doing',
                heroTag: null,
              ),
              FloatingActionButton(
                
                onPressed: () => Navigator.pushNamed(context, '/Done'),
                child: Icon(Icons.cloud_done),
                tooltip: 'Done',
                heroTag: null,
              ),
              
              ],
       
          ),
          floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
        )));
  }

  Container buildTask(
      {String customerName, String customerId, String address, String phone, int status, int type, context}) {
    return Container(
        padding: EdgeInsets.fromLTRB(5, 5, 5, 0),
        child: InkWell(
         
          child: Card(
              child: Container(
                  padding: EdgeInsets.fromLTRB(20, 10, 20, 10),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          type == 0
                              ? Icon(Icons.cake)
                              : type == 1
                                  ? Icon(Icons.tv_off)
                                  : type == 2
                                      ? Icon(Icons.cancel)
                                      : Container(),
                          SizedBox(width: 20),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              buildStatus(type),
                              Text("Customer Name : $customerName"),
                              Text("Address : $address"),
                              SizedBox(height: 5),
                              SizedBox(height: 5),
                              Text("Phone Number : $phone")
                            ],
                          ),
                        ],
                      ),
                      status == 1
                              ? ElevatedButton(onPressed: (){Navigator.pushNamed(context, '');}, child: Text('Do'))
                              : status == 2
                                  ? ElevatedButton(onPressed: (){Navigator.pushNamed(context, '/report');}, child: Text('Edit'))
                                  : status == 3
                                      ? ElevatedButton(onPressed: (){Navigator.pushNamed(context, '');}, child: Text('Done'))
                                      : null,
                    ],
                    
                  ))),
        ));
  }

  Text buildStatus(int type) {
    switch (type) {
      case 0:
        return Text("Task Type : Instalation");
      case 1:
        return Text("Task Type : Maintenance");
      case 2:
        return Text("Task Type : Termination");
    }
    return Text("Type : None");
  }
}
