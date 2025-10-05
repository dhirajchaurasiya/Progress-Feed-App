import 'package:flutter/foundation.dart';
import 'package:flutter_osm_plugin/flutter_osm_plugin.dart';

class LocationProvider extends ChangeNotifier {
  GeoPoint? _selectedLocation;
  bool _isLoading = false;
  String _searchText = '';
  bool _isAutoCompletionVisible = false;
  List<SearchInfo> _suggestions = [];

  // Getters
  GeoPoint? get selectedLocation => _selectedLocation;
  bool get isLoading => _isLoading;
  String get searchText => _searchText;
  bool get isAutoCompletionVisible => _isAutoCompletionVisible;
  List<SearchInfo> get suggestions => _suggestions;

  // Setters
  void setSelectedLocation(GeoPoint? location) {
    _selectedLocation = location;
    notifyListeners();
  }

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void setSearchText(String text) {
    _searchText = text;
    notifyListeners();
  }

  void setAutoCompletionVisible(bool visible) {
    _isAutoCompletionVisible = visible;
    notifyListeners();
  }

  void setSuggestions(List<SearchInfo> suggestions) {
    _suggestions = suggestions;
    notifyListeners();
  }

  void clearSearchText() {
    _searchText = '';
    _suggestions = [];
    _isAutoCompletionVisible = false;
    notifyListeners();
  }

  void clearAllData() {
    _selectedLocation = null;
    _isLoading = false;
    _searchText = '';
    _isAutoCompletionVisible = false;
    _suggestions = [];
    notifyListeners();
  }
}
