import '../../app/dependencies.dart';
import '../../models/user.dart';
import '../rest.dart';
import 'technician_service.dart';

class TechServiceRest implements TechService {
  RestService get rest => dependency();

  Future<User> getTechByID(dynamic userId) async {
    final List listJson = await rest.get('tasks?user=$userId');
    if (listJson == null || listJson.length == 0) return null;
    return User.fromJson(listJson[0]);
  }

  @override
  Future<List<User>> getTech() async {
    final List listJson = await rest.get('users');
    if (listJson == null || listJson.length == 0) return null;

    final tasks = <User>[];
    for (int i = 0; i < listJson.length; i++) {
      tasks.add(User.fromJson(listJson[i]));
    }

    return tasks;
  }
}
