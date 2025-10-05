import 'package:flutter/foundation.dart';

class User {
  final String id;
  final String name;
  final String email;
  final String phone;
  final String userType; // 'user', 'contractor', 'supervisor'
  final String? profileImageUrl;
  final Map<String, dynamic> additionalData;

  User({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.userType,
    this.profileImageUrl,
    this.additionalData = const {},
  });

  User copyWith({
    String? id,
    String? name,
    String? email,
    String? phone,
    String? userType,
    String? profileImageUrl,
    Map<String, dynamic>? additionalData,
  }) {
    return User(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      userType: userType ?? this.userType,
      profileImageUrl: profileImageUrl ?? this.profileImageUrl,
      additionalData: additionalData ?? this.additionalData,
    );
  }
}

class UserProvider extends ChangeNotifier {
  User? _currentUser;
  List<User> _allUsers = [];
  bool _isLoading = false;
  String? _errorMessage;

  // Getters
  User? get currentUser => _currentUser;
  List<User> get allUsers => List.unmodifiable(_allUsers);
  bool get isLoading => _isLoading;
  String? get errorMessage => _errorMessage;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void setErrorMessage(String? message) {
    _errorMessage = message;
    notifyListeners();
  }

  void setCurrentUser(User? user) {
    _currentUser = user;
    notifyListeners();
  }

  void setAllUsers(List<User> users) {
    _allUsers = users;
    notifyListeners();
  }

  void addUser(User user) {
    _allUsers.add(user);
    notifyListeners();
  }

  void updateUser(User updatedUser) {
    final index = _allUsers.indexWhere((u) => u.id == updatedUser.id);
    if (index != -1) {
      _allUsers[index] = updatedUser;

      // Update current user if it's the same
      if (_currentUser?.id == updatedUser.id) {
        _currentUser = updatedUser;
      }

      notifyListeners();
    }
  }

  void removeUser(String userId) {
    _allUsers.removeWhere((u) => u.id == userId);

    if (_currentUser?.id == userId) {
      _currentUser = null;
    }

    notifyListeners();
  }

  List<User> getUsersByType(String userType) {
    return _allUsers.where((u) => u.userType == userType).toList();
  }

  void logout() {
    _currentUser = null;
    _errorMessage = null;
    notifyListeners();
  }

  // Authentication methods
  Future<bool> signIn(String email, String password) async {
    setLoading(true);
    setErrorMessage(null);

    try {
      // Simulate API call - replace with actual authentication logic
      await Future.delayed(Duration(seconds: 2));

      // For demo purposes, create a mock user
      final user = User(
        id: '1',
        name: 'Demo User',
        email: email,
        phone: '+1234567890',
        userType: 'user',
      );

      setCurrentUser(user);
      setLoading(false);
      return true;
    } catch (e) {
      setErrorMessage('Login failed: ${e.toString()}');
      setLoading(false);
      return false;
    }
  }

  Future<bool> signUp(String name, String email, String phone, String password,
      String userType) async {
    setLoading(true);
    setErrorMessage(null);

    try {
      // Simulate API call - replace with actual registration logic
      await Future.delayed(Duration(seconds: 2));

      final user = User(
        id: DateTime.now().millisecondsSinceEpoch.toString(),
        name: name,
        email: email,
        phone: phone,
        userType: userType,
      );

      addUser(user);
      setCurrentUser(user);
      setLoading(false);
      return true;
    } catch (e) {
      setErrorMessage('Registration failed: ${e.toString()}');
      setLoading(false);
      return false;
    }
  }
}
