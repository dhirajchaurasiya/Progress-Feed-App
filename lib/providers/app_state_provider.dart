import 'package:flutter/foundation.dart';

enum UserType { user, contractor, supervisor }

class AppStateProvider extends ChangeNotifier {
  int _selectedBottomNavIndex = 0;
  UserType? _currentUserType;
  bool _isLoggedIn = false;
  String _currentRoute = '/';

  // For navigation state
  int get selectedBottomNavIndex => _selectedBottomNavIndex;
  UserType? get currentUserType => _currentUserType;
  bool get isLoggedIn => _isLoggedIn;
  String get currentRoute => _currentRoute;

  void setBottomNavIndex(int index) {
    _selectedBottomNavIndex = index;
    notifyListeners();
  }

  void setUserType(UserType userType) {
    _currentUserType = userType;
    notifyListeners();
  }

  void setLoginStatus(bool status) {
    _isLoggedIn = status;
    notifyListeners();
  }

  void setCurrentRoute(String route) {
    _currentRoute = route;
    notifyListeners();
  }

  void logout() {
    _isLoggedIn = false;
    _currentUserType = null;
    _selectedBottomNavIndex = 0;
    _currentRoute = '/';
    notifyListeners();
  }
}
