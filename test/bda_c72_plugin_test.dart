import 'package:flutter_test/flutter_test.dart';
import 'package:bda_c72_plugin/bda_c72_plugin.dart';
import 'package:bda_c72_plugin/bda_c72_plugin_platform_interface.dart';
import 'package:bda_c72_plugin/bda_c72_plugin_method_channel.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';

class MockBdaC72PluginPlatform with MockPlatformInterfaceMixin implements BdaC72PluginPlatform {
  @override
  Future<String?> getPlatformVersion() => Future.value('42');
}

void main() {
  final BdaC72PluginPlatform initialPlatform = BdaC72PluginPlatform.instance;

  test('$MethodChannelBdaC72Plugin is the default instance', () {
    expect(initialPlatform, isInstanceOf<MethodChannelBdaC72Plugin>());
  });

  test('getPlatformVersion', () async {
    BdaC72Plugin bdaC72Plugin = BdaC72Plugin();
    MockBdaC72PluginPlatform fakePlatform = MockBdaC72PluginPlatform();
    BdaC72PluginPlatform.instance = fakePlatform;
  });
}
