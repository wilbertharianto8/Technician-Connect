import 'package:client_app/services/technician/technician_service.dart';

import '../../app/dependencies.dart';
import '../../models/user.dart';
import '../viewmodel.dart';

class TechViewmodel extends Viewmodel {
  TechService get _service => dependency();
  List<User> _tech;

  User getTechByIndex(index) => _tech[index];

  get itemCount => _tech.length;

  TechViewmodel() {
    getTech();
  }

  void getTech() async {
    turnBusy();
    _tech = await _service.getTech();
    print(_tech);
    turnIdle();
  }

  // get user => _tech;
  // set user(value) => _user = value;

  // get technicianName => _user.name;
  // set technicianName(value) {
  //   turnBusy();
  //   _showErrorMessage = false;
  //   _user.password = value;
  //   turnIdle();
  // }

  // get technicianId => _user.id;
  // set technicianId(value) {
  //   turnBusy();
  //   _showErrorMessage = false;
  //   _user.password = value;
  //   turnIdle();
  // }
}
