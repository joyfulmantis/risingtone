import 'package:RisingTone/model/flashcard_model.dart';
import 'package:RisingTone/util/pinyin_helpers.dart';
import 'package:built_collection/built_collection.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('addTone tests', () {
    test('addTone works for [wo, ToneModel.One]', () {
      expect(addTone("wo", ToneModel.One), equals("wō"));
    });
    test('addTone works for [sheng, ToneModel.Four]', () {
      expect(addTone("sheng", ToneModel.Four), equals("shèng"));
    });
  });

  group('removeTone tests', () {
    test('removeTone works for [wō, ToneModel.One]', () {
      expect(removeTone("wō"), equals("wo"));
    });
    test('removeTone works for [shèng, ToneModel.Four]', () {
      expect(removeTone("shèng"), equals("sheng"));
    });
  });

  group('sandhiChecker tests', () {
    test(
        'sandhiChecker returns Result.sanhi for 不是, with answer for 不 being ToneModel.Two',
        () {
      final current = BuiltList<FlashcardCharacterModel>([
        FlashcardCharacterModel((b) => b
          ..character = '不'
          ..tone = ToneModel.Four
          ..pinyin = 'bu4'),
        FlashcardCharacterModel((b) => b
          ..character = '是'
          ..tone = ToneModel.Four
          ..pinyin = 'shi4'),
      ]);
      expect(sandhiChecker(current, 0, ToneModel.Two), Result.sandhi);
    });
    test(
        'sandhiChecker returns Result.sanhi for 一定, with answer for 一 being ToneModel.Two',
        () {
      final current = BuiltList<FlashcardCharacterModel>([
        FlashcardCharacterModel((b) => b
          ..character = '一'
          ..tone = ToneModel.One
          ..pinyin = 'yī'),
        FlashcardCharacterModel((b) => b
          ..character = '定'
          ..tone = ToneModel.Four
          ..pinyin = 'dìng')
      ]);
      expect(sandhiChecker(current, 0, ToneModel.Two), Result.sandhi);
    });
    test(
        'sandhiCheckerreturns Result.sanhi for 一天, with answer for 一 being ToneModel.Four',
        () {
      final current = BuiltList<FlashcardCharacterModel>([
        FlashcardCharacterModel((b) => b
          ..character = '一'
          ..tone = ToneModel.One
          ..pinyin = 'yī'),
        FlashcardCharacterModel((b) => b
          ..character = '天'
          ..tone = ToneModel.One
          ..pinyin = 'tiān'),
      ]);
      expect(sandhiChecker(current, 0, ToneModel.Four), Result.sandhi);
    });
    test(
        'sandhiChecker returns Result.sanhi for 老鼠, with answer for 老 being ToneModel.Two',
        () {
      final current = BuiltList<FlashcardCharacterModel>([
        FlashcardCharacterModel((b) => b
          ..character = '老'
          ..tone = ToneModel.Three
          ..pinyin = 'lǎo'),
        FlashcardCharacterModel((b) => b
          ..character = '鼠'
          ..tone = ToneModel.Three
          ..pinyin = 'shǔ'),
      ]);
      expect(sandhiChecker(current, 0, ToneModel.Two), Result.sandhi);
    });
    test(
        'sandhiChecker returns Result.correct for 中国, with answer for 中 being ToneModel.One',
        () {
      final current = BuiltList<FlashcardCharacterModel>([
        FlashcardCharacterModel((b) => b
          ..character = '中'
          ..tone = ToneModel.One
          ..pinyin = 'zhōng'),
        FlashcardCharacterModel((b) => b
          ..character = '国'
          ..tone = ToneModel.Two
          ..pinyin = 'guó'),
      ]);
      expect(sandhiChecker(current, 0, ToneModel.One), Result.correct);
    });
    test(
        'sandhiChecker returns Result.incorrect for 中国, with answer for 中 being ToneModel.Two',
        () {
      final current = BuiltList<FlashcardCharacterModel>([
        FlashcardCharacterModel((b) => b
          ..character = '中'
          ..tone = ToneModel.Four
          ..pinyin = 'zhōng'),
        FlashcardCharacterModel((b) => b
          ..character = '国'
          ..tone = ToneModel.Four
          ..pinyin = 'guó'),
      ]);
      expect(sandhiChecker(current, 0, ToneModel.Two), Result.incorrect);
    });
  });
}
