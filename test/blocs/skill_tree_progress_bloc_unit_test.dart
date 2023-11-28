// weather_bloc_test.dart
import 'package:RisingTone/blocs/skill_tree_progress_bloc.dart';
import 'package:RisingTone/model/flashcard_model.dart';
import 'package:RisingTone/model/skill_tree_model.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';

class MockStorage extends Mock implements Storage {}

void main() {
  late Storage hydratedStorage;

  setUpAll(() {
    TestWidgetsFlutterBinding.ensureInitialized();
    hydratedStorage = MockStorage();
    when(
      () => hydratedStorage.write(any(), any<dynamic>()),
    ).thenAnswer((_) async {});
    HydratedBloc.storage = hydratedStorage;
  });
  group('SkillTreeProgressBloc', () {
    late SkillTreeProgressBloc skillTreeProgressBloc;

    setUp(() {
      skillTreeProgressBloc = SkillTreeProgressBloc();
    });

    group('UpdateSkilLStep', () {
      blocTest(
        'Emits a new state where the id of the skill step is positive',
        build: () {
          return skillTreeProgressBloc;
        },
        act: (bloc) => bloc.add(UpdateSkillStep((b) => b
          ..skillStep = SkillStepModel((b) => b
            ..uniqueID = 100001
            ..comparisonTones = BuiltList<BuiltList<ToneModel>>([
              BuiltList<ToneModel>([ToneModel.One])
            ]).toBuilder()).toBuilder())),
        expect: () => equals([
          SkillTreeProgressState((b) => b
            ..currentProgress = MapBuilder<int, bool>({100001: true})
            ..currentLevel = 0)
        ]),
      );
    });
  });
}
