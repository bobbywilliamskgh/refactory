import 'package:flutter/foundation.dart';
import '../helpers/db_helper.dart';

class Auth with ChangeNotifier {
  int _loginCount;
  bool _isAuth = false;

  int get loginCount {
    return _loginCount;
  }

  bool get isAuth {
    return _isAuth;
  }

  Future<void> login(String email, int loginCount) async {
    await DBHelper.update('login_story', {
      'email': email,
      'login_count': loginCount,
    });
    _isAuth = true;
    notifyListeners();
  }

  Future<void> signup(String email, int loginCount) async {
    await DBHelper.insert('login_story', {
      'id': DateTime.now().toString(),
      'email': email,
      'login_count': loginCount,
    });
    _isAuth = true;
    notifyListeners();
  }

  Future<void> fetchLoginHistory(String email) async {
    final dataList = await DBHelper.getData('login_story', email);
    if (dataList.length > 0) {
      _loginCount = dataList.first['login_count'] + 1;
    } else {
      _loginCount = 0;
    }
  }
}
