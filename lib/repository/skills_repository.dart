import 'dart:core';

import '../model/skill_tree_model.dart';

/// A data layer class works with reactive data sources, such as Firebase. This
/// class emits a Stream of TodoEntities. The data layer of the app.
///
/// How and where it stores the entities should defined in a concrete
/// implementation, such as firebase_repository_flutter.
///
/// The domain layer should depend on this abstract class, and each app can
/// inject the correct implementation depending on the environment, such as
/// web or Flutter.
abstract class SkillsRepository {
  int skillsVersion;

  SkillsRepository({required this.skillsVersion});
  Future<SkillTreeModel> skills();
}
