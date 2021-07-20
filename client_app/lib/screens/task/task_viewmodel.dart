import '../../app/dependencies.dart';
import '../../services/task/task_service.dart';
import '../../models/task.dart';

import '../viewmodel.dart';

class TaskViewmodel extends Viewmodel {
  TaskService get _service => dependency();
  List<Task> _task;

  get itemCount => _task.length;

  Task getTaskByIndex(index) => _task[index];

  TaskViewmodel() {
    getTask();
  }

  void getTask() async {
    turnBusy();
    _task = await _service.getTask();
    turnIdle();
  }

  get task => _task;
  set task(value) {
    turnBusy();
    _task = value;
    turnIdle();
  }
}
