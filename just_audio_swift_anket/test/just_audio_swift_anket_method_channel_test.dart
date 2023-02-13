import 'package:flutter/services.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:just_audio_swift_anket/just_audio_swift_anket_method_channel.dart';

void main() {
  MethodChannelJustAudioSwiftAnket platform = MethodChannelJustAudioSwiftAnket();
  const MethodChannel channel = MethodChannel('just_audio_swift_anket');

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
    expect(await platform.getPlatformVersion(), '42');
  });
}
