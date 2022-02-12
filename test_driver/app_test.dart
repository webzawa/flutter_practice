import 'package:flutter_driver/flutter_driver.dart';
import 'package:test/test.dart';

// 統合テストコマンド
// flutter drive --target=test_driver/app.dart

void main() {
  final counterTextFinder = find.byValueKey("counter");
  final buttonFinder = find.byValueKey("increment");
  late FlutterDriver driver;

  setUpAll(() async {
    driver = await FlutterDriver.connect();
  });

  tearDownAll(() async {
    if (driver != null) {
      driver.close();
    }
  });

  test("start at 0", () async {
    expect(await driver.getText(counterTextFinder), "0");
  });

  test("increments the counter", () async {
    await driver.tap(buttonFinder);
    expect(await driver.getText(counterTextFinder), "1");
  });
}
