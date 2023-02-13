import 'package:flutter_test/flutter_test.dart';
import 'package:just_audio_swift_anket/just_audio_swift_anket.dart';
import 'package:just_audio_swift_anket/just_audio_swift_anket_platform_interface.dart';
import 'package:just_audio_swift_anket/just_audio_swift_anket_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockJustAudioSwiftAnketPlatform
    with MockPlatformInterfaceMixin
    implements JustAudioSwiftAnketPlatform {

  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final JustAudioSwiftAnketPlatform initialPlatform = JustAudioSwiftAnketPlatform.instance;

  test('$MethodChannelJustAudioSwiftAnket is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelJustAudioSwiftAnket>());
  });

  test('getPlatformVersion', () async {
    JustAudioSwiftAnket justAudioSwiftAnketPlugin = JustAudioSwiftAnket();
    MockJustAudioSwiftAnketPlatform fakePlatform = MockJustAudioSwiftAnketPlatform();
    JustAudioSwiftAnketPlatform.instance = fakePlatform;

    expect(await justAudioSwiftAnketPlugin.getPlatformVersion(), '42');
  });
}
