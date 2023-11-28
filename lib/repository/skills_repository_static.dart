import 'dart:convert';
import 'package:flutter/services.dart';
import 'package:path/path.dart';

import '../model/skill_tree_model.dart';
import 'skills_repository.dart';

class SkillsRepositoryStatic extends SkillsRepository {
  SkillsRepositoryStatic({required super.skillsVersion});

  @override
  Future<SkillTreeModel> skills() async {
    var data = await rootBundle.loadString(join("assets", "skilltree.json"));

    return SkillTreeModel.fromJson(jsonDecode(data))!;
  }
}
