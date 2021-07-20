import '../../app/dependencies.dart';
import '../../models/task.dart';
import '../rest.dart';
import 'task_service.dart';

class TaskServiceRest implements TaskService {
  RestService get rest => dependency();

  Future<Task> getTaskByUser(dynamic userId) async {
    final List listJson = await rest.get('tasks?user=$userId');
    if (listJson == null || listJson.length == 0) return null;
    return Task.fromJson(listJson[0]);
  }

  Future<Task> updateTask(Task task) async {
    final json = await rest.put('tasks/${task.id}', data: task);
    return Task.fromJson(json);
  }

  @override
  Future<List<Task>> getTask() async {
    final List listJson = await rest.get('tasks');
    print(listJson);
    if (listJson == null || listJson.length == 0) return null;

    final tasks = <Task>[];
    for (int i = 0; i < listJson.length; i++) {
      tasks.add(Task.fromJson(listJson[i]));
    }

    return tasks;
  }
}
