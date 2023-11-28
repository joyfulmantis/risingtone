import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../blocs/skill_tree_bloc.dart';
import '../blocs/skill_tree_progress_bloc.dart';
import '../generated/l10n.dart';
import '../model/skill_tree_model.dart';
import '../repository/skills_repository.dart';
import '../repository/skills_repository_static.dart';
import '../view/custom_practice_view.dart';
import '../widgets/custom_error_widget.dart';
import '../widgets/skill_tree_skill_button.dart';
import 'lesson_view.dart';

const String debugLocation = "skill_tree.dart";
const double myToolbarHeight = 80;

class SkillTreeView extends StatelessWidget {
  const SkillTreeView({super.key});

  static Route route() {
    return MaterialPageRoute<void>(builder: (context) {
      SkillsRepository skillsRepository;
      if (kReleaseMode) {
        skillsRepository = SkillsRepositoryStatic(skillsVersion: 1);
      } else {
        skillsRepository = SkillsRepositoryStatic(skillsVersion: 1);
      }
      return MultiBlocProvider(providers: [
        BlocProvider<SkillTreeBloc>(
            create: (_) =>
                SkillTreeBloc(skillsRepository)..add(LoadSkillTree())),
        BlocProvider<SkillTreeProgressBloc>(
            create: (_) => SkillTreeProgressBloc())
      ], child: const SkillTreeView());
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SkillTreeBloc, SkillTreeState>(builder: (_, state) {
      return BlocBuilder<SkillTreeProgressBloc, SkillTreeProgressState>(
          builder: (_, progressState) {
        if (state is SkillTreeLoaded) {
          return Scaffold(
              appBar: AppBar(
                centerTitle: true,
                title: SizedBox(
                    height: myToolbarHeight,
                    child: Padding(
                        padding: const EdgeInsets.fromLTRB(25, 25, 25, 25),
                        child: Image.asset('assets/images/risingtone_logo.png',
                            fit: BoxFit.scaleDown))),
                toolbarHeight: myToolbarHeight,
                actions: [
                  PopupMenuButton(
                      onSelected: (item) {
                        if (item == 0) {
                          Navigator.push(context, CustomPracticeView.route());
                        }
                      },
                      itemBuilder: (_) => [
                            PopupMenuItem(
                              value: 0,
                              child: Text(S.current.customPracticeTitle),
                            )
                          ])
                ],
              ),
              body: ListView(
                children: [
                  Padding(
                    padding: const EdgeInsets.fromLTRB(50, 0, 50, 50),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: buildTreeFromSkills(
                          context,
                          state.skilltree,
                          progressState.currentProgress,
                          progressState.currentLevel),
                    ),
                  )
                ],
              ));
        } else {
          return const CustomErrorWidget(debugLocation: debugLocation);
        }
      });
    });
  }

  List<Widget> buildTreeFromSkills(BuildContext context, SkillTreeModel skills,
      BuiltMap<int, bool> progress, int currentLevel) {
    //first iterate over the skill levels
    return skills.skillLevels.fold([],
        (List<Widget> skillLevelWidgetsAcc, SkillLevelModel skillLevel) {
      //then iterate over the skills in the skill level
      List<Widget> skillWidgets = skillLevel.skills.fold([],
          (List<Widget> skillWidgetsAcc, SkillModel skill) {
        //The currentSkillStep in the skill is the first one that is not completed
        SkillStepModel? currentSkillStep = skill.skillSteps.firstWhereOrNull(
            (element) => !(progress[element.uniqueID] ?? false));

        void Function()? onPressedValue;
        if (skillLevel.level > currentLevel || currentSkillStep == null) {
          onPressedValue = null;
        } else {
          onPressedValue = () async {
            Navigator.push(
                context,
                LessonView.skillLesson(
                    context,
                    skillLevel,
                    skill,
                    currentSkillStep,
                    BlocProvider.of<SkillTreeProgressBloc>(context)));
          };
        }

        double completedPercent = skill.skillSteps
                .where((e) => progress[e.uniqueID] ?? false)
                .length /
            (skill.skillSteps.length);

        Widget skillButton = SkillTreeSkillButton(
            completedPercent: completedPercent,
            onPressedValue: onPressedValue,
            buttonText: skill.targetTone.map((x) => x.toToneMark()).join(' '),
            altText: skill.targetTone.map((x) => x.toLocalized()).join(' '));
        skillWidgetsAcc.add(skillButton);
        return skillWidgetsAcc;
      });

      bool previousSkillStepsCompleted = skillLevel.skills.every((skill) =>
          skill.skillSteps
              .every((skillStep) => progress[skillStep.uniqueID] ?? false));
      void Function()? practiceOnPressedValue;

      if (skillLevel.level == currentLevel &&
          previousSkillStepsCompleted &&
          !(progress[skillLevel.level] ?? false)) {
        practiceOnPressedValue = () {
          Navigator.push(
              context,
              LessonView.practiceLesson(context, 25, skillLevel,
                  BlocProvider.of<SkillTreeProgressBloc>(context)));
        };
      } else {
        practiceOnPressedValue = null;
      }

      Widget practiceWidget = SkillTreeSkillButton(
          completedPercent: progress[skillLevel.level] ?? false ? 1 : 0,
          onPressedValue: practiceOnPressedValue,
          buttonText: "",
          altText: S.current.skillTreeViewPractice);

      skillLevelWidgetsAcc
        ..add(Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: skillWidgets,
        ))
        ..add(Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [practiceWidget],
        ));
      return skillLevelWidgetsAcc;
    });
  }
}
