import 'package:flutter/foundation.dart';

class Project {
  final String id;
  final String title;
  final String description;
  final String location;
  final DateTime startDate;
  final DateTime? endDate;
  final String status;
  final String contractorId;
  final String supervisorId;

  Project({
    required this.id,
    required this.title,
    required this.description,
    required this.location,
    required this.startDate,
    this.endDate,
    required this.status,
    required this.contractorId,
    required this.supervisorId,
  });

  Project copyWith({
    String? id,
    String? title,
    String? description,
    String? location,
    DateTime? startDate,
    DateTime? endDate,
    String? status,
    String? contractorId,
    String? supervisorId,
  }) {
    return Project(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      location: location ?? this.location,
      startDate: startDate ?? this.startDate,
      endDate: endDate ?? this.endDate,
      status: status ?? this.status,
      contractorId: contractorId ?? this.contractorId,
      supervisorId: supervisorId ?? this.supervisorId,
    );
  }
}

class ProjectProvider extends ChangeNotifier {
  List<Project> _projects = [];
  List<Project> _ongoingProjects = [];
  Project? _selectedProject;
  bool _isLoading = false;

  // Getters
  List<Project> get projects => List.unmodifiable(_projects);
  List<Project> get ongoingProjects => List.unmodifiable(_ongoingProjects);
  Project? get selectedProject => _selectedProject;
  bool get isLoading => _isLoading;

  void setLoading(bool loading) {
    _isLoading = loading;
    notifyListeners();
  }

  void setProjects(List<Project> projects) {
    _projects = projects;
    _ongoingProjects = projects.where((p) => p.status == 'ongoing').toList();
    notifyListeners();
  }

  void addProject(Project project) {
    _projects.add(project);
    if (project.status == 'ongoing') {
      _ongoingProjects.add(project);
    }
    notifyListeners();
  }

  void updateProject(Project updatedProject) {
    final index = _projects.indexWhere((p) => p.id == updatedProject.id);
    if (index != -1) {
      _projects[index] = updatedProject;

      // Update ongoing projects list
      _ongoingProjects = _projects.where((p) => p.status == 'ongoing').toList();

      // Update selected project if it's the same
      if (_selectedProject?.id == updatedProject.id) {
        _selectedProject = updatedProject;
      }

      notifyListeners();
    }
  }

  void removeProject(String projectId) {
    _projects.removeWhere((p) => p.id == projectId);
    _ongoingProjects.removeWhere((p) => p.id == projectId);

    if (_selectedProject?.id == projectId) {
      _selectedProject = null;
    }

    notifyListeners();
  }

  void selectProject(Project? project) {
    _selectedProject = project;
    notifyListeners();
  }

  List<Project> getProjectsByContractor(String contractorId) {
    return _projects.where((p) => p.contractorId == contractorId).toList();
  }

  List<Project> getProjectsBySupervisor(String supervisorId) {
    return _projects.where((p) => p.supervisorId == supervisorId).toList();
  }
}
