import '../../app/dependencies.dart';
import '../../models/user.dart';
import '../viewmodel.dart';
import '../user/user_viewmodel.dart';

class DashboardViewModel extends Viewmodel {
  UserViewmodel get _userViewModel => dependency();
  User get user => _userViewModel.user;
  set user(User value) => update(() async => _userViewModel.user = value);
  void authenticate(User user) =>
      update(() async => _userViewModel.authenticate(user));

  bool get isUserSignedIn => _userViewModel.isUserSignedIn;
}
