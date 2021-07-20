import '../../models/user.dart';

abstract class TechService {
  Future<User> getTechByID(dynamic userId);
  Future<List<User>> getTech();
}
