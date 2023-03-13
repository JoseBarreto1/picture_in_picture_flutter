import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:picture_in_picture_flutter/pipflutter_player.dart';

void main() {
  const MethodChannel channel = MethodChannel('picture_in_picture_flutter');

  TestWidgetsFlutterBinding.ensureInitialized();

  setUp(() {
    channel.setMockMethodCallHandler((MethodCall methodCall) async {
      return '42';
    });
  });

  tearDown(() {
    channel.setMockMethodCallHandler(null);
  });

  test('getPlatformVersion', () async {
    expect(PipFlutterPlayer, '42');
  });
}
