import '../../models/task.dart';

abstract class TaskService {
  Future<Task> getTaskByUser(dynamic userId);
  Future<List<Task>> getTask();
  Future<Task> updateTask(Task task);
}
